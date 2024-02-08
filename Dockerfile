FROM vllm/vllm-openai

RUN pip install -U "huggingface_hub[cli]"

COPY run.sh .
RUN chmod +x run.sh
ENTRYPOINT ["./run.sh"]