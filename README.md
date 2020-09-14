My ongoing setup for working with tidalcycles and SuperCollider on Arch Linux.

## gear

- **Behringer UMC404HD** audio interface.
- - Korg **Volca Keys** on MIDI channel 4
  - Korg **Volca Drum** on MIDI channel 3
    > **note**: The single channel MIDI handling was broken until FW1.14.
  - Korg **Volca Modular** on MIDI channel 1 (once I mod it)
  - Korg **Volca Nubass** on MIDI channel 2

  Each of them plugged into the audio interface.
  I will soon acquire a MIDI splitter to allow for all of them to be controlled
  simultaneously. For now, only one of them.
- **Oxygen 8v1** MIDI/USB keyboard.

## jack/pulseaudio

`patchbay.xml` for automated audio & MIDI routing in qjackctl.
