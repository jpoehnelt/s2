#!/usr/bin/env bash

set -e;
set -x;

brew update;
brew install s2geometry.rb;
cp -r $(brew --prefix)/Cellar/s2geometry/0.0/lib/python2.7/site-packages/ .