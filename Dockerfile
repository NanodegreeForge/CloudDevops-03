
FROM public.ecr.aws/docker/library/python:3.12-bullseye
COPY /analytics /coworking
WORKDIR /coworking
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5153
EXPOSE 5433
ENV DB_USERNAME "myuser"
ENV DB_PASSWORD "mypassword"
ENV DB_HOST "127.0.0.1"
ENV DB_PORT 5433
ENV DB_NAME "mydatabase"
# Run the application when the container starts
CMD ["python", "app.py"]
