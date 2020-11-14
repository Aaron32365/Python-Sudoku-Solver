FROM gitpod/workspace-full
# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/ 
RUN sudo apt-get update -q \
    && sudo apt-get install -yq tk-dev 