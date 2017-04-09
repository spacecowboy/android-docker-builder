FROM openjdk:8-jdk
MAINTAINER Jonas Kalderstam <jonas@cowboyprogrammer.org>

# https://developer.android.com/studio/index.html
ENV ANDROID_SDK_TOOLS="25.2.3"

RUN apt-get --quiet update --yes && \
    apt-get --quiet install --yes --no-install-recommends wget tar unzip lib32stdc++6 lib32z1 && \
    apt-get clean

WORKDIR /android

# Download and unzip SDK
RUN wget --quiet -O android-sdk.zip https://dl.google.com/android/repository/tools_r${ANDROID_SDK_TOOLS}-linux.zip && \
    unzip android-sdk.zip

# Platform tools first because tools depends on it. Then repositories
RUN echo y | tools/android --silent update sdk --no-ui --all --filter platform-tools && \
    echo y | tools/android --silent update sdk --no-ui --all --filter tools && \
    echo y | tools/android --silent update sdk --no-ui --all --filter extra-android-m2repository && \
    echo y | tools/android --silent update sdk --no-ui --all --filter extra-google-google_play_services && \
    echo y | tools/android --silent update sdk --no-ui --all --filter extra-google-m2repository

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

ENV ANDROID_HOME /android

WORKDIR /

CMD ["/bin/bash"]
