set +xe
PYTHON_EXEC=$(which python2.7 || which python2.6)
[ -z $PYTHON_EXEC ] && $(which echo) "No python2.7 or python2.6 binary found, exiting" && exit 1
git clone https://github.com/iElectric/almir.git -b latests .
printf "[buildout]\nextends = buildout.d/production.cfg" > buildout.cfg
$PYTHON_EXEC bootstrap.py -v 1.7.1
bin/buildout
