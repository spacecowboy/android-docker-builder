FROM spacecowboy/android-docker-builder:base
MAINTAINER Jonas Kalderstam <jonas@cowboyprogrammer.org>

RUN echo y | sdkmanager --sdk_root=${ANDROID_HOME} --update && \
    echo y | sdkmanager --sdk_root=${ANDROID_HOME} \
                        "build-tools;30.0.2" \
                        "platforms;android-30" \
                        "system-images;android-30;aosp_atd;x86"
