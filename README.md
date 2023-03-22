# External Nabu Interface Device (ENID-25)

A simple way to export the NABU's option card to via a common DB interface. Almost all pins map exactly from the NABU Option Card specification to the DB-25 pins, with the exception of the power pins.
The ENID is meant to take the place of a NABU Option Card Plate. Each NABU has 4 removable metal plates to allow for external interface and access to any  Option Cards installed. These plates correspond to 4 30-pin Option Card interface mounted on the board.

![Printed PCB](/TopBoard.png) ![Populated PCB](/Top.png)
![Schematic](/Schematic.png) ![Printed circuit board](/PCB.png)

# Why?
I wanted to extend the abilities of the NABU. The most convenient way of doing this without disrupting the main system is to make use of the Option Card bus -- a series of 4 30-pin connectors on the motherboard that allow for the addition of peripherals and hardware extensions. My issues:
  - I want to keep internal access to a minimum -- ideally, connect up to all 4 slots to ENIDS, then button up the NABU.
  - I do not want to cut into the Option Card Plates -- leaving them intact, as the NABU is a collectible item with limited parts availability.
  - I want to add protection by both limiting the exposed power access to a fusable 5V rail, and keeping the +12V and -12V rails disconnected.
  - I want a widely adopted interface connector. DB-25 is very popular for legacy serial and parallel PC interfacing, and cheaply available on electronics supply sites.

# Output Connector
The DB-25 is a 25-pin interface, used in many applications, primarily RS-232 serial and PC parallel cabling. When selecting a cable or connector, care should be taken to select one where all pins are connected -- some serial cables may have only a few pins connected (RX/TX, DTS/RTS, etc).

# Differences
Since the DB-25 connector has 5 less signals available than the NABU Option Card interface exposes, the following are not propagated:
- +5V rail 2
- Ground rails 2 & 3
- +12V rail
- -12V rail

As well, ground rail 1 is redirected from NABU pin 26 to DB-25 pin 25, as per the Pinout table.

The connected +5V rail can be connected either directly (not recommended) or connected to a fuse with a 1x2 electrical jumper. The specifications call for a ~1A resettable LittleFuse-brand fuse, but other fuses can be used, if their leads fit in themsoldering holes.

# Notes
- Ensure that the cable used is not a null-cable or loopback-cable. You can tell if pin 2 (RS-232 Receive) and pin 3 (RS-232 Transmit) are switched at each end using a multimeter.
- Connecting and disconnecting the DB-25 cable exerts a considerable force on the ENID. It is recommended to add a non-conductive reinforcement across the 2 Option Card Plate bolts.
- The 2 1x13 connectors on the ENID card (JOP1 & JOP2) should be male, as the card is receiving power. JFUSE1 (1x3) should also be male to accommodate a jumper to select the power mode.
- The BOM calls for 2 1x13 0.1"(2.56mm)-pitch cables, female on both ends.

# Caveats
- The existing Option Card plate screws will not suffice to hold the ENID card in. Upgrade to a pair of fitting bolts and nuts.
- The PCB is connected to the NABU as a plate by 2 bolts. Use of this involves plugging in a DB-25 connector, which exerts a considerable force on the board. I highly recommend sandwiching the PCB with a nonconductive backing material behind it, on the same bolts, to take the strain of the plugging. I also recommend providing counterstrain to the female DB-25's tabs when plugging a male DB-25 connector in.
- This is NOT a direct parallel or serial interface. Trying to connect devices as such won't work without an intermediary device, and may harm your NABU, external device, or self-esteem.
- Mind how you plug the 1x13 Connectors into the Options Card pins. They plug into pins 1-13 and 14-26. 27-30 should not be connected. Especially considering that Pins 29 & 30 may be +12 and -12 volts respectively. I'll add pictures and video once I start adding boards. NABU Option Card pin 1 appears to be the furthest back in the NABU enclosure.

# Pinout
ENID's pinout should map almost exactly to the Option Card pinout, with the exception of the first ground rail NABU pin 26, which on the ENID is pin 25; and of course, NABU pins 25 & 27-30 are not propagated.

## ENID Pins
| ENID DB-25 | Input from NABU | Description |
| ---------- | --------------- | ----------- |
| 1 | 1 | Interrupt |
| 2 | 2 | Interrupt Acknowledge |
| 3 | 3 | 3.58 MHz Clock |
| 4 | 4 | Audio |
| 5 | 5 | Chip Select |
| 6 | 6 | Address 0 |
| 7 | 7 | Address 1 |
| 8 | 8 | Address 2 |
| 9 | 9 | Address 3 |
| 10 | 10 | 1.79 MHz Clock |
| 11 | 11 | Write |
| 12 | 12 | Read |
| 13 | 13 | I/O Request |
| 14 | 14 | Wait |
| 15 | 15 | Reset |
| 16 | 16 | Data 0 |
| 17 | 17 | Data 1 |
| 18 | 18 | Data 2 |
| 19 | 19 | Data 3 |
| 20 | 20 | Data 4 |
| 21 | 21 | Data 5 |
| 22 | 22 | Data 6 |
| 23 | 23 | Data 7 |
| 24 | 24 | +5V Rail 1 |
| 25 | 26 | Ground Rail 1 |

## Unused pins
| Input from NABU | Description |
| --------------- | ----------- |
| 25 | +5V Rail 2 |
| 27 | Ground Rail 2 |
| 28 | Ground Rail 3 |
| 29 | +12V Rail |
| 30 | -12V Rail |

# Concerns
- The board is anchored to the NABU box by 2 bolts. There is no reinforcement for the RS-232 connector. There is a concern that over time the stress of plugging & unplugging the connector will cause the PCB to crack from the forces required. PCBs ordered should have a composition and thickness as high as can be reasonably ordered (don't cheap out). Alternatively, a non-conducting reinforcement bar can be layered behind the PCB, connecting to the aforementioned bolts, but able to absorb the strain imparted by connecting a DB-25 connector.  

# More information
http://www.nabu.ca
