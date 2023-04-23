FROM python:3.10-slim-buster

# アプリケーションディレクトリを作成する
WORKDIR /usr/src/python
COPY src /usr/src/python

# pipのアップデート
RUN pip install --upgrade pip

# poetryのインストール
RUN pip install poetry

# poetryで依存関係をインストールする
RUN poetry config virtualenvs.create false
RUN poetry install --no-root

CMD [ "python", "main.py" ]
