# Local Scope
function Test-Scope1 {
    $localVariable = "I am a local variable."
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