FROM python:3.7.7-slim

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt 
RUN pip install -r requirements.txt 

COPY . .

LABEL maintainer="Thiago V. Fernandes <thiagovf.eng@gmail.com>" \
    version="1.0"

EXPOSE 80

ENTRYPOINT python app.py
CMD [ "app.py" ] --host=0.0.0.0 --port=80