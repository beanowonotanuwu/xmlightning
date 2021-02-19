@echo off
set VERSION=%1

cd ..
python "setup.py" bdist_wheel
cd dist

mkdir %VERSION%
move "xmlightning-%VERSION%-py3-none-any.whl" %VERSION%"

cd ../bin
