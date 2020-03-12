FROM python:3.7

RUN pip install jupyter jupyterlab

WORKDIR /workspace
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 8888
CMD ["jupyter", "lab", "--port", "8888", "--ip=0.0.0.0", "--allow-root"]