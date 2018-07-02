from PIL import Image
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('file')
parser.add_argument('-o','--output')
parser.add_argument('--width',type = int, default = 337)
parser.add_argument('--height', type = int, default = 76)

args = parser.parse_args()

I = args.file
W = args.width
H = args.height
O = args.output

ascii_char = list("$@B%8&WM#*oahkbdpqwmZO0QLCJUYXzcvunxrjft/\|()1{}[]?-_+~<>i!lI;:,\"^`'. ")
ascii_char = list("####OOOO++++::::....    ")
#print(I,W,H,O)

def get_char(r,g,b,a = 256):
    if (a == 0):
        return ' '
    length = len(ascii_char)
    gray = int(0.2126 * r + 0.7152 * g + 0.0722 * b)
    return ascii_char[int(gray*1.0/(257.0)*length)]

if __name__ == '__main__':

    im = Image.open(I)
    im = im.convert('RGB')
    im = im.resize((W,H),Image.NEAREST)

    txt = ''

    for i in range(H):
        for j in range(W):
            #print(im.getpixel((j,i)))
            #print(*im.getpixel((j,i)))
            txt += get_char(*im.getpixel((j,i)))
        txt+='\n'

    #print(txt)
    if O:
        with open(O,'w') as f:
            f.write(txt)

    else:
        with open("output/untitled.txt",'w') as f:
            f.write(txt)

