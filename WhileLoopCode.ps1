
$i=0
$j=0
$k=0
while($i -lt 10)
{
$filename = "Harsha"+$i
New-Item -Path $filename -ItemType directory
$filetext = "Objext"+$i+".txt"
New-Item -Path $filetext -ItemType File 
cd C:\TEMP\powershellWhileLoop\$filename
while($j -lt 10)
{
$filename1 = "Harsha"+$j
New-Item -Path $filename1 -ItemType directory
$objectname ="Object"+$j+".txt"
New-Item -path $objectname -ItemType File
cd C:\TEMP\powershellWhileLoop\$filename\$filename1
while($k -lt 10)
{
$objectname2 = "Object"+$k+".txt"
New-Item -Path $objectname2 -ItemType File
Remove-Item C:\TEMP\powershellWhileLoop\$filename\$filename1\$objectname2
cd C:\TEMP\powershellWhileLoop\$filename\$filename1
$k=$k+1
}
Remove-Item C:\TEMP\powershellWhileLoop\$filename\$objectname
cd C:\TEMP\powershellWhileLoop\$filename
$j=$j+1
}
cd C:\TEMP\powershellWhileLoop
$i=$i+1
}
