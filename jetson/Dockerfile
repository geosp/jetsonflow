FROM nvcr.io/nvidia/l4t-base:r32.4.2
ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get update -y \
    && apt-get -y install libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran \
    && apt-get -y install python3 python3-pip python-dev python3-dev build-essential libssl-dev libffi-dev libxml2-dev libxslt1-dev \
    && pip3 install -U pip testresources setuptools \
       grpcio absl-py py-cpuinfo psutil portpicker six requests astor termcolor wrapt cython \
       numpy future mock h5py keras_preprocessing keras_applications gast futures protobuf pybind11
RUN pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v44 tensorflow
