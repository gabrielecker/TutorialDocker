# Alpine is a minimalist linux distro image
FROM python:alpine3.6

# Change to working directory
WORKDIR /app

# Install app dependencies
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Run app from command line
COPY ./app.py app.py
ENV FLASK_APP app.py
CMD ["flask", "run", "--host", "0.0.0.0"]

# Expose port outside container
EXPOSE 5000
