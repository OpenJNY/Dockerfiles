ARG TENSORFLOW_TAG
FROM tensorflow/tensorflow:${TENSORFLOW_TAG}
LABEL maintainer "openjny <twitter:@openjny>"

# install python packages
RUN pip install --no-cache-dir --upgrade \
    tensorflow-probability \
    tensorflow-datasets \
    jupyter \
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

