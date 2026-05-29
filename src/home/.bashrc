case $- in
  *i*) ;;
    *) return;;
esac

export JAVA_HOME=/usr/lib/jvm/java-26-openjdk
export PATH=$JAVA_HOME/bin:$PATH

OMB_USE_SUDO=true

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
)


source ~/.bash_themes/rezor.bash
