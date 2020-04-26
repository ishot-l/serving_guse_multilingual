# serving_guse_multilingual
Google Universal Sentence Encoder（多言語対応）をTensorflow Servingで実行するためのDockerfile

コンテナ立て（外部からREST API接続する場合は8501ポートを開く）
```
docker build -t use_serving .
docker run -t --rm -p 8501:8501 use_serving
```

リクエスト
```
curl -d '{"instances": [" ここに本文 "]}' -X POST http://localhost:8501/v1/models/use:predict
```
