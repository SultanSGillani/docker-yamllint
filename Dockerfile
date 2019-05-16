FROM python:3.8-rc-alpine3.9

LABEL maintainer="Sultan Gillani (sultangillani)"

WORKDIR /yaml

RUN addgroup -S ansible \
    && adduser -D -h /yaml -s /bin/sh -G ansible ansible \
    && chown -R ansible:ansible /yaml

USER ansible
ENV PATH="/yaml/.local/bin:${PATH}"

RUN pip install --user yamllint && \
    rm -rf /yaml/.cache

CMD ["yamllint", "--version"]