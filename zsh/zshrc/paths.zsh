export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$HOME/.vimpkg/bin:$GOPATH/bin"

export GOPATH=~/gocode

export GRADLE_HOME=/opt/gradle/gradle-5.6
export PATH=${GRADLE_HOME}/bin:${PATH}

# Export the Android SDK path 
export ANDROID_HOME=$HOME/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools/28.0.3
#export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions --add-modules java.se.ee'

export PATH=$PATH:$HOME/.composer/vendor/bin
