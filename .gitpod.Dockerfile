FROM gitpod/workspace-full-vnc
RUN sudo apt-get install python-tk
# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/ 