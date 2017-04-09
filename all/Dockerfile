FROM spacecowboy/android-docker-builder:base
MAINTAINER Jonas Kalderstam <jonas@cowboyprogrammer.org>

# SDKs
RUN echo y | tools/android --silent update sdk --no-ui --all --filter android-23 && \
    echo y | tools/android --silent update sdk --no-ui --all --filter android-24 && \
    echo y | tools/android --silent update sdk --no-ui --all --filter android-25

# Build tools
RUN echo y | tools/android --silent update sdk --no-ui --all --filter build-tools-23.0.0 && \
    echo y | tools/android --silent update sdk --no-ui --all --filter build-tools-23.0.1 && \
    echo y | tools/android --silent update sdk --no-ui --all --filter build-tools-23.0.2 && \
    echo y | tools/android --silent update sdk --no-ui --all --filter build-tools-23.0.3 && \
    echo y | tools/android --silent update sdk --no-ui --all --filter build-tools-24.0.0 && \
    echo y | tools/android --silent update sdk --no-ui --all --filter build-tools-24.0.1 && \
    echo y | tools/android --silent update sdk --no-ui --all --filter build-tools-24.0.2 && \
    echo y | tools/android --silent update sdk --no-ui --all --filter build-tools-24.0.3 && \
    echo y | tools/android --silent update sdk --no-ui --all --filter build-tools-25.0.0 && \
    echo y | tools/android --silent update sdk --no-ui --all --filter build-tools-25.0.1 && \
    echo y | tools/android --silent update sdk --no-ui --all --filter build-tools-25.0.2
