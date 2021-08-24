# Star Raiders (1979) by Douglas Neubauer
<img src="https://user-images.githubusercontent.com/58846/130362374-c449633e-34e6-444f-ba6c-3a8e9bf49482.png" height=250><img src="https://user-images.githubusercontent.com/58846/130362369-d432b3c2-0e40-4be1-8922-6169a58ccbbf.gif" height=250>

This repo contains two versions of the source code for Star Raiders. Both can be assembled using a [modern 6502 assembler](https://64tass.sf.net) to produce an identical copy of the original retail cartridge rom.

[starraiders-original.asm](src/starraiders-original.asm) is the original source code of the game, sourced from [a scanned
copy of the game's assembly listing.](src/Atari_Star_Raiders_Source_Code.pdf). This was copied from [a now archived repo](https://github.com/XioNYC/StarRaiders) containing a group's attempt at transcribing and formatting [the original scanned photographs](src/Atari_Star_Raiders_Source_Code.pdf). I've corrected a bunch of typos and ommissions in that transacription to produce [a listing](src/starraiders-original.asm) that can be assembled and run.

[starraiders-annotated.asm](src/starraiders-annotated.asm) is a fork of [Lorenz Wiest's disassembly of Star Raiders](lwiest/StarRaiders) that has been modified to build with [64tass](https://64tass.sf.net). This is the file to read if you're interested in understanding the inner workings of the game since it contains a wealth of commentary and information.


<!-- vim-markdown-toc GFM -->

* [Build Instructions](#build-instructions)
  * [Build Requirements](#build-requirements)
  * [Build and Play Star Raiders](#build-and-play-star-raiders)

<!-- vim-markdown-toc -->
## Build Instructions

### Build Requirements
```sh
sudo apt install 64tass atari800
```

### Build and Play Star Raiders
This will assemble the original source code and run it with [atari800](https://atari800.github.io/):
```sh
make
```

To build the annotated source code, run:

```sh
make starraiders-annotated.xex
```
