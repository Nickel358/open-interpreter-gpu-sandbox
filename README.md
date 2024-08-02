# open-interpreter-gpu-sandbox
This provides **open-interpreter** docker sandbox.

In this sandbox, GPU is available.

## Setup
### Docker build
```shell
docker build -t open-interpreter-gpu-sandbox .
```

### Docker run
```shell
docker run --gpus all -it --rm open-interpreter-gpu-sandbox
```

### Run open-interpreter
```shell
root@hostname:/# interpreter --local
```
