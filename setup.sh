#!/bin/bash

# This is a linux setup script.
# It just sets up a virtual
# environment and installs
# requirements.txt

echo This is a linux setup script.
echo It just sets up a virtual
echo environment and installs
echo requirements.txt
echo \n

echo If it doesn\'t work on your
echo system, you may have to set
echo up an environment manually
echo \n

echo the default username for
echo the admin is nathan and
echo the password is:
echo m0nk3ys33m0nk3yd00

pip3 install virtualenv
virtualenv .env
source .env/bin/activate

pip3 install -r requirements.txt
cd meeting_planner
python3 manage.py

python3 manage.py runserver