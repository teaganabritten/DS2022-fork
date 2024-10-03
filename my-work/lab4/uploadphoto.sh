#!/usr/bin/bash

curl https://rotunda.virginia.edu/sites/g/files/jsddwu951/files/styles/crop_freeform/public/2022-01/Lawn_Aerial_Spring_2020_SS_05%20%281%29.jpg?itok=tnokOEHp > rotunda.png
aws s3 cp rotunda.png s3://ds2022-uup3cy/

aws s3 presign --expires-in 604800 s3://ds2022-uup3cy/rotunda.png

echo "done"

# https://ds2022-uup3cy.s3.us-east-1.amazonaws.com/rotunda.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA6IY35TX3TLASZDRO%2F20241003%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241003T194646Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=8d799d579595990ba11d315ecbd54918bd70e90e91619de106859eb157ffc777
