# Get-Process
# $process = Get-Process;

# not using variable
Get-Process | Where-Object {$_.CPU -gt 1000} # find processes keeping the CPU busy
Get-Process | Sort-Object WorkingSet64 -Descending # sort processes by memory usage 

# using variable
$process = Get-Process;
$process | Sort-Object WorkingSet64 -Descending # sort processes by memory usage

$anyType = "14+5";
$anyType

$total = 2 + 2;
$total
$total | Get-Member

$num1 = "2";
$num2 = "3"
$total = $num1 + $num2;
$total
$total | Get-Member

[int]$num1 = "2";
[int]$num2 = "3"
$total = $num1 + $num2;
$total
$result = $total.ToString();
$result | Get-Member
$total | Get-Member

$string = "String";
$length = $string.Length;
$length

$integer = 2;
$integer | Get-Member

$double = 23;
$double | Get-Member;

$decimal = $double.ToDecimal(0,0);
$decimal