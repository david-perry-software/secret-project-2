$inputJson = [Console]::In.ReadToEnd()

if ([string]::IsNullOrWhiteSpace($inputJson)) {
    Write-Output '{"continue":true}'
    exit 0
}

$lower = $inputJson.ToLowerInvariant()
$patterns = @(
    'assets/thirdparty',
    'assets\\thirdparty',
    'moremountains',
    'sirenix',
    '/packages/',
    '\\packages\\'
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
        systemMessage = 'Warning: this change appears to touch vendor or package code. Prefer wrappers/adapters in project-owned folders and keep third-party sources read-only unless explicitly intended.'
    }
    $result | ConvertTo-Json -Compress | Write-Output
    exit 0
}

Write-Output '{"continue":true}'
