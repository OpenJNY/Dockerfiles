FROM jupyter/datascience-notebook
MAINTAINER "openjny <twitter: @openjny>"

# $ docker build . -t openjny/datascience-notebook:latest
# $ docker run --rm -it openjny/datascience-notebook:latest /bin/bash
# $ docker push openjny/datascience-notebook:latest

# USER root
# # make user
# # 新たなユーザには、/home/jovyan への権限も付与する
# ENV USER_NAME="openjny"
# ENV USER_PASSWD="awesomepw"

# RUN groupadd ${USER_NAME} && \
#     useradd -m -g ${USER_NAME} ${USER_NAME} && \
#     chown -R ${USER_NAME}:${USER_NAME} /home && \
#     echo "${USER_NAME}:${USER_PASSWD}" | chpasswd

# vim bind
RUN mkdir -p $(jupyter --data-dir)/nbextensions && \
    git clone https://github.com/lambdalisue/jupyter-vim-binding $(jupyter --data-dir)/nbextensions/vim_binding && \
    jupyter nbextension enable vim_binding/vim_binding && \
    jupyter labextension install jupyterlab_vim

# pkg
RUN conda update -n base conda && \
    conda install -y pytorch-cpu torchvision-cpu -c pytorch && \
    conda install -y -c conda-forge lightgbm xgboost catboost && \
    pip install --no-cache-dir \
    simpy \
    sympy  \
    matplotlib \
    seaborn \
    networkx \
    librosa \
    pillow \
    scikit-image \
    scikit-learn \
    tensorflow \
    keras \
    GPy \
    statsmodels \
    optuna \
    scikit-optimize \
    gpyopt \
    pystan \
    pymc3 \
    pyro-ppl 

# USER ${USER_NAME}
# WORKDIR /home/${USER_NAME}/work

# CMD ["start.sh", "jupyter", "lab"]
