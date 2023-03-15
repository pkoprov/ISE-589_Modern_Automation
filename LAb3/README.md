# ISE 589 Lab3

Batchelder, Bowman, Koprov

## Hardware Setup

### Power supply

1. Connect +24 V of additional power source to COM0+, and -24 V to COM0- of PLC output.

2. Connect NC1 of 2 pole relay to -24V bus.

### PLC

1. Connect DO_0 to NC2 contact of 2 pole relay.

2. Connect DO_1 to +24 V input of 2 pole relay. Connect -24 V of 2 pole relay to negatice bus of additional power source.

3. Connect DI_0 to one of the NO contacts of Emergency button.

4. Connect DI_1 to one of the NO contacts of Blue button.

5. Connect DI_2 to one of the NO contacts of Green button.

6. Connect PLC power supply +24 V to COM1+.

7. Connect DO_2 to one of the contacts of LED of Blue button.

8. Connect DO_3 to one of the contacts of LED of Green button.

### Software Setup

1. Open the project in the Connected Components Workbench.  `Lab3\Lab3_CCW\Lab3_CCW\Lab3_CCW Project.ccwsln`

2. Ping `boker.hivemq.com` and make sure IP address of the broker is the same.

3. Make sure QoS of subscription and publishing is 2.

4. Upload the code to PLC.

## Topic structure

ISE589/BBK/Lab3/Motor/State - start/stop the motor (1/0).

ISE589/BBK/Lab3/Motor/Direction - set the direction of the motor (1/0).

ISE589/BBK/Lab3/Heart_Beat - heart beat signal of the PLC as JSON in a format

```{Model: _SYSVA_RESNAME, Mode:_SYSVA_RESMODE, Scan counter: _SYSVA_SCANCNT}```.
