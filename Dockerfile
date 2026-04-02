ARG PYTHON_VERSION
FROM python:${PYTHON_VERSION:-3.7}
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
ENV YOUR_NAME=Kola
EXPOSE 5500
ENTRYPOINT ["python", "app.py"]