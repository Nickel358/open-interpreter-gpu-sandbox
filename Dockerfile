FROM nvidia/cuda:11.7.1-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt upgrade -y
RUN apt install -y build-essential cmake python3 python3-pip python-is-python3

RUN pip install open-interpreter==0.1.3 --no-cache-dir
RUN CUDA_PATH=/usr/local/cuda FORCE_CMAKE=1 CMAKE_ARGS='-DLLAMA_CUBLAS=on' \
    pip install llama-cpp-python==0.2.1 --no-cache-dir