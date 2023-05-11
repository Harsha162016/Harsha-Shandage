$i=0
do
{
$filename = "Harsha"+$i
New-Item -Path $filename -ItemType directory
$filetext = "Objext"+$i+".txt"
New-Item -Path $filetext -ItemType File 
cd C:\TEMP\powershellDoWhileLoop\$filename
$j=0
do
{
$filename1 = "Harsha"+$j
New-Item -Path $filename1 -ItemType directory
$objectname ="Object"+$j+".txt"
New-Item -path $objectname -ItemType File
cd C:\TEMP\powershellDoWhileLoop\$filename\$filename1
$k=0
do
{
$objectname2 = "Object"+$k+".txt"
New-Item -Path $objectname2 -ItemType File
Remove-Item C:\TEMP\powershellDoWhileLoop\$filename\$filename1\$objectname2
cd C:\TEMP\powershellDoWhileLoop\$filename\$filename1
$k=$k+1
}while($k -lt 10)
Remove-Item C:\TEMP\powershellDoWhileLoop\$filename\$objectname
cd C:\TEMP\powershellDoWhileLoop\$filename
$j=$j+1
}while($j -lt 10)
cd C:\TEMP\powershellDoWhileLoop
$i=$i+1
}while($i -lt 10)
