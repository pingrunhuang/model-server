# import the necessary packages
import numpy as np
import base64
import sys

def base64_encode_image(image):
    # image is a numpy array
    return base64.b64encode(image).decode('utf-8')

def base64_decode_image(binary_image, dtype, shape):
    # if the python version is 3
    if sys.version_info.major == 3:
        binary_image = bytes(binary_image, "utf-8")

    image = np.frombuffer(base64.decodebytes(binary_image),dtype=dtype)
    image = image.reshape(image)
    return image
