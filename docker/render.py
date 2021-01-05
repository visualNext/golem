# print('Hi~')
from PIL import ImageEnhance
from PIL import Image, ImageFilter
#Read image
im = Image.open('/golem/resource/demo.jpg')
#Display image
# im.show()

enh = ImageEnhance.Contrast(im)
enh.enhance(1.8).save('/golem/output/demo.png')
