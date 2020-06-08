# bthandler
A simple interactive tool to:
- connect to already paired devices
- pair new ones
- unpair already paired devices
- turn bluetooth on/off
- blacklist paired devices to not be listed in connection selection (useful for auto-connecting devices like some mice)

all via dmenu. Should be easily extendable by editing the `actions` string.

# Installation
Edit the Makefile to reflect your preffered installation destination. Then, simply

```bash
make install
```

# Clear blacklist/pairlist

Since `bluetoothctl paired-devices` seems to be hugely unreliable in listing paired devices, bthandler has a seperate list for all paired devices through bthandler.
There is also a blacklist available to not display certain devices, which might be useful for autoconnection Bluetooth mice for example.

To clear these files, simply run
```bash
make clear
```
and these files will be reset to their inital, empty state.

# Uninstall

To uninstall you might follow that it's a simple
```bash
make uninstall
```

# Pending features

Here's a growing list of features that are not yet actively worked on but might be nice in the future. Currently I'm more concerned with reliability that fulfilling feature requests, but I'm still open to put some on this list.

- start scanning for new devices immediately at execution to save time when pairing new devices
- auto-trust newly paired devices/trust device via dmenu
- blacklist devices via dmenu
