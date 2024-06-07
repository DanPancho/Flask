# Usa una imagen base oficial de Python
FROM python:3.10-slim

# Copia los archivos de requisitos y la aplicación al contenedor
COPY requirements.txt requirements.txt
COPY app.py app.py

# Instala las dependencias
RUN pip install -r requirements.txt

# Expone el puerto en el que Flask estará escuchando
EXPOSE 5000

# Define la variable de entorno para el puerto
ENV PORT 5000

# Define el comando para ejecutar la aplicación
CMD ["python", "app.py"]
