# 📁 Windows Folder View Auto-Configurator

PowerShell script que configura automáticamente las vistas de carpetas en Windows Explorer según el contenido detectado.

---

## Español

### ✨ Características

- Escanea carpetas recursivamente desde una ruta base
- Detecta tipos de archivos predominantes (imágenes, audio, etc.)
- Crea archivos `desktop.ini` para definir tipo de carpeta
- Aplica vistas predeterminadas según contenido:
- **📷 Pictures**: Carpetas con >50% archivos de imagen (.jpg, .png, .gif, etc.)
- **🎵 Music**: Carpetas con >50% archivos de audio (.mp3, .flac, .ape, etc.)

### 🚀 Uso

1. Editar `$rootPath` en el script con la ruta deseada
2. Ejecutar con PowerShell: `.\ConfigViews.ps1`
3. Si hay error de permisos ejecutar:

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser


### 📋 Requisitos

- Windows 10/11
- PowerShell 5.1 o superior

### ⚠️ Limitaciones

Windows aplica vistas predeterminadas según el tipo de carpeta asignado. No permite control exacto de "Large Icons" o "List" sino tipos generales (Pictures, Music, Documents).

---

## English

### ✨ Features

- Recursively scans folders from a base path
- Detects predominant file types (images, audio, etc.)
- Creates `desktop.ini` files to define folder type
- Applies default views based on content:
- **📷 Pictures**: Folders with >50% image files (.jpg, .png, .gif, etc.)
- **🎵 Music**: Folders with >50% audio files (.mp3, .flac, .ape, etc.)

### 🚀 Usage

1. Edit `$rootPath` in the script with your desired path
2. Run with PowerShell: `.\ConfigViews.ps1`
3. If permission error occurs, run:

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser


### 📋 Requirements

- Windows 10/11
- PowerShell 5.1 or higher

### ⚠️ Limitations

Windows applies default views according to the assigned folder type. It does not allow exact control of "Large Icons" or "List" views, but rather general types (Pictures, Music, Documents).

---

## 📄 License

MIT License - See LICENSE file for details
