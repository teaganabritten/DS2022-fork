#!/usr/bin/python3

import os
import wget

url = 'https://www.travelandleisure.com/thmb/umcoSMJygYyG5OIYDdBPgnrJGLc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/01-neuschwanstein-castle-bavaria-NEUSCHWANSTEIN0417-273a040698f24fc1ac22e717bb3f1f0c.jpg'

image_name = wget.download(url)


