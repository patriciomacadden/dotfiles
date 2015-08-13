# homebrew
export PATH=/usr/local/bin:$PATH

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-2.2.2

# android
export ANDROID_HOME="/usr/local/Cellar/android-sdk/24.1.2"
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH

