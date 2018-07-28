# CompRemote

Device that lets you turn on a desktop computer using a Samsung TV remote.
Is set up to recognize the red "A" teletext button on Samsung remotes.

This device works alongside your existing case power button, it does not replace it.
Your existing power button will still work.
The device plugs into the motherboards power button header.
Your cases power button plugs into the device instead of the motherboard.

It's powered off of a standard USB2 motherboard pin header.
On most motherboards this header will still be powered when the PC is off.
The device still needs power when the PC is off so it can listen for button presses from a remote, to turn the PC on.

# Components

Full schematics and board layout files are included in KiCad format.

* ATtiny85
* 4N25 OptoIsolator
* VS1838B Infrared Reciever
* 10k Resistor
* 1k Resistor
* Standard header strips

# Software Build Instructions

You don't have to rebuild the project, there is a precompiled CompRemote.hex you can flash with avrdude.

Download this project and [AVR-Libs](https://github.com/MarcusKiwi/AVR-Libs). Recreate this folder structure:

```
base
├───AVR-Libs
│   └───project files
└───CompRemote
    └───project files
```

Run `make` from inside the CompRemote folder to build the HEX file.

Run `make install` to build it and flash to an AVR. The default programmer type is usbasp. This can be reconfigured in the file `base/AVR-Libs/makefile`.