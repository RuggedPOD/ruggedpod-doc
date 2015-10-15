# 1. Presentation #

RuggedPOD is an advanced design, which needs to support traditional features available in datacenter. The first release of the design will support a single management backplane that will be driving the main features of each RuggedPOD including: 

- remote power on/off 
- remote reset
- remote console access for system setup 
- remote power consumption monitoring 
- pump system to handle thermal

Each RuggedPOD will support 4 microATX motherboard or 4 mini ITX board. Each board is sitting on an individual blade, that can manage one 3.5 inches drive and one 2.5 inches drive. As to provide network connectivity an integrated switch is part of RuggedPOD. 
### 1.1. Functionality overview ###

The board we have developed is a remote management backplane. It is has got 4 slots in order to receive maximum 4 motherboards. On each blade there is a connectic board where resides motherboard peripheral (power, networking, pump and GPIO). The combination (backplane and connectic board) provides processing power, I/O and network to the motherboard. Backplane solution is very advantageous for this project because it reduces wire length and quantity.

Management backplane the following format:
![](http://www.horizon-computing.com/Webdav/Public/ruggedpod_electronics/backplane.png)

Connectic board has the following format:
![](http://www.horizon-computing.com/Webdav/Public/ruggedpod_electronics/connectic_board.png)

This board mainly offers to motherboards:

- Power supplies
- remote power on/off 
- remote reset
- remote console access for system setup 
- remote power consumption monitoring 
- Power pump system to handle thermal
- Reduction of cable length


### 1.2. Management boards at a glance  ###

<TABLE > 
  <CAPTION> <b>Management backplane</b> </CAPTION> 
  <TR> 
 <TH> Main components </TH> 
 <td></td>
  </TR> 
  <TR> 
 <TH> Devices connected </TH> 
  <td>1 power supply, 1 raspberry pi, 1 DC/DC 5V/12V, 1 switch Ethernet</TD>
  </TR> 
 <TR> 
 <TH> PCB thickness
 </TH> 
 <td></td>
  </TR> 
 <TR> 
 <TH> Overall size </TH> 
 <td></td>
  </TR> 
 <TR> 
 <TH> Number of layer
 </TH> 
 <td>4</td>
  </TR> 
 <TR> 
 <TH> Power supply </TH> 
 <td>600W</td>
  </TR> 
 <TR> 
 <TH> PCB color </TH> 
 <td>green</td>
  </TR> 

</TABLE> 

<TABLE > 
  <CAPTION> <b>Connectic board</b> </CAPTION> 
  <TR> 
 <TH> Main components </TH> 
 <td>1 data connector, 1 power connector, 4 GPIO pins, 1 RJ45, 1 pump connector</td>
  </TR> 
  <TR> 
 <TH> Devices connected </TH> 
  <td>1 DC/DC ATX, 1 mother board, 1 pump
</TD>
  </TR> 
 <TR> 
 <TH> PCB thickness
 </TH> 
 <td></td>
  </TR> 
 <TR> 
 <TH> Overall size </TH> 
 <td></td>
  </TR> 
 <TR> 
 <TH> Number of layer
 </TH> 
 <td>4</td>
  </TR> 
 <TR> 
 <TH> Power supply </TH> 
 <td>Passive</td>
  </TR> 
 <TR> 
 <TH> PCB color </TH> 
 <td>green</td>
  </TR> 

</TABLE>

# 2. Functional schematics #

![](http://www.horizon-computing.com/Webdav/Public/ruggedpod_electronics/functional_schematics.png)

# 3. Functions description #

### 3.1. Power supply ###
#### 3.1.1. Needs ####

- Generate power to supply the different electronic part of RuggedPOD : 
- Motherboard
- Backplane board
- Pump
- Ethernet switch

<TABLE > 
 
  <TR> 
 <TH> Device </TH> 
 <TH> quantity </TH> 
 <TH> Voltage (V) - Current (A) </TH> 
  </TR> 
  <TR> 
  <td>Motherboard</TD>
 <td>4</TD>
 <td>ATX:
<table>
 <TR> 
 <TD> 5Vsb </TD> 
 <TD> 1A </TD>  
  </TR> 

<TR> 
 <TD> +12V </TD> 
 <TD> 9A </TD>  
  </TR> 
<TR> 
 <TD> +3,3V </TD> 
 <TD> 1A </TD>  
  </TR> 
<TR> 
 <TD> 5V </TD> 
 <TD> 3A </TD>  
  </TR> 
<TR> 
 <TD> -12V </TD> 
 <TD> 0,1A </TD>  
  </TR> 
<TR> 
 <TD> Total power  </TD> 
 <TD> 144,5W </TD>  
  </TR> 
</table>

</TD>
  </TR> 
 <TR> 
 <TD> Backplane board </TD> 
 <TD> 1 </TD> 
<TD> 5V – 1A </TD>  
  </TR> 

 <TR> 
 <TD> Pump </TD> 
 <TD> 4 </TD> 
<TD> 12V – 1.2A </TD>  
  </TR> 

 <TR> 
 <TD> Ethernet switch </TD> 
 <TD> 1 </TD> 
<TD> 12V – 1A or 5V - 2A </TD>  
  </TR> 

<TR> 
 <TD> Raspberry pi </TD> 
 <TD> 1 </TD> 
<TD> 5V – 1A </TD>  
  </TR> 
</TABLE>

<Table>
<TR> 
 <TH rowspan=4> Total </TH> 
 <TD> Motherboard </TD> 
<TD> 578W </TD>  
  </TR> 
<TR> 
 <TD> 5V </TD> 
<TD> 5W or 17W </TD>  
  </TR> 
<TR> 
 <TD> 12V </TD> 
<TD> 18W or 30W
 </TD>  
  </TR> 
<TR> 
 <TD> Total </TD> 
<TD> 613W </TD>  
  </TR> 

</TABLE>

#### 3.1.2. Solution ####
The main power comes from a 24V, 600W alimentation bloc which is placed into the RuggedPod. It can be directly plugged to 110-230V AC wall current. One DC/DC on each motherboard converts 24V to ATX power and another DC/DC converts 24V to 12V and 5V to supply the pump, backplane board, Raspberry Pi and Ethernet switch.

<table>
<TR> 
 <TH> Description</TH> 
 <TH> Power unit </TH> 
 <TH> Quantity </TH> 
 <TH> Input </TH> 
<TH>Output </TH>
  </TR> 
<TR> 
 <TD> Main power</TD> 
 <TD> TDK SWS600L-24 </TD> 
 <TD> 1 </TD> 
 <TD> 110-230V AC </TD> 
<TD>24V DC </TD>
  </TR>
<TR> 
 <TD> ATX DC/DC </TD> 
 <TD> SR Power PB142 </TD> 
 <TD> 4 </TD> 
 <TD> 24V DC </TD> 
<TD>ATX:
<table>
 <TR> 
 <TD> 5Vsb </TD> 
 <TD> 1A </TD>
 <TD> 1,5A </TD>   
  </TR> 

<TR> 
 <TD> +12V </TD> 
 <TD> 9A </TD>
 <TD> 9A </TD>   
  </TR> 
<TR> 
 <TD> +3,3V </TD> 
 <TD> 1A </TD>
 <TD> 12A </TD>   
  </TR> 
<TR> 
 <TD> 5V </TD> 
 <TD> 3A </TD>
 <TD> 10A </TD>  
  </TR> 
<TR> 
 <TD> -12V </TD> 
 <TD> 0,1A </TD>
 <TD> 0,2A </TD>   
  </TR> 
<TR> 
 <TD> Total power  </TD> 
 <TD colspan=2> 150W </TD> 
  
  </TR> 
</table> 
</TD>
  </TR>
<TR> 
 <TD> 12V and 5V DC/DC</TD> 
 <TD> SR Power D2D AT </TD> 
 <TD> 1 </TD> 
 <TD> 24V DC </TD> 
<TD>5V-10A and 12V-8A </TD>
  </TR>
</table>

#### 3.1.3. Power units description ####

RuggedPod is power supplied with a TDK SWS600L-24 generator. It is low profile model and outputs 24VDC with 600W power. Input voltage for standard application is 100AC-240VAC (50/60Hz). 

![](http://www.horizon-computing.com/Webdav/Public/ruggedpod_electronics/psu.png)

SR Power PB142 is 24V DC-DC ATX PC power supply. It is designed to provide high efficient power supply and can receive On/Off control from the motherboard.  PB142 provides up to 9A on the 12V rail, making it ideal for operating with Intel i7 core systems. It provides 10A on 3.3V and 9A on 5V leaving ample power for peripherals (multiple hard drives…).

![](http://www.horizon-computing.com/Webdav/Public/ruggedpod_electronics/dcdc.png)

SR Power D2D AT is another DC/DC converter which provides 5 V 10A and 12V 8A from 24VDC input. It supplies Ethernet switch (12V, 1A), four pumps (12V, 1.2A), Raspberry Pi (5V, 1A) and all ICs.

![](http://www.horizon-computing.com/Webdav/Public/ruggedpod_electronics/d2d.png)

# 3.2. Remote management #

### 3.2.1. Needs ###

- Remote power on/off of each Blades
- Remote reset of each Blades
- Remote console access 
- Power consumption level reading per Blade
- Power up/down Pump
- Leds indicating motherboard activity 

### 3.2.2.  Realization ###
Remote management board is located at the bottom of the tank and works with a Raspberry microcontroller.

ACS712 placed before DC/DC ATX (PB142) reads current used by micoATX board during operation. It can measure up to 20A current. The value is sent to the Raspberry through an analog to digital converter ADC PI, and reports the information to the user. So we can get a deep vision of power consumption used in each blade. 
Raspberry board offers the possibility to on/off or reset the blade independently and access to the console remotely. The multiplexer MAX399 with MAX3232 UART level shifter permit to choose the blade we want to monitor.

Raspberry also controls power on and power off of the pumps in order to keep a homogeneous and stable temperature into the Rugged Pod.

![](http://www.horizon-computing.com/Webdav/Public/ruggedpod_electronics/raspberry.png)

# 4. Schematics and layout #

### 4.1. Backplane ###

#### 4.1.1. Power header  MOLEX 1524-7060 ####

<table>
<TR> 
 <TH> Name</TH> 
 <TD> Receptacle Header, 4.20mm Pitch, Dual Row, Vertical, with Snap-In Plastic Pegs </TD> 
  </TR>
<TR> 
 <TH> Manufacturer </TH> 
 <TD> Molex </TD> 
</TR>
<TR> 
 <TH> Reference </TH> 
 <TD> 1524-7060 </TD> 
</TR>
<TR> 
 <TH> Package </TH> 
 <TD> Through hole </TD> 
</TR>
<TR> 
 <TH> Recommended PCB thickness </TH> 
 <TD> 1mm </TD> 
</TR>
<TR> 
 <TH> 1.00mm </TH> 
 <TD> 9A </TD> 
</TR>
<TR> 
 <TH> Voltage </TH> 
 <TD> 600V AC (RMS)/DC </TD> 
</TR>
</table>

![](http://www.horizon-computing.com/Webdav/Public/ruggedpod_electronics/power_header_molex.png)
#### 4.1.2. Data header FCI 10018783-10000MLF ####


# 6. Setup GPIO wires #

### 6.1. Serial console ###

Connect RX (com1) on RX (J52) and TX (com1) on TX (J52)

![](http://www.horizon-computing.com/Webdav/Public/ruggedpod_electronics/serial_console1.png)
![](http://www.horizon-computing.com/Webdav/Public/ruggedpod_electronics/serial_console2.png)

# 6.2. Power on/ off and reset #
![](http://www.horizon-computing.com/Webdav/Public/ruggedpod_electronics/power_on_off.png)

![](http://www.horizon-computing.com/Webdav/Public/ruggedpod_electronics/power_on_off_2350.png)

# 6.3. Pumps #
![](http://www.horizon-computing.com/Webdav/Public/ruggedpod_electronics/pumps.png)

