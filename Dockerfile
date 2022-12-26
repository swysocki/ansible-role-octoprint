FROM debian:bookworm-20221219-slim

ARG ANSIBLE_USER="ansible"

RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y --no-install-recommends install \
    openssh-client \
    python3-pip \
    sshpass \
    && rm -rf /var/lib/apt/lists/

RUN useradd -ms /bin/bash "$ANSIBLE_USER"

USER $ANSIBLE_USER

ENV PATH="$PATH:/home/$ANSIBLE_USER/.local/bin"
RUN python3 -m pip install --user ansible ansible-lint

CMD ansible
