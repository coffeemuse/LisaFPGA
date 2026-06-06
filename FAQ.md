# LisaFPGA Frequently-Asked Questions and Troubleshooting

Below are some questions I get a lot and some troubleshooting tips I give when people are trying to get their boards going. I'll be expanding this section as I get more questions from people!

## How compatible is the LisaFPGA design with the original Lisa hardware?
Unless there's some bug that I haven't found yet, it should be 100% compatible by nature of being a 1:1 recreation of the original hardware (or at least as close as I could get). And from all the testing I've done so far, it is indeed 100% compatible.

The 100% compatibility falls apart a bit when you start overclocking your LisaFPGA board thanks to clocking differentials between most of the system and some of its peripherals, but the only incompatibility this introduces is an issue where overly-conservative COP timeouts will break things. This isn't a problem in all but one of the Lisa's OS's, and I have a patch for the one where it is a problem.

## Does LisaFPGA support MacWorks Plus II?
Yes, but you'll need a PFG module just like you would on a real Lisa. Plug it into the SCC socket on the LisaFPGA board just like on a real Lisa and you'll be up and running, with the caveat that there's no way to install the clips to control the floppy disk controller (which isn't a big deal).

The PFG works great at stock clock speeds, but might be unpredictable at higher clocks. One of mine works fine when overclocked, but the other doesn't, so your mileage may vary.

## Why does my board keep crashing and rebooting whenever I have a real floppy drive plugged in?
Real 400K and 800K drives (especially 400K drives) can draw quite a bit of current sometimes, and a lot of computers' USB ports can't sustain that level of current consumption and shut down when the floppy drive tries to do something. The solution here is to stop powering your LisaFPGA board from your computer (or from a low-end phone charger or something) and start powering it from something that can deliver more power. I've had good success with USB-C MacBook chargers, but that's almost certainly overkill. A reasonably-solid phone charger will probably be fine.

## My board doesn't do anything when I hit the Lisa power button. What's going on?
The FPGA probably didn't get programmed at power-on. I've seen this happen very, very occasionally on my boards, but it's so infrequent that I can't reproduce it enough to figure out what's wrong or devise a fix. The solution is simple: just power-cycle the board or hit the PROGRAM button and wait for the DONE LED to light up.

## The power LED comes on when I hit the Lisa's power button, but I don't get any video output over HDMI. Perhaps the monitor even says that the input format is unsupported. What's going on?
Some cheaper monitors (and especially cheap capture devices) can be kind of picky about the framerate that the board outputs for some reason. Try moving the HDMI FRAMERATE jumper from whatever position it's currently in to the other position and see if that fixes things.