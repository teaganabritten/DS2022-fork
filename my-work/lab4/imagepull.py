#!/usr/bin/python3

import os
import boto3
import requests

s3 = boto3.client('s3', region_name='us-east-1')

bucket = 'ds2022-uup3cy'

image_url = 'https://i0.wp.com/thisdarlingworld.com/wp-content/uploads/2020/01/NeuschwansteinCastleGermany-1-1-scaled.jpg?fit=2560%2C1707&ssl=1'

online_image = requests.get(image_url)

expires_in = 604800

resp = s3.put_object(
	Body = online_image,
	Bucket = bucket,
	Key = image_url
)

response = s3.generate_presigned_url(
	'resp',
	Params={'Bucket': bucket_name, 'Key': object_name},
	ExpiresIn=expires_in
)
print(response)
