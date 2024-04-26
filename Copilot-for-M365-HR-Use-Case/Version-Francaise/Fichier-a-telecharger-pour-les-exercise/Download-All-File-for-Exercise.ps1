#Copilot for Microsoft 365: HR Use Case

#Exercise 1 / 2 / 3 / 4
#File that need to be download for the exercise

#Variables #NOT MODIFY THEM
$folderPath = "C:\Copilot for M365 HR Use Case" #Folder create for the Download of the File.
$Subfolder1 = "Exercise 1" #Subfolder create for the Exercise 1
$Subfolder2 = "Exercise 2" #Subfolder create for the Exercise 2
$Subfolder3 = "Exercise 3" #Subfolder create for the Exercise 3
$Subfolder4 = "Exercise 4" #Subfolder create for the Exercise 4
$FileSourceExercise1 = "https://go.microsoft.com/fwlink/?linkid=2268824" #Url of the File use for the download.
$OutputFileExercise1 = "$folderpath\$subfolder1\Graphic Design Institute - Design Team Responsibilities.docx" #Download location for the File.
$FileSourceExercise2File1 = "https://go.microsoft.com/fwlink/?linkid=2268930" #Url of the File1 use for the download
$FileSourceExercise2File2 = "https://go.microsoft.com/fwlink/?linkid=2268828" #Url of the File2 use for the download
$FileSourceExercise2File3 = "https://go.microsoft.com/fwlink/?linkid=2269127" #Url of the File3 use for the download
$OutputFileExercise2File1 = "$folderpath\$subfolder2\Resume - Nestor Wilke.docx" #Download location for the File 1.
$OutputFileExercise2File2 = "$folderpath\$subfolder2\Resume - Holly Dickson.docx" #Download location for the File 2.
$OutputFileExercise2File3 = "$folderpath\$subfolder2\Resume - Alex Wilber.docx" #Download location for the File 3.
$FileSourceExercise4 = "https://go.microsoft.com/fwlink/?linkid=2268930" #Url of the File1 use for the download
$OutputFileExercise4 = "$folderpath\$subfolder4\Graphic Design Institute - Employee benefits.docx" #Download location for the File 1.
#Create the Folder
if (-not (Test-Path $folderPath)) {
    New-Item -ItemType Directory -Path $folderPath
    Write-Host "Folder created: $folderPath"
} else {
    Write-Host "Folder already exists: $folderPath"
}

$FolderExercise1 = Join-Path -Path $folderPath -ChildPath $Subfolder1.Trim()
if (-not (Test-Path $FolderExercise1)) {
    New-Item -Path $FolderExercise1 -ItemType Directory
    Write-Host "Sous-dossier créé : $FolderExercise1"
} else {
    Write-Host "Le sous-dossier existe déjà : $FolderExercise1"
}

$FolderExercise2 = Join-Path -Path $folderPath -ChildPath $Subfolder2.Trim()
if (-not (Test-Path $FolderExercise2)) {
    New-Item -Path $FolderExercise2 -ItemType Directory
    Write-Host "Sous-dossier créé : $FolderExercise2"
} else {
    Write-Host "Le sous-dossier existe déjà : $FolderExercise2"
}

$FolderExercise3 = Join-Path -Path $folderPath -ChildPath $Subfolder3.Trim()
if (-not (Test-Path $FolderExercise3)) {
    New-Item -Path $FolderExercise3 -ItemType Directory
    Write-Host "Sous-dossier créé : $FolderExercise3"
} else {
    Write-Host "Le sous-dossier existe déjà : $FolderExercise2"
}

$FolderExercise4 = Join-Path -Path $folderPath -ChildPath $Subfolder4.Trim()
if (-not (Test-Path $FolderExercise4)) {
    New-Item -Path $FolderExercise4 -ItemType Directory
    Write-Host "Sous-dossier créé : $FolderExercise4"
} else {
    Write-Host "Le sous-dossier existe déjà : $FolderExercise4"
}

#Download the File
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
Invoke-WebRequest -Uri $FileSourceExercise1 -OutFile $OutputFileExercise1
Invoke-WebRequest -Uri $FileSourceExercise2File1 -OutFile $OutputFileExercise2File1
Invoke-WebRequest -Uri $FileSourceExercise2File2 -OutFile $OutputFileExercise2File2
Invoke-WebRequest -Uri $FileSourceExercise2File3 -OutFile $OutputFileExercise2File3
Invoke-WebRequest -Uri $FileSourceExercise4 -OutFile $OutputFileExercise4