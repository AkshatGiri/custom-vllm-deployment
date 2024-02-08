# custom-vllm-deployment

Docker Step

Build the docker image using the following command

```bash
docker buildx build -t akshatgiri/custom-vllm-deploy .
```

Tag the image

```bash
docker tag akshatgiri/custom-vllm-deploy akshatgiri/custom-vllm-deploy:v0.xx <- Version Number
```

Push the image to docker hub

```bash
docker push akshatgiri/custom-vllm-deploy:v0.xx <- Same Version Number
```
