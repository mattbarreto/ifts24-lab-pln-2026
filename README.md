# Laboratorio de Introducción al PLN, LLMs y Agentic AI

**IFTS Nº 24 — Ciencia de Datos e Inteligencia Artificial**
**2do año — 1er cuatrimestre 2026**
**Prof. Matías Barreto** — Especialista en Nuevos Medios e Interactividad
matiasbarreto@ifts24.edu.ar

_Lenguaje, Algoritmos y Construcción del Presente_

---

## 📖 Qué es este repositorio
 
 Este repositorio contiene los notebooks de laboratorio de la materia. El material se organiza en carpetas numeradas que se publican semana a semana a medida que avanza la cursada.
 
 Cada carpeta corresponde a un bloque temático y contiene los notebooks (`.ipynb`) necesarios para trabajar en clase y fuera de ella.
 
 ---

## 🛠️ Requisitos previos

Antes de arrancar, asegurate de tener instalado en tu máquina:

1. **Python 3.11 o superior** — [Descarga oficial](https://www.python.org/downloads/)
   - Durante la instalación en Windows, marcá la opción **"Add Python to PATH"**.
2. **Git** — [Descarga oficial](https://git-scm.com/downloads)
3. **Visual Studio Code** (recomendado) — [Descarga oficial](https://code.visualstudio.com/)
   - Instalá la extensión **Jupyter** desde el marketplace de VS Code.
4. **FFmpeg** (requerido para notebooks de audio/video, como descargas de YouTube y transcripción con Whisper)
   - **Windows:** `winget install Gyan.FFmpeg` o `choco install ffmpeg`
   - **Ubuntu/Debian:** `sudo apt install ffmpeg`
   - **macOS:** `brew install ffmpeg`

---

## 🚀 Setup inicial

Abrí una terminal (en Windows: PowerShell o Git Bash) y ejecutá los siguientes comandos:

### 1. Clonar el repositorio y entrar
```bash
git clone https://github.com/mattbarreto/ifts24-lab-pln-2026.git
cd ifts24-lab-pln-2026
```

### Opción A (Recomendada): Manual paso a paso

Este es el método estándar para aprender cómo se gestiona un entorno de Python:

1. **Crear el entorno virtual**
   ```bash
   python -m venv .venv
   ```

2. **Activar el entorno virtual**
   - **Windows:** `.venv\Scripts\Activate.ps1` (PowerShell) o `.venv\Scripts\activate` (CMD/Bash)
   - **macOS / Linux:** `source .venv/bin/activate`

3. **Instalar dependencias y recursos**
   ```bash
   pip install -r requirements.txt
   playwright install
   python -c "import nltk; nltk.download('stopwords'); nltk.download('punkt_tab')"
   ```

### Opción B: Instalación Automatizada (Avanzado)

Si ya sabés cómo funcionan los entornos virtuales, podés usar los scripts incluidos:
- **Windows:** `.\setup.ps1`
- **macOS / Linux:** `./setup.sh`

---

## ☁️ Alternativa: Google Colab

Si tenés problemas técnicos con tu computadora local, podés usar Google Colab. 
1. Subí el archivo `.ipynb` a [colab.research.google.com](https://colab.research.google.com).
2. Al principio de cada notebook, deberás instalar las dependencias manualmente agregando una celda:
```bash
!pip install nltk spacy beautifulsoup4 playwright
!playwright install
```
**Nota:** Algunas funciones que requieren `FFmpeg` local o navegadores específicos pueden comportarse distinto en Colab.

---

## 🎬 Configuración de FFmpeg (Audio/Video)

Si vas a trabajar con audio (Whisper, transcripciones), necesitás FFmpeg instalado en el sistema:

- **Windows:** `winget install Gyan.FFmpeg`
- **Ubuntu/Debian:** `sudo apt install ffmpeg`
- **macOS:** `brew install ffmpeg`

> [!TIP]
> Si Jupyter no detecta FFmpeg a pesar de haberlo instalado, consultá la sección de **Resolución de problemas** al final.

---

## 🔄 Cómo actualizar cada semana

Cada vez que se publique material nuevo, desde la carpeta del repositorio ejecutá:

```bash
git pull
```

Si se agregan nuevas dependencias, se anunciará en clase. En ese caso, con el entorno activado:

```bash
pip install -r requirements.txt
```

Si el material nuevo usa audio/video, verificá además que `ffmpeg` siga disponible en tu sistema con:

```bash
ffmpeg -version
```

---

## 📂 Estructura del repositorio

```text
ifts24-lab-pln-2026/
├── README.md
├── requirements.txt
├── 001_python/
├── 002_WebScraping/
│   ├── 008_YouTube_Audio_a_Corpus.ipynb
│   └── ...
├── 003_spacy/
├── Guias/
└── ...
```

---

## 🛠️ Resolución de problemas frecuentes

**"python no se reconoce como comando"**
Python no se agregó al PATH durante la instalación. Reinstalá marcando "Add Python to PATH", o usá `python3` en lugar de `python`.

**"No module named 'xxx'"**
Verificá que el entorno virtual esté activado (debés ver `(.venv)` al inicio de la línea en la terminal). Si lo está, ejecutá `pip install -r requirements.txt` de nuevo.

**Error de permisos en PowerShell al activar el entorno**
Ejecutá: `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`

**Playwright no funciona / no encuentra navegador**
Ejecutá `playwright install` con el entorno activado.

**FFmpeg no se detecta (Configuración de ruta manual)**
Si ya lo instalaste pero aparece `FileNotFoundError`, podés indicarle la ruta manualmente antes de abrir Jupyter:

- **Windows (PowerShell):**
  ```powershell
  $env:FFMPEG_PATH = (where.exe ffmpeg)[0]; jupyter lab
  ```
- **macOS / Linux:**
  ```bash
  export FFMPEG_PATH=$(which ffmpeg); jupyter lab
  ```

---

## 📜 Licencia

Este material se distribuye bajo licencia [Creative Commons BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.es):
podés usarlo y adaptarlo con atribución, sin fines comerciales, y compartiendo bajo la misma licencia.
