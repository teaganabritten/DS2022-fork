#!/usr/bin/bash

curl https://rotunda.virginia.edu/sites/g/files/jsddwu951/files/styles/crop_freeform/public/2022-01/Lawn_Aerial_Spring_2020_SS_05%20%281%29.jpg?itok=tnokOEHp > rotunda.png
aws s3 cp rotunda.png s3://ds2022-uup3cy/

aws s3 presign --expires-in 604800 s3://ds2022-uup3cy/rotunda.png

echo "done"

