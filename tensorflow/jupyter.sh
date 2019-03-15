#!/bin/bash

if [[ ! -z ${JUPYTER_ENABLE_NOTEBOOK} ]]; then
    jupyter_type="notebook"
else
    jupyter_type="lab"
fi

if [[ ! -z ${JUPYTER_TOKEN} ]]; then
    notebookapp_token="--NotebookApp.token='${JUPYTER_TOKEN}'"
else
    notebookapp_token=""
fi

jupyter "${jupyter_type}" --allow-root --ip=0.0.0.0 --no-browser "${notebookapp_token}"