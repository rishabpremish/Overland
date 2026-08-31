import json
import sys
from pathlib import Path
import rawpy

rawFileName = sys.argv[1]
xCoordinate = int(sys.argv[2])
yCoordinate = int(sys.argv[3])

print(rawFileName)
print("The x-pixel value is " + str(xCoordinate))
print("The y-pixel value is " + str(yCoordinate))

rawPy = rawpy.imread(rawFileName)
imageData = rawPy.raw_image
print(imageData)
# value = rawPy.raw_value(yCoordinate, xCoordinate)
# print(json.dumps(value))
# rawPy.close()