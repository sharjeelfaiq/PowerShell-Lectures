# Hashtable
$person = @{
    "Name" = "John"
    "Age" = 32
}

$name =$person["Name"] 
$name

$person["Age"] = 46
$person["Name"] = "Mark"
$person.Add("Nationality", "Pakistani")
$person.Remove("Nationality")

$person

# DateTime
$currentDateTime = Get-Date;
$year = $currentDateTime.Year
$month = $currentDateTime.Month
$dayOfWeek = $currentDateTime.DayOfWeek

$number = 42
$number.GetType()
$number | Get-Member
$numberAsString = $number.ToString()
$numberAsString | Get-Member

$isStudent = $true
$type = $isStudent.GetType()

$person = @{
    "Name" = "John"
    "Age" = 25
    }
$containsKey = $person.ContainsKey("Namee")
$containsKey