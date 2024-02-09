FROM vllm/vllm-openai

RUN pip install -U "huggingface_hub[cli]"

COPY chat-templates ./chat-templates

COPY run.sh .
RUN chmod +x run.sh

ENTRYPOINT ["./run.sh"]