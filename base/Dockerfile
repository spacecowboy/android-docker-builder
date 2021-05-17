FROM openjdk:11-jdk
MAINTAINER Jonas Kalderstam <jonas@cowboyprogrammer.org>

# Also, the emulator can't find its own libraries from the SDK with LD_LIBRARY_PATH.
ENV ANDROID_HOME=/android \
    PATH=/android/cmdline-tools/bin/:$PATH \
    LD_LIBRARY_PATH=$ANDROID_HOME/tools/lib64:$ANDROID_HOME/tools/lib64/qt/lib:$LD_LIBRARY_PATH

RUN apt-get --quiet update --yes && \
    apt-get --quiet install --yes --no-install-recommends wget \
                                                          tar \
                                                          unzip \
                                                          lib32stdc++6 \
                                                          lib32z1 \
                                                          file \
                                                          mesa-utils \
                                                          pciutils \
                                                          ruby-full \
                                                          build-essential && \
    rm -rf /var/lib/apt/lists/* && \
    gem install rake && \
    gem install fastlane

# Download and unzip SDK
RUN mkdir -p ${ANDROID_HOME} && \
    wget --quiet -O "${ANDROID_HOME}/tools.zip" https://dl.google.com/android/repository/commandlinetools-linux-7302050_latest.zip && \
    unzip -qq "${ANDROID_HOME}/tools.zip" -d ${ANDROID_HOME} && \
    rm -f ${ANDROID_HOME}/tools.zip && \
    echo y | sdkmanager --sdk_root=${ANDROID_HOME} --update && \
    echo y | sdkmanager --sdk_root=${ANDROID_HOME} "tools" "platform-tools"

CMD ["/bin/bash"]
