#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
  #!/bin/sh

  ## https://github.com/auth0/react-native-lock/blob/master/bin/prepare.sh

  echo "Preparing to link react-native-firestack for iOS"

  echo "Checking CocoaPods..."
  has_cocoapods=`which pod >/dev/null 2>&1`
  if [ -z "$has_cocoapods" ]
  then
    echo "CocoaPods already installed"
  else
    echo "Installing CocoaPods..."
    gem install cocoapods
  fi       
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    # Do something under Windows NT platform
fi
