FROM python:3.8-rc-alpine3.9

LABEL maintainer="Sultan Gillani (sultangillani)"

WORKDIR /yaml

RUN pip install yamllint && \
    rm -rf ~/.cache/pip

CMD ["yamllint", "--version"]