# reciever_v6_DUAL_CORE.py - from OpenPLC using v24, for displaying data via thread. now with logo graphic
import os
import machine
import _thread

from time import sleep
import utime
from machine import Pin
#from picographics import PicoGraphics, DISPLAY_PICO_EXPLORER, PEN_P3
from picographics import PicoGraphics, DISPLAY_PICO_DISPLAY_2, PEN_P4
machine.freq(200000000)

# We're only using a few colours so we can use a 4 bit/16 colour palette and save RAM!
#display = PicoGraphics(display=DISPLAY_PICO_EXPLORER, pen_type=PEN_P4)
display = PicoGraphics(display=DISPLAY_PICO_DISPLAY_2, pen_type=PEN_P4)

import jpegdec

uart = machine.UART(0, 115200)
print(uart)
led_onboard = Pin("LED", Pin.OUT)
Rled = Pin(6, Pin.OUT)
Gled = Pin(7, Pin.OUT)
Bled = Pin(8, Pin.OUT)
Reset = Pin(14, Pin.IN, Pin.PULL_UP)
            
WHITE = display.create_pen(255, 255, 255)
BLACK = display.create_pen(0, 0, 0)
DC_green = display.create_pen(0, 122, 83)
BLUE = display.create_pen(0, 0, 255)
brightness = 0.87

msg = ""
Cmsg = []

Rled.value(1)
Gled.value(1)
Bled.value(1)

filename = "brz2.jpg"
# # Create a new JPEG decoder for our PicoGraphics

display.set_pen(BLUE)
j = jpegdec.JPEG(display)
# # Open the JPEG file
j.open_file(filename)

# # Display the result
display.update()
    
# 2nd thread - gets data from serial port and prints it to terminal
def other():
    while True:
        global msg
        b = None
        
        sleep(0.33)
        if uart.any():
            b = uart.readline()
            try:
                msg = b.decode('utf-8')
                
                print(">> "+ msg)
            except:
                pass
_thread.start_new_thread(other, ())


# set up
display.set_font("bitmap8")

# Converts a string to a list
def Convert(string): 
    li = list(string.split(",")) 
    return li 


# Main thread - just toggles onboard led
while True:
    led_onboard.toggle()
    Cmsg.clear()
    display.set_pen(DC_green) 
    
    utime.sleep(.1)
    
    display.set_pen(WHITE)
    Cmsg = Convert(str(msg)) # makes the recieved stringh a list, so can be indexed
    if len(Cmsg) >= 5:  # incase the serial data is a bit short
        #print(Cmsg[0], " ", Cmsg[3])
        display.clear()
        display.text(Cmsg[0], 10, 80, 200, 3)
        display.text(Cmsg[1], 10, 120, 200, 3)
        display.text(Cmsg[2], 10, 160, 200, 3)
        display.text(Cmsg[3], 10, 200, 200, 3)
        display.text(Cmsg[4], 150, 200, 200, 3)
        
    else:
        print("Oop's")
        #Rled.value(0)
    #print(msg)
    #print(Cmsg[1])
    #print(Cmsg[2])
    
    display.text("DC OpenPLC", 70, 20, 200, 3)
    display.text("(v24)", 230, 20, 230, 1)
    display.line(70, 42, 218, 42)
    
    # Decode the JPEG
    j.decode(0, 0, jpegdec.JPEG_SCALE_FULL, dither=False)
    display.update()
    #if not Reset.value():
        #Rled.value(1)