# External Nabu Interface Device (ENID-25)
![Schematic](/Schematic.png) ![Printed circuit board](/PCB.png)

A simple way to export the Nabu's option card to via a common DB interface. Almost all pins map exactly from the NABU Option Card specification to the DB-25 pins, with the exception of the power pins.

#Output Connector
The DB-25 is a 25-pin interface, used in many applications, primarily RS-232 serial and PC parallel cabling. When selecting a cable or connector, care should be taken to select one where all pins are connected -- some serial cables may have only a few pins connected (RX/TX, DTS/RTS, etc).

# Differences
Since the DB-25 connector has 5 less signals available than the NABU Option Card interface exposes, the following are not propagated:
- +5V rail 2
- Ground rails 2 & 3
- +12V rail
- -12V rail
As well, ground rail 1 is redirected from NABU pin 26 to DB-25 pin 25, as per the Pinout table.

#Notes
- Ensure that the cable used is not a null-cable or loopback-cable. You can tell if pin 2 (RS-232 Receive) and pin 3 (RS-232 Transmit) are switched at each end.

#Pinout

| Input from NABU | Output to DB-25 | Pinout |
| --------------- | --------------- | ------ |
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
| 25 | Unused | +5V Rail 2 |
| 26 | 25 | Ground Rail 1 |
| 27 | Unused | Ground Rail 2 |
| 28 | Unused | Data 0 |
| 29 | Unused | Data 0 |
