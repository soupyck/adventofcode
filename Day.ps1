[int]$sum = 0
$elfinput = Get-Content .\day1.txt

foreach ($line in $elfinput)
{
    $newline = $line -replace '[^\d]', ''
    if ($newline.Length -ge 2)
    {
        $fullline = $newline[0] + $newline[-1]
    }
    elseif ($newline.Length -eq 1)
    {
        $fullline = $newline[0] + $newline[0]
    }
    #Write-Host "Adding $fullline to $sum"    
    $sum = ([int]$fullline + $sum)
}

Write-Host "The Total is $sum"