#!/bin/bash

# Script de configuración inicial para Linux/macOS
# Laboratorio de PLN - IFTS 24

echo "🚀 Iniciando configuración del entorno..."

# 1. Crear entorno virtual si no existe
if [ ! -d ".venv" ]; then
    echo "📦 Creando entorno virtual..."
    python3 -m venv .venv
else
    echo "✅ El entorno virtual ya existe."
fi

# 2. Activar entorno e instalar dependencias
echo "📥 Instalando dependencias de Python..."
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

# 3. Instalar navegadores de Playwright
echo "🌐 Instalando navegadores para Web Scraping..."
playwright install

# 4. Descargar recursos de NLTK
echo "📚 Descargando recursos de NLTK..."
python3 -c "import nltk; nltk.download('stopwords'); nltk.download('punkt_tab')"

# 5. Instalar Scrapling components (según el readme actual)
echo "🕷️ Instalando componentes de Scrapling..."
pip install scrapling # Asumiendo que 'pip scrapling install' era un typo o alias

echo "✨ ¡Configuración completada con éxito!"
echo "💡 Para activar el entorno manualmente usa: source .venv/bin/activate"
