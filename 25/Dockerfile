FROM spacecowboy/android-docker-builder:base
MAINTAINER Jonas Kalderstam <jonas@cowboyprogrammer.org>

# SDKs and build tools
RUN echo y | android/tools/android --silent update sdk --no-ui --all --filter android-25 && \
    echo y | android/tools/android --silent update sdk --no-ui --all --filter build-tools-25.0.0 && \
    echo y | android/tools/android --silent update sdk --no-ui --all --filter build-tools-25.0.1 && \
    echo y | android/tools/android --silent update sdk --no-ui --all --filter build-tools-25.0.2
