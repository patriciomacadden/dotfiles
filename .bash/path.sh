# homebrew
export PATH=/usr/local/bin:$PATH

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# android
export ANDROID_HOME="/Applications/Android Studio.app/sdk"
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_TOOLS/build-tools/android-4.4.2:$PATH
