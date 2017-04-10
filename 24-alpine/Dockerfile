FROM spacecowboy/android-docker-builder:base-alpine
MAINTAINER Jonas Kalderstam <jonas@cowboyprogrammer.org>

# Platform tools first because tools depends on it. Then repositories
RUN echo y | ${ANDROID_HOME}/tools/android --silent update sdk --no-ui --all --filter platform-tools && \
    echo y | ${ANDROID_HOME}/tools/android --silent update sdk --no-ui --all --filter tools && \
    echo y | ${ANDROID_HOME}/tools/android --silent update sdk --no-ui --all --filter extra-android-m2repository && \
    echo y | ${ANDROID_HOME}/tools/android --silent update sdk --no-ui --all --filter extra-google-google_play_services && \
    echo y | ${ANDROID_HOME}/tools/android --silent update sdk --no-ui --all --filter extra-google-m2repository && \
    echo y | ${ANDROID_HOME}/tools/android --silent update sdk --no-ui --all --filter android-24 && \
    echo y | ${ANDROID_HOME}/tools/android --silent update sdk --no-ui --all --filter build-tools-24.0.3
