FROM ubuntu:20.04 AS jupyter-base

# For installation with interactive menu
ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /
# Install Python and its tools

RUN apt update && apt install -y --no-install-recommends \
    git \
    build-essential \
    python3-dev \
    python3-pip \
    python3-setuptools \
    unzip \
    apt-utils \
    # For jupyterlab
    nodejs \
    npm \
    ssh-client \
    # for openCv
    ffmpeg \
    libsm6 \
    libxext6
    
RUN pip3 -q install pip --upgrade

# Install all basic packages
RUN pip3 install \
    # Jupyter itself
    jupyter \
    # jupyter lab
    jupyterlab \
    # Numpy and Pandas
    numpy pandas \
    # Matplotlib
    matplotlib \
    # Everything for perception
    opencv-contrib-python \
    imageio \
    Cython \
    Pillow \
    scikit-image \
    scipy \
    six \
    open3d \
    imutils \
    # Git for jupyterlab
    jupyterlab-git