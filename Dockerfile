# Dockerfile
FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv wget

RUN python3 -m venv /app/venv
ENV PATH="/app/venv/bin:$PATH"

COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

RUN wget https://github.com/allure-framework/allure2/releases/download/2.13.8/allure-2.13.8.tgz && \
    tar -zxvf allure-2.13.8.tgz -C /opt/ && \
    ln -s /opt/allure-2.13.8/bin/allure /usr/bin/allure

COPY main.py /app/main.py
COPY features /app/features

WORKDIR /app

CMD ["sh", "-c", "behave -f allure_behave.formatter:AllureFormatter -o /app/allure-report"]