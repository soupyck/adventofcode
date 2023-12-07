[int]$sum = 0
$elfinput = Get-Content .\day1.txt

foreach ($line in $elfinput)
{
    $newline = $line -replace '\D+([0-9]*).*', '$1'
    if ($newline.Length -ge 2)
    {
        $linesum = [int]$newline[0] + [int]$newline[1]
    }
    elseif ($newline.Length -eq 1)
    {
        $linesum = [int]$newline[0] + [int]$newline[0]
    }
    $sum += $linesum
    Write-Host $sum
}

#$sum