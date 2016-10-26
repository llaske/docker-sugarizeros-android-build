FROM beevelop/ionic
RUN apt-get update
RUN apt-get install git -y
RUN cordova telemetry off
WORKDIR /
CMD bash -c "if [ ! -d "SugarizerOS" ]; then git clone https://github.com/llaske/SugarizerOS.git; fi; cd SugarizerOS;sh install.sh;cp sugar-cordova/platforms/android/build/outputs/apk/android-debug.apk /output/android-debug.apk"