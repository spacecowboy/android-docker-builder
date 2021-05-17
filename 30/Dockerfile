FROM spacecowboy/android-docker-builder:base
MAINTAINER Jonas Kalderstam <jonas@cowboyprogrammer.org>

# Platform tools first because tools depends on it. Then repositories
RUN echo y | sdkmanager --sdk_root=${ANDROID_HOME} --update && \
    echo y | sdkmanager --sdk_root=${ANDROID_HOME} \
                        "build-tools;30.0.2" \
                        "platforms;android-30"
