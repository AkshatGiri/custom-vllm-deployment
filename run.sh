#!/bin/bash

huggingface-cli login --token $HUGGINGFACE_TOKEN --add-to-git-credential

huggingface-cli download TheBloke/neural-chat-7B-v3-2-GPTQ --revision gptq-4bit-32g-actorder_True --local-dir ./model --local-dir-use-symlinks True

python3 -m vllm.entrypoints.openai.api_server --model ./model --host 0.0.0.0 --trust-remote-code --max-model-len 4096 --chat-template ./chat-templates/Llama-v2.jinja