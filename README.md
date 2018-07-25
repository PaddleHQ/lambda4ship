lambda4ship

This is a docker image designed to make building lambdas on shippable easy.

The image is based on lambci's docker-lambda

  https://github.com/lambci/docker-lambda

and is almost identical to the python 3.6 image except that it
includes the sudo and jq packages (and their dependencies) which
shippable needs to have installed.

TODO:

Build equivalent images for all other runtimes.  Not until I have a real example need. 

BUGS:

There are some warnings during the build.