FROM gitpod/workspace-full
# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/ 
LABEL dazzle/test=tests/lang-python.yaml
USER gitpod
ENV PATH=$HOME/.pyenv/bin:$HOME/.pyenv/shims:$PATH
RUN sudo apt-get update -q \
    && sudo apt-get install -yq tk-dev \
    && curl -fsSL https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash \
    && { echo; \
        echo 'eval "$(pyenv init -)"'; \
        echo 'eval "$(pyenv virtualenv-init -)"'; } >> /home/gitpod/.bashrc.d/60-python \
            && pip2 install virtualenv pipenv pylint rope flake8 autopep8 pep8 pylama pydocstyle bandit notebook python-language-server[all]==0.25.0 \
    && pip3 install --upgrade pip \
    && pip3 install virtualenv pipenv pylint rope flake8 mypy autopep8 pep8 pylama pydocstyle bandit notebook python-language-server[all]==0.25.0 \
        && sudo rm -rf /tmp/* /var/lib/apt/lists/*
# Gitpod will automatically add user site under `/workspace` to persist your packages.
# ENV PYTHONUSERBASE=/workspace/.pip-modules \
#    PIP_USER=yes