FROM python:3.7

ENV Z3_VERSION "4.8.7"

RUN apt-get update -qq -y && \
    apt-get install binutils python g++ make -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir /opt/z3 && cd /opt/z3 && \
    wget -qO- https://github.com/Z3Prover/z3/archive/z3-${Z3_VERSION}.tar.gz | tar xz --strip-components=1 && \
    python scripts/mk_make.py && \
    cd build && make && make install

RUN pip install z3-solver jupyterlab

EXPOSE 8888
WORKDIR /work
CMD ["jupyter", "lab", "--port", "8888", "--ip=0.0.0.0", "--allow-root"]