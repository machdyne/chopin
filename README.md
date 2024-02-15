# Chopin Motherboard

Chopin is a host board that when paired with a [Sechzig](https://github.com/machdyne/sechzig) compute module can function as a development board.

![Chopin](https://github.com/machdyne/chopin/blob/b374ad0853522a5d13fe4f7f41c193577b9ff3f0/chopin.png)

This repo contains schematics, PCB layouts, pinouts and documentation.

Find more information on the [Chopin product page](https://machdyne.com/product/chopin-motherboard/).

## Using Chopin

Chopin requires a Sechzig module to function. **When inserting a Sechzig module, make sure that pin 2 on Chopin and pin 2 on the module are both on the same side.**

## Programming

Chopin has a JTAG header that when paired with a JTAG programmer, can be used to program Sechzig modules. The following examples assume you're using a USB Blaster JTAG programmer.

Program the configuration SRAM of a Sechzig module:

```
sudo openFPGALoader -c usb-blaster image.bit
```

Program the configuration flash on a Sechzig module:

```
sudo openFPGALoader -f -c usb-blaster image.bit
```

## Pinouts

### JTAG Header

The 3.3V JTAG header can be used to program the Sechzig module. It can also be used to provide power (5V) to the board.

```
6 5
4 3
2 1
```

| Pin | Signal |
| --- | ------ |
| 1 | TCK |
| 2 | TDI |
| 3 | TDO |
| 4 | TMS |
| 5 | 5V0 |
| 6 | GND |

### LVDS Port

Chopin has an experimental SATA-style LVDS port. SATA is not supported.

| Pin | Signal |
| --- | ------ |
| 1 | GND |
| 2 | DS2\_P |
| 3 | DS2\_N |
| 4 | GND |
| 5 | DS1\_P |
| 6 | DS1\_N |
| 7 | GND |

## License

The contents of this repo are released under the [Lone Dynamics Open License](LICENSE.md) with the following exceptions:

- The KiCad design files contain parts of the [kicad-pmod](https://github.com/mithro/kicad-pmod) library which is released under the [Apache License, Version 2.0](https://www.apache.org/licenses/LICENSE-2.0.html).

- The KiCad design files may contain symbols and footprints released under other licenses; please contact us if we've failed to give proper attribution.

Note: You can use these designs for commercial purposes but we ask that instead of producing exact clones, that you either replace our trademarks and logos with your own or add your own next to ours.
