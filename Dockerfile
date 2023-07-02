FROM python:3.10-slim

RUN useradd -m djangouser 

USER djangouser

WORKDIR /app
COPY . /app

EXPOSE 8000

ENV PATH="/home/djangouser/.local/bin:${PATH}"

RUN python -m pip install -r requirements.txt

# During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
# File wsgi.py was not found. Please enter the Python path to wsgi file.
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "template.wsgi"]
