FROM python:3.10-slim

# Establecer la variable de entorno para que los binarios de Python estén en el PATH
ENV PATH="/opt/venv/bin:$PATH"

# Crear un entorno virtual en /opt/venv
RUN python -m venv /opt/venv

# Copiar los archivos del proyecto a la imagen
COPY . /app

# Establecer el directorio de trabajo
WORKDIR /app

# Instalar las dependencias
RUN --mount=type=cache,target=/root/.cache/pip /opt/venv/bin/pip install --upgrade pip \
    && /opt/venv/bin/pip install -r requirements.txt

# Exponer el puerto 5000
EXPOSE 5001

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]