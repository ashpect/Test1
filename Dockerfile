FROM python:alpine3.7
RUN mkdir -p /k8s_python_code
COPY app.py /
CMD python /app.py
