#Variable Scope

# Local Scope
function Test-Scope1 {
    $localVariable = "I am a local variable.";
    # Write-Host $localVariable
    function Test-Scope2 {
        Write-Host $localVariable
    }
    Test-Scope2
}

Test-Scope1
Write-Host $localVariable

# Script Scope
$scriptVariable = "I am a script variable";
function Test-Scope3 {
    Write-Host $scriptVariable
}

Test-Scope3
Write-Host $scriptVariable

#Global Scope
function Test-Scope4 {
    $global:globalvariable = "I am a global variable.";
    Write-Host $globalvariable;
}

Test-Scope4
Write-Host $globalvariable

# Private Scope

function Test-Scope5 {
    $private:privateVariable = "I am a private variable";
    Write-Host $privateVariable
    function Test-Scope6 {
        Write-Host $privateVariable
    }
    Test-Scope6;
}

Test-Scope5
Write-Host $privateVariable

#Arrays
$fruits = @("Apple", "Orange", "Banana");
Write-Host $fruits[0]
$fruits.Count
$fruits.Length
# $fruits.Sort();

# Hashtable
$person = @{
    "Name" = "Jhon"
    "Age" = 25
}
$person

# Nested-Hashtable
$process = @{
    "Brand" = "Dell"
    "Model" = "Optiplex"
    "Specs" = @{
        "RAM" = "4 GB"
        "CPU" = "intel 15"
        "CD/DVD Drive" = $false
        "HDD" = "320 gb"
    }
}

$process
Get-Process
