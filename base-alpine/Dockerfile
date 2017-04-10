FROM openjdk:8-jdk-alpine
MAINTAINER Jonas Kalderstam <jonas@cowboyprogrammer.org>

# https://developer.android.com/studio/index.html
ENV ANDROID_HOME=/android \
    PATH=/android/tools:$PATH \
    ANDROID_SDK_TOOLS="25.2.5"

RUN apk --update add wget \
                     tar \
                     unzip

# Download and unzip SDK
RUN mkdir -p ${ANDROID_HOME} && \
    wget --quiet -O ${ANDROID_HOME}/tools.zip https://dl.google.com/android/repository/tools_r${ANDROID_SDK_TOOLS}-linux.zip && \
    unzip -qq ${ANDROID_HOME}/tools.zip -d ${ANDROID_HOME} && \
    rm -f ${ANDROID_HOME}/tools.zip

CMD ["/bin/sh"]
