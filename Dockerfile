FROM ubuntu:20.04 AS jupyter-base
WORKDIR /
# Install Python and its tools

RUN apt update && apt install -y --no-install-recommends \
    git \
    build-essential \
    python3-dev \
    python3-pip \
    python3-setuptools \
    unzip 
    
RUN pip3 -q install pip --upgrade
# Install all basic packages

RUN pip3 install \
    # Jupyter itself
    jupyter \
    # jupyter lab
    jupyterlab \
    # Numpy and Pandas are required a-priori
    numpy pandas \
    # Matplotlib
    matplotlib \
    opencv-contrib-python \
    imageio \
    Cython \
    Pillow \
    scikit-image \
    scipy \
    six \
    open3d \
    imutils