$inputJson = [Console]::In.ReadToEnd()

if ([string]::IsNullOrWhiteSpace($inputJson)) {
    Write-Output '{"continue":true}'
    exit 0
}

$lower = $inputJson.ToLowerInvariant()
$patterns = @(
    'commit',
    'commit message',
    'git commit',
    'conventional commit',
    'changelog',
    'squash',
    'git diff'
)

$hit = $false
foreach ($pattern in $patterns) {
    if ($lower.Contains($pattern)) {
        $hit = $true
        break
    }
}

if ($hit) {
    $result = @{
        continue = $true
        systemMessage = 'Reminder: use the commit-message prompt to draft a concise Conventional Commit subject and, when useful, a short body that reflects the actual diff.'
    }
    $result | ConvertTo-Json -Compress | Write-Output
    exit 0
}

Write-Output '{"continue":true}'
