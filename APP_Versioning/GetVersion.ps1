# funzioni
function getVers ($arrayProcess){(Get-Item "$arrayProcess").VersionInfo.ProductVersion}
#variabili
$myTime=Get-Date -Format "yyyy_MM_dd-HH_mm"

### MAIN ###
do{
	Clear-Host
	Write-Host "`nScript per ricavare le versione dei servizi"
	Write-Host "Selezionare l'opzione desiderata :"
	Write-Host "1) Carica da elenco di default appList.txt"
	Write-Host "2) Elenca Servizi Attivi"
	Write-Host "3) Elenca Servizi Attivi con parola chiave"
	Write-Host "4) Versione di un servizio specifico"
	Write-Host "5) Versione di uno o piu' servizi con parola chiave"
	Write-Host "6) Uscire`n"
$case = Read-Host "Inserire un'opzione"
	switch ($case) {
		"1" {
			Write-Host "`nNel file sono presenti i seguenti servizi :"
			Get-Content appList.txt
			Write-Host "`nLeggo le versioni :"
			$file = Get-Content appList.txt
			foreach ($serviceFile in $file)
			{
			$pathFile = Get-WmiObject win32_service | ?{$_.Name -eq $serviceFile} | Select-object -expandproperty PathName
			echo $serviceFile
			$pathFile = $pathFile.replace('"','')
			getVers($pathFile)			
			}
			pause
		}
		"2" {
			Get-Service | Where-Object {$_.Status -eq "Running"} | select Name
			pause
		}
		"3" {
			$Key = Read-Host "`nInserire la parola chiave"
			Get-Service -Name "*$Key*" | Where-Object {$_.Status -eq "Running"} | select Name	
			pause
		}
		"4" {
			$inputService = Read-Host "`nInserire il nome del servizio"
			echo $inputService
			$pathProcess = Get-WmiObject win32_service | ?{$_.Name -eq $inputService} | Select-object -expandproperty PathName
			$pathProcess = $pathProcess.replace('"','')
			getVers($pathProcess)
			pause
		}
		"5" {
			$inputServiceArray = Read-Host "`nInserire la parola chiave per i servizi"
			$serviceArray = Get-Service -Name "*$inputServiceArray*" | Where-Object {$_.Status -eq "Running"} | Select-object -expandproperty Name
			$serviceArray >> temp.txt
			$fileTemp = Get-Content temp.txt
			foreach ($service in $fileTemp)
			{
			$pathProcessArray = Get-WmiObject win32_service | ?{$_.Name -eq $service} | Select-object -expandproperty PathName
			echo $service
			$pathProcessArray = $pathProcessArray.replace('"','')
			getVers($pathProcessArray)
			}
			$updateFile = Read-Host "`nVuoi aggiornare il file appList con questo elenco? (S/N)"
			switch ($updateFile) {
				"S" {
					Write-Host "`nFile modificato. Fatto backup in appList_$myTime.txt`n"
					ren appList.txt appList_$myTime.txt
					foreach ($service in $fileTemp)
						{
						$service >> appList.txt
						}
					}
				"N" {break}
				default {Write-Host "`nScelta non valida, riprova"}
			}
			del temp.txt
			pause
		}
		"6" {break}
		default 
			{
			Write-Host "`nInserire un'opzione valida, ad esempio 1,2,3,4,5 o 6"
			pause
		}
	}
} while ($case -ne "6")