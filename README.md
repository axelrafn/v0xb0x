# v0xb0x
This is a project I thought of after the [Egyptian revolution of 2011](https://en.wikipedia.org/wiki/2011_Egyptian_revolution), I wondered how data and information could be transferred easilly between members of the protests without the need of infrastructure. Since Raspberry Pi machines have been so popular and the Raspberry Pi Zero W can be run on battery power I mixed these two things together and started learning about "Pirate boxes".
None of the ones I found were actively maintained nor did they have a recent release, so I decided to start one myself.

## What is a Pirate Box?
A pirate box is a device that can be used to share files and chat with people around you without the need of an internet connection. It is a device that creates a local network that you can connect to and use to share files and engage in chat with other people connected to the same network.

## What is a v0xb0x?
The name of it comes from the latin word vox, which means voice, and the 0 (zero) instead of the letter o is referring to not having a voice to speak with. The idea is that this device will give a voice to the people who don't have one, and allow them to share their voice with others.

## Installation
### Requirements
- Raspberry Pi Zero W
- Micro SD card
- Micro USB cable
- Power bank
- USB WiFi adapter (optional)

### Steps
1. Have a ready Raspberry Pi Zero W with a Micro SD card flashed with the latest Raspbian image.
2. SSH into the Raspberry Pi Zero W and run the following commands:
```sh v0xb0x-setup.sh```
