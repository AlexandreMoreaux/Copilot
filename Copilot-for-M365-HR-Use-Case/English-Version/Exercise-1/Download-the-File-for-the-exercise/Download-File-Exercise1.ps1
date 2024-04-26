#Copilot for Microsoft 365: HR Use Case

#Exercise 1
#File that need to be download for the exercise

#Variables #NOT MODIFY THEM
$folderPath = "C:\Copilot for M365 HR Use Case" #Folder create for the Download of the File.
$Subfolder = "Exercise 1" #Subfolder create for the Exercise 1
$FileSource = "https://go.microsoft.com/fwlink/?linkid=2268824" #Url of the File use for the download.
$OutputFile = "$folderpath\$subfolder\Graphic Design Institute - Design Team Responsibilities.docx" #Download location for the File.

#Create the Folder
if (-not (Test-Path $folderPath)) {
    New-Item -ItemType Directory -Path $folderPath
    Write-Host "Folder created: $folderPath"
} else {
    Write-Host "Folder already exists: $folderPath"
}

$FolderExercise1 = Join-Path -Path $folderPath -ChildPath $Subfolder.Trim()
if (-not (Test-Path $FolderExercise1)) {
    New-Item -Path $FolderExercise1 -ItemType Directory
    Write-Host "Sous-dossier créé : $FolderExercise1"
} else {
    Write-Host "Le sous-dossier existe déjà : $FolderExercise1"
}

#Download the File
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
Invoke-WebRequest -Uri $FileSource -OutFile $OutputFile