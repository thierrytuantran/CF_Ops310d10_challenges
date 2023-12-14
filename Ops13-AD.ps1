# Prompt for user input
$firstName = Read-Host "Enter first name"
$lastName = Read-Host "Enter last name"
$username = Read-Host "Enter username"
$email = Read-Host "Enter email"
$office = Read-Host "Enter office location"
$department = Read-Host "Enter department"
$title = Read-Host "Enter job title"
$company = Read-Host "Enter company name"

# Create a password for the new user
$password = Read-Host -AsSecureString "Enter password"

# Define the distinguished name (DN) for the user
$ou = "OU=Users,DC=yourdomain,DC=com"  # Update with the correct Organizational Unit (OU) in your AD

# Create the user
New-ADUser -SamAccountName $username -UserPrincipalName "$username@$env:USERDNSDOMAIN" -Name "$firstName $lastName" -GivenName $firstName -Surname $lastName -EmailAddress $email -Office $office -Department $department -Title $title -Company $company -Enabled $true -Path $ou -AccountPassword $password -ChangePasswordAtLogon $true

# Display success message
Write-Host "User '$firstName $lastName' created successfully."
