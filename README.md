# Windows Folder View Auto-Configurator

PowerShell script que configura automáticamente las vistas de carpetas en Windows 10/11 según el contenido detectado.

## Funcionalidad

- Escanea carpetas recursivamente desde una ruta base
- Detecta tipos de archivos predominantes (imágenes, audio, etc.)
- Crea archivos `desktop.ini` para definir tipo de carpeta
- Aplica vistas predeterminadas según contenido:
  - **Pictures**: Carpetas con >50% archivos de imagen (.jpg, .png, .gif, etc.)
  - **Music**: Carpetas con >50% archivos de audio (.mp3, .flac, .ape, etc.)

## Uso

1. Editar `$rootPath` en el script con la ruta deseada
2. Ejecutar con PowerShell: `.\configurar-vistas.ps1`
3. Si hay error de permisos: `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`

## Requisitos

- Windows 10/11
- PowerShell 5.1 o superior

## Limitaciones

Windows aplica vistas predeterminadas según el tipo de carpeta asignado. No permite control exacto de "Large Icons" o "List" sino tipos generales (Pictures, Music, Documents).
