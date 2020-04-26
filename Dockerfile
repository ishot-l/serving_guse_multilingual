FROM tensorflow/serving:nightly
RUN apt-get update && \
    apt-get install -y wget && \
    wget https://tfhub.dev/google/universal-sentence-encoder-multilingual-large/3?tf-hub-format=compressed -O use.tar.gz && \
    mkdir -p models/use/0 && \
    tar -zxvf use.tar.gz -C models/use/0
ENV MODEL_NAME="use"