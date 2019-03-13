FROM tensorflow/tensorflow:2.0.0a0-py3-jupyter
MAINTAINER "openjny <twitter:@openjny>"

# $ docker build 2.0.0a0-py3-jupyter.Dockerfile -t openjny/tensorflow:2.0.0a0-py3-jupyter
# $ docker push openjny/tensorflow:2.0.0a0-py3-jupyter

# install python packages
RUN pip install --no-cache-dir \
    tensorflow-datasets \
    jupyterlab

# install node and npm
RUN apt-get install -y git wget nodejs npm && \
    npm cache clean && \
    npm install n -g && \
    n stable && \
    ln -sf /usr/local/bin/node /usr/bin/node && \
    mkdir -p $(jupyter --data-dir)/nbextensions && \
    git clone https://github.com/lambdalisue/jupyter-vim-binding $(jupyter --data-dir)/nbextensions/vim_binding && \
    jupyter nbextension enable vim_binding/vim_binding && \
    jupyter labextension install jupyterlab_vim
