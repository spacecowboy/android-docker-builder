FROM openjdk:7-jdk
MAINTAINER Jonas Kalderstam <jonas@cowboyprogrammer.org>

# Also, the emulator can't find its own libraries from the SDK with LD_LIBRARY_PATH.
ENV ANDROID_HOME=/android \
    PATH=/android/tools/bin/:/android/tools/:/android/platform-tools/:$PATH \
    ANDROID_SDK_TOOLS="25.2.5" \
    LD_LIBRARY_PATH=$ANDROID_HOME/tools/lib64:$ANDROID_HOME/tools/lib64/qt/lib:$LD_LIBRARY_PATH

RUN apt-get --quiet update --yes && \
    apt-get --quiet install --yes --no-install-recommends wget \
                                                          tar \
                                                          unzip \
                                                          lib32stdc++6 \
                                                          lib32z1 \
                                                          file \
                                                          mesa-utils \
                                                          pciutils && \
    rm -rf /var/lib/apt/lists/*

# Download and unzip SDK
RUN mkdir -p ${ANDROID_HOME} && \
    wget --quiet -O ${ANDROID_HOME}/tools.zip https://dl.google.com/android/repository/tools_r${ANDROID_SDK_TOOLS}-linux.zip && \
    unzip -qq ${ANDROID_HOME}/tools.zip -d ${ANDROID_HOME} && \
    rm -f ${ANDROID_HOME}/tools.zip && \
    echo y | sdkmanager --update && \
    echo y | sdkmanager "extras;android;m2repository" \
                        "extras;google;google_play_services" \
                        "extras;google;m2repository"

CMD ["/bin/bash"]
