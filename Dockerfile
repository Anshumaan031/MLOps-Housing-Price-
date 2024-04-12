FROM python:3.7
COPY . /app
WORKDIR /app

# Check the current directory and list files
RUN ls -la

# Install dependencies
RUN pip install -r requirements.txt

# You can temporarily set a default port for testing
EXPOSE 8000
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app