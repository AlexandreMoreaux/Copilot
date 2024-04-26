#Copilot for Microsoft 365: HR Use Case

#Exercise 2
#File that need to be download for the exercise

#Variables #NOT MODIFY THEM
$folderPath = "C:\Copilot for M365 HR Use Case" #Folder create for the Download of the File.
$Subfolder = "Exercise 2" #Subfolder create for the Exercise 1
$FileSource1 = "https://go.microsoft.com/fwlink/?linkid=2268930" #Url of the File1 use for the download
$FileSource2 = "https://go.microsoft.com/fwlink/?linkid=2268828" #Url of the File2 use for the download
$FileSource3 = "https://go.microsoft.com/fwlink/?linkid=2269127" #Url of the File3 use for the download
$OutputFile1 = "$folderpath\$subfolder\Resume - Nestor Wilke.docx" #Download location for the File 1.
$OutputFile2 = "$folderpath\$subfolder\Resume - Holly Dickson.docx" #Download location for the File 2.
$OutputFile3 = "$folderpath\$subfolder\Resume - Alex Wilber.docx" #Download location for the File 3.

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
Invoke-WebRequest -Uri $FileSource1 -OutFile $OutputFile1
Invoke-WebRequest -Uri $FileSource2 -OutFile $OutputFile2
Invoke-WebRequest -Uri $FileSource3 -OutFile $OutputFile3