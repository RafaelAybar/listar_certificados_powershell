Write-Output "Usuarios activos:"
$usuarios = Get-LocalUser -Name * | Where-Object "Enabled" -eq True | Select-Object Name -ExpandProperty Name
Write-Output $usuarios

# Comprobamos los certificados en directorios por defecto del usuario
Write-Output "Certificados de usuario:"
$certificadosUsuarios = Get-ChildItem Cert:\CurrentUser\ | Format-Table Subject, FriendlyName, Thumbprint
Write-Output $certificadosUsuarios

# Comprobamos las CA instaladas:
Write-Output "CA Instaladas"
Get-ChildItem Microsoft.PowerShell.Security\Certificate::LocalMachine\Root | Format-Table Subject, FriendlyName, Thumbprint