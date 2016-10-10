# CompRemote

AVR that turns on desktop computer using TV remote.

Is set up to use the red "A" button on Samsung remotes.

Unfortunately I don't have any schematic files for this yet.

# Bits

* ATmega328p
* 4N25 OptoIsolator
* TSOP4838 Infrared Reciever

# Instructions

Download this project and [AVR-Libs](https://github.com/MarcusKiwi/AVR-Libs). Recreate this folder structure:

```
base
├───AVR-Libs
│   └───project files
└───CompRemote
    └───project files
```

Run `make` from inside the CompRemote folder to build the HEX file.

Run `make install` to build it flash it to an AVR. Default programmer type is usbasp. This can be changed in the file `base/AVR-Libs/makefile`.