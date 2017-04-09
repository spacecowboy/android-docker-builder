FROM openjdk:8-jdk
MAINTAINER Jonas Kalderstam <jonas@cowboyprogrammer.org>

ENV ANDROID_HOME /android
# https://developer.android.com/studio/index.html
ENV ANDROID_SDK_TOOLS="25.2.5"

RUN apt-get --quiet update --yes && \
    apt-get --quiet install --yes --no-install-recommends wget tar unzip lib32stdc++6 lib32z1 && \
    apt-get clean

WORKDIR /android

# Download and unzip SDK
RUN wget --quiet -O android-sdk.zip https://dl.google.com/android/repository/tools_r${ANDROID_SDK_TOOLS}-linux.zip && \
    unzip android-sdk.zip

WORKDIR /

# Platform tools first because tools depends on it. Then repositories
RUN echo y | tools/android --silent update sdk --no-ui --all --filter platform-tools
RUN echo y | tools/android --silent update sdk --no-ui --all --filter tools
RUN echo y | tools/android --silent update sdk --no-ui --all --filter extra-android-m2repository && \
    echo y | tools/android --silent update sdk --no-ui --all --filter extra-google-google_play_services && \
    echo y | tools/android --silent update sdk --no-ui --all --filter extra-google-m2repository

CMD ["/bin/bash"]
