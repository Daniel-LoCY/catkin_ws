#!/usr/bin/env python3

import tkinter as tk
from tkinter import ttk
import cv2
import numpy as np
from PIL import Image, ImageTk
from color_shape_pair_pkg.srv import event
import rospy

window = tk.Tk()
window.title('User')
# window.geometry("500x500")
window.resizable(False, False)

# ===choose color===
colorLable = tk.Label(window, text='選擇顏色').grid(row=0, columnspan=2)

imglabel = tk.Label(window) # put color image
imglabel.grid(row=1, columnspan=2)

def change_img(l=[]):
    img = np.zeros((100,200,3), np.uint8)
    img[:] = l if len(l) == 3 else img[:]
    cimg = cv2.cvtColor(img, cv2.COLOR_BGR2RGBA)
    tkimg = Image.fromarray(cimg)
    tkimg = ImageTk.PhotoImage(image=tkimg)
    imglabel.imgtk = tkimg
    imglabel.config(image=tkimg)
change_img()

def onchange_scale(data):
    l = [bsacle.get(), gscale.get(), rscale.get()]
    change_img(l)

blabel = tk.Label(window, text='B').grid(row=2, column=0)
bsacle = tk.Scale(window, from_=0, to=255, orient="horizontal", command=onchange_scale)
bsacle.grid(row=2, column=1)
glabel = tk.Label(window, text='G').grid(row=3, column=0)
gscale = tk.Scale(window, from_=0, to=255, orient="horizontal", command=onchange_scale)
gscale.grid(row=3, column=1)
rlabel = tk.Label(window, text='R').grid(row=4, column=0)
rscale = tk.Scale(window, from_=0, to=255, orient="horizontal", command=onchange_scale)
rscale.grid(row=4, column=1)

# ===choose shape===

colorLable = tk.Label(window, text='選擇形狀').grid(row=5, columnspan=2)
radiovalue = tk.IntVar()
radio1 = ttk.Radiobutton(window, text='triangle', variable=radiovalue, value=3)
radio1.grid(row=6, columnspan=2)
radio2 = ttk.Radiobutton(window, text='rectangle', variable=radiovalue, value=4)
radio2.grid(row=7, columnspan=2)
# radio3 = ttk.Radiobutton(window, text='pentagon', variable=radiovalue, value=5)
# radio3.grid(row=8, columnspan=2)
radio4 = ttk.Radiobutton(window, text='circle', variable=radiovalue, value=0)
radio4.grid(row=8, columnspan=2)

# ===send to display node===

def send():
    b = bsacle.get()
    g = gscale.get()
    r = rscale.get()
    shape = radiovalue.get()
    service = rospy.ServiceProxy('display_service', event)
    resp = service(b, r, g, shape)
    print(resp.s)

button = tk.Button(window, text = 'Send', command = send)
button.grid(row=9, columnspan=2)

window.mainloop()