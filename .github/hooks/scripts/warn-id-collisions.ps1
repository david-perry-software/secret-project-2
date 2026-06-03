$inputJson = [Console]::In.ReadToEnd()

if ([string]::IsNullOrWhiteSpace($inputJson)) {
    Write-Output '{"continue":true}'
    exit 0
}

$lower = $inputJson.ToLowerInvariant()
$patterns = @(
    'assets/_project/data',
    'id',
    'scriptableobject',
    '.asset',
    'save'
)

$score = 0
foreach ($pattern in $patterns) {
    if ($lower.Contains($pattern)) {
        $score++
    }
}

if ($score -ge 3) {
    $result = @{
        continue = $true
        systemMessage = 'Reminder: verify stable ID uniqueness and migration safety for data-definition changes before merge.'
    }
    $result | ConvertTo-Json -Compress | Write-Output
    exit 0
}

Write-Output '{"continue":true}'
