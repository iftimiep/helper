FROM python:3.9
COPY data_service/ /app/
WORKDIR /app
RUN pip install --upgrade pip pipenv && \
    pipenv install -r requirements.txt
ENV FLASK_APP data_service.py
ENV FLASK_RUN_HOST 0.0.0.0
# CMD ["pipenv", "run", "python", "data_service.py"]
CMD ["pipenv", "run", "flask", "run"]
