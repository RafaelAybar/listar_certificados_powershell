Write-Output "Se van a listar los certificados de usuarios"
$usuarios = Get-LocalUser -Name * | Where-Object "Enabled" -eq True | Select Name -ExpandProperty Name
Write-Output $usuarios 
