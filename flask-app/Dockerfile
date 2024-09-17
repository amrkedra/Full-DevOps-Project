FROM python:latest
WORKDIR /app
COPY ./app.py ./requirements.txt ./vars.env ./
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]