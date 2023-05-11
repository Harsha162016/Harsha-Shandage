$i=1
for($i;$i -le 10;)
{
$filename = "Harsha"+$i
New-Item -Path $filename -ItemType directory
$filetext = "Objext"+$i+".txt"
New-Item -Path $filetext -ItemType File 
cd C:\TEMP\powershell\$filename
for($j=1;$j -le 10;){
$filename1 = "Harsha"+$j
New-Item -Path $filename1 -ItemType directory
$objectname ="Object"+$j+".txt"
New-Item -path $objectname -ItemType File
cd C:\TEMP\powershell\$filename\$filename1
for($k=1;$k -le 10;$k++){
$objectname2 = "Object"+$k+".txt"
New-Item -Path $objectname2 -ItemType File
Remove-Item C:\TEMP\powershell\$filename\$filename1\$objectname2
cd C:\TEMP\powershell\$filename\$filename1
}
Remove-Item C:\TEMP\powershell\$filename\$objectname
cd C:\TEMP\powershell\$filename
$j=$j+1
}
cd C:\TEMP\powershell
$i=$i+1
}
