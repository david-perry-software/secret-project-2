$inputJson = [Console]::In.ReadToEnd()

if ([string]::IsNullOrWhiteSpace($inputJson)) {
    Write-Output '{"continue":true}'
    exit 0
}

$lower = $inputJson.ToLowerInvariant()
$patterns = @(
    '.prefab',
    '.anim',
    '.controller',
    'spritelibrary',
    'sprite resolver'
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
        systemMessage = 'Reminder: preserve prefab anchor names, 8-direction animation naming, and slot/category label contracts to avoid migration and save-state drift.'
    }
    $result | ConvertTo-Json -Compress | Write-Output
    exit 0
}

Write-Output '{"continue":true}'
