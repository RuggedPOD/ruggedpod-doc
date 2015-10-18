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
![](/usr/share/wordpress//Webdav/Public/ruggedpod_electronics/backplane.png)

Connectic board has the following format:
![](/usr/share/wordpress//Webdav/Public/ruggedpod_electronics/connectic_board.png)

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

![](/usr/share/wordpress//Webdav/Public/ruggedpod_electronics/functional_schematics.png)

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

![](/usr/share/wordpress//Webdav/Public/ruggedpod_electronics/psu.png)

SR Power PB142 is 24V DC-DC ATX PC power supply. It is designed to provide high efficient power supply and can receive On/Off control from the motherboard.  PB142 provides up to 9A on the 12V rail, making it ideal for operating with Intel i7 core systems. It provides 10A on 3.3V and 9A on 5V leaving ample power for peripherals (multiple hard drives…).

![](/usr/share/wordpress//Webdav/Public/ruggedpod_electronics/dcdc.png)

SR Power D2D AT is another DC/DC converter which provides 5 V 10A and 12V 8A from 24VDC input. It supplies Ethernet switch (12V, 1A), four pumps (12V, 1.2A), Raspberry Pi (5V, 1A) and all ICs.

![](/usr/share/wordpress//Webdav/Public/ruggedpod_electronics/d2d.png)

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

![](/usr/share/wordpress//Webdav/Public/ruggedpod_electronics/raspberry.png)

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

![](/usr/share/wordpress//Webdav/Public/ruggedpod_electronics/power_header_molex.png)
#### 4.1.2. Data header FCI 10018783-10000MLF ####

<TABLE >
	<TR>
		<TD ROWSPAN=5 WIDTH=14>
			<P ALIGN=CENTER>1</P>
		</TD>
		<TD ROWSPAN=2 WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Cable between power supply and backplane</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P><SPAN LANG="en-US">Alpha Wire Black Equipment Wire, 0.96 mm&sup2;
			CSA, 600 V 11.5 A, PTFE insulation, </SPAN><FONT COLOR="#ff0000"><SPAN LANG="en-US">18
			AWG</SPAN></FONT></P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">5857 BK005</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">2</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=173 VALIGN=TOP>
			<P><SPAN LANG="en-US">Alpha Wire Red Hookup Wire, 0.96 mm&sup2;
			CSA , 600 V 11.5 A, PTFE insulation, </SPAN><FONT COLOR="#ff0000"><SPAN LANG="en-US">18
			AWG</SPAN></FONT></P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">5857 RD005</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">2</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Connector on power supply</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P><SPAN LANG="en-US">TE Connectivity PLASTI-GRIP Series Insulated
			Tin Plated Crimp Ring Terminal, </SPAN><FONT COLOR="#ff0000"><SPAN LANG="en-US">M4</SPAN></FONT>
			<SPAN LANG="en-US">Stud Size, 22 &rarr; 16 AWG, Red</SPAN></P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P><A HREF="http://uk.rs-online.com/web/b/te-connectivity/"><SPAN LANG="en-US">TE
			Connectivity</SPAN></A></P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">34148</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">4</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=2 WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Connector on backplane</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P>7.50mm Pitch Super Sabre&trade; Receptacle Crimp Housing, UL
			94V-2, Glow Wire Capable, 4 Circuits 
			</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Molex</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>172672-3004</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P>1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=173 VALIGN=TOP>
			<P>Super Sabre&trade; Female Crimp Terminal</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Molex 
			</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>171825-0100</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P>4</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=6 WIDTH=14>
			<P ALIGN=CENTER>2</P>
		</TD>
		<TD ROWSPAN=2 WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Cable between DC/DC 5V/12V and backplane (power
			in)</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire Black Equipment Wire, 0.96 mm&sup2;
			CSA, 600 V 11.5 A, PTFE insulation, 18 AWG</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">5857 BK005</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire Red Hookup Wire, 0.96 mm&sup2; CSA ,
			600 V 11.5 A, PTFE insulation, 18 AWG</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">5857 RD005</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=2 WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Connector on DC/DC 5V/12V</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">KK&reg; 3.96mm Crimp Terminal Housing, 3 Circuits</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Molex</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>09-50-7031</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">KK&reg; 396 Crimp Terminal 2478, 18-24 AWG, Reel,
			Brass Tin (Sn) 
			</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Molex</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>08-50-0105 
			</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">2</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=2 WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Connector on backplane</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">7.50mm Pitch Super Sabre&trade; Receptacle Crimp
			Housing, UL 94V-0, 2 Circuits</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Molex</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>172672-2002 
			</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=173 VALIGN=TOP>
			<P>Super Sabre&trade; Female Crimp Terminal</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Molex</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>171825-0100</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">2</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=7 WIDTH=14>
			<P ALIGN=CENTER>3</P>
		</TD>
		<TD ROWSPAN=3 WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Cable between DC/DC 5V/12V and backplane (power
			out)</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire Black Equipment Wire, 0.96 mm&sup2;
			CSA, 600 V 11.5 A, PTFE insulation, 18 AWG</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">5857 BK005</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">4</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire Red Hookup Wire, 0.96 mm&sup2; CSA ,
			600 V 11.5 A, PTFE insulation, 18 AWG</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">5857 RD005</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">2</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire Yellow Hookup Wire, 0.96 mm&sup2; CSA ,
			600 V 11.5 A, PTFE insulation, 18 AWG</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">5857 YL005</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">2</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=2 WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Connector on DC/DC 5V/12V</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P>Atx 12 pin Mini-Fit Jr.&trade; <SPAN LANG="en-US">Receptacle
			Housing, Dual Row, UL 94V-2, 12 Circuits</SPAN></P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Molex 
			</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>39-01-2120</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Mini-Fit&reg; Female Crimp Terminal, Tin (Sn) over
			Copper (Cu) Plated Brass, 18-24 AWG</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Molex 
			</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>39-00-0038</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">8</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=2 WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Connector on backplane</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P>Atx 12 pin Mini-Fit Jr.&trade; <SPAN LANG="en-US">Receptacle
			Housing, Dual Row, UL 94V-2, 12 Circuits</SPAN></P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Molex 
			</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>39-01-2120</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Mini-Fit&reg; Female Crimp Terminal, Tin (Sn) over
			Copper (Cu) Plated Brass, 18-24 AWG</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Molex 
			</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>39-00-0038</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">8</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=14>
			<P ALIGN=CENTER>4</P>
		</TD>
		<TD WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Cable between Raspberry and backplane (power)</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P>Xiuhong Boutique Pair USB A m&acirc;le gauche droit coude Micro
			5P gauche droit coude 90 degr&eacute;s C&acirc;ble micro USB de
			charge c&acirc;ble</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P><A HREF="http://www.amazon.fr/gp/help/seller/at-a-glance.html/ref=dp_merchant_link?ie=UTF8&amp;seller=A26U12WZ353NEA"><SPAN LANG="en-US">XiuHong
			Shop</SPAN></A></P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">B00W9J7F0I (amazon)</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP>
			<P LANG="en-US">25cm</P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=3 WIDTH=14>
			<P ALIGN=CENTER>5</P>
		</TD>
		<TD WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Cable between Raspberry and backplane (data)</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Harting 26 Way Unscreened Flat Ribbon Cable, 1.27
			mm pitch, 28 AWG</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P LANG="en-US">Harting</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">6618297000710</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Connector on Raspberry</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">26 way polarised skt w/o strain relief</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P LANG="en-US">TE Connectivity</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">1658621-6</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Connector on backplane</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">26 way polarised skt w/o strain relief</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P LANG="en-US">TE Connectivity</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">1658621-6</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=5 WIDTH=14>
			<P ALIGN=CENTER>6</P>
		</TD>
		<TD ROWSPAN=2 WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Cable between Switch and backplane</P>
			<P LANG="en-US">(power)</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire Black Equipment Wire, 0.96 mm&sup2;
			CSA, 600 V 11.5 A, PTFE insulation, 18 AWG</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">5857 BK005</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire Red Hookup Wire, 0.96 mm&sup2; CSA ,
			600 V 11.5 A, PTFE insulation, 18 AWG</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">5857 RD005</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Connector on switch</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P>Connecteurs d'alimentation continue DC PWR PLG 0.080&quot;
			1.8&quot;L, BLK HAND. LCK <SPAN LANG="pt-BR">2 (Inner Dia.) mm,
			5.5 (Outer Dia.) mm</SPAN> 
			</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Switchcraft</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>S761K 
			</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=2 WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Connector on backplane</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Mini-Fit Jr.&trade; Receptacle Housing, Dual Row,
			UL 94V-2, 2 Circuits</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Molex 
			</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>39-01-2020</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Mini-Fit&reg; Female Crimp Terminal, Tin (Sn) over
			Copper (Cu) Plated Brass, 18-24 AWG</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Molex</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>39-00-0038</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">2</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=14>
			<P ALIGN=CENTER>7</P>
		</TD>
		<TD WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Cable between raspberry and switch</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P>C&acirc;ble RJ45 CAT.5 avec 1 t&ecirc;te coud&eacute;e 90&deg;
			Noir</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Pearl</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>KT5775-910</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP>
			<P LANG="en-US">60cm</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=14>
			<P>8</P>
		</TD>
		<TD WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Cable between switch and backplane</P>
			<P LANG="en-US">(data)</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Standard network cable</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">4</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=4 WIDTH=14>
			<P ALIGN=CENTER>9</P>
		</TD>
		<TD WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Cable between switch and top cover</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Network cable</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Connector on switch</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Standard RJ45 connector</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Connector on top cover (internal side)</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Contacts</P>
			<P LANG="en-US">Bouchon D</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P LANG="en-US">Fischer</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">*DEE 1031 A010-130 | contact</P>
			<P LANG="en-US">*1031.824 | Bouchon D</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Connector on top cover (external side)</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P>Bouchon</P>
			<P>Poulet</P>
			<P>Corps</P>
			<P>Serre cable</P>
			<P>Contacts</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P LANG="en-US">Fischer</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">*1031.825|Bouchon S</P>
			<P LANG="en-US">*S 1031 A010-130+</P>
			<P LANG="en-US">*S 1031 A010-130+</P>
			<P LANG="en-US">*E3 1031.2/6.7|SE</P>
			<P LANG="en-US">*S 1031 A010-130+</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=4 WIDTH=14>
			<P ALIGN=CENTER>10</P>
		</TD>
		<TD WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Cable between power supply and top cover</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P>H07RN-F TITANEX 3G1.5 
			</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Nexans</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>H07RN-F TITANEX 3G1.5</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P>1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=63 VALIGN=TOP>
			<P>Connector on power supply</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">RS Crimp Ring Terminal, M3 Stud Size, 12 &rarr; 10
			AWG, Yellow</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>RS</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>313043VM</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">3</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Connector on top cover (internal side)</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P LANG="en-US">Contacts</P>
			<P LANG="en-US">Bouchon</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P LANG="en-US">Fischer</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P LANG="en-US">*DEE 104 Z040-80| contacts</P>
			<P LANG="en-US">*104.714|bouchon D</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=63 VALIGN=TOP>
			<P LANG="en-US">Connector on top cover (external side)</P>
		</TD>
		<TD WIDTH=173 VALIGN=TOP>
			<P>Poulet</P>
			<P>Serre Cable 
			</P>
			<P>Corps</P>
			<P>Contact</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=87 VALIGN=TOP>
			<P>Fischer</P>
		</TD>
		<TD WIDTH=138 VALIGN=TOP>
			<P>*104.1291 | Poulet</P>
			<P>*E3-*104.2/8.7+B|SE</P>
			<P>*E1 104.286 S 130</P>
			<P>*E2 104.040.23 bloc de contact</P>
		</TD>
		<TD WIDTH=18 VALIGN=TOP>
			<P>1</P>
		</TD>
		<TD WIDTH=35 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>

	<TR>
		<TD ROWSPAN=5 WIDTH=14>
			<P LANG="en-US" ALIGN=CENTER>11</P>
		</TD>
		<TD ROWSPAN=2 WIDTH=81 VALIGN=TOP>
			<P LANG="en-US">Cable between ATX DC/DC and connectic board (power
			in)</P>
		</TD>
		<TD WIDTH=170 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire Black Equipment Wire, 0.96 mm&sup2;
			CSA, 600 V 11.5 A, PTFE insulation, 18 AWG</P>
		</TD>
		<TD WIDTH=80 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire</P>
		</TD>
		<TD WIDTH=135 VALIGN=TOP>
			<P LANG="en-US">5857 BK005</P>
		</TD>
		<TD WIDTH=22 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=38 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=170 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire Red Hookup Wire, 0.96 mm&sup2; CSA ,
			600 V 11.5 A, PTFE insulation, 18 AWG</P>
		</TD>
		<TD WIDTH=80 VALIGN=TOP>
			<P LANG="en-US">Alpha Wire</P>
		</TD>
		<TD WIDTH=135 VALIGN=TOP>
			<P LANG="en-US">5857 RD005</P>
		</TD>
		<TD WIDTH=22 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=38 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=81 VALIGN=TOP>
			<P LANG="en-US">Connector on ATX DC/DC</P>
		</TD>
		<TD WIDTH=170 VALIGN=TOP>
			<P LANG="en-US">3Pin Plug-in Terminal Block Connector 5.08mm Pitch</P>
			<P><SPAN LANG="en-US">mates with OQ 5,08 (OQ0355510000G)</SPAN> 
			</P>
		</TD>
		<TD WIDTH=80 VALIGN=TOP>
			<P>Phoenix</P>
			<P ALIGN=CENTER><BR>
			</P>
		</TD>
		<TD WIDTH=135 VALIGN=TOP>
			<P>MSTB 2.5/3-ST-5.08 
			</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=22 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=38 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=2 WIDTH=81 VALIGN=TOP>
			<P LANG="en-US">Connector on connectic</P>
		</TD>
		<TD WIDTH=170 VALIGN=TOP>
			<P LANG="en-US">7.50mm Pitch Super Sabre&trade; Receptacle Crimp
			Housing, UL 94V-0, 2 Circuits</P>
		</TD>
		<TD WIDTH=80 VALIGN=TOP>
			<P>Molex</P>
		</TD>
		<TD WIDTH=135 VALIGN=TOP>
			<P>39-01-4030</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=22 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=38 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=170 VALIGN=TOP>
			<P LANG="en-US">Mini-Fit&reg; Female Crimp Terminal, Tin (Sn) over
			Copper (Cu) Plated Brass, 18-24 AWG, Reel 
			</P>
		</TD>
		<TD WIDTH=80 VALIGN=TOP>
			<P>Molex</P>
		</TD>
		<TD WIDTH=135 VALIGN=TOP>
			<P>39-00-0038</P>
		</TD>
		<TD WIDTH=22 VALIGN=TOP>
			<P>2 
			</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=38 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=4 WIDTH=14>
			<P LANG="en-US" ALIGN=CENTER>12</P>
		</TD>
		<TD WIDTH=81 VALIGN=TOP>
			<P LANG="en-US">Cable between mother board and connectic (GPIO)</P>
		</TD>
		<TD WIDTH=170 VALIGN=TOP>
			<P>C&acirc;ble en nappe, 10 voies, larg. 12,7 mm, pas de 1.27mm,
			longueur 500mm, 28 AWG 
			</P>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=80 VALIGN=TOP>
			<P>Radiospares</P>
		</TD>
		<TD WIDTH=135 VALIGN=TOP>
			<P>214-0661</P>
			<P><BR>
			</P>
			<P><BR>
			</P>
			<P ALIGN=CENTER><BR>
			</P>
		</TD>
		<TD WIDTH=22 VALIGN=TOP>
			<P>4</P>
		</TD>
		<TD WIDTH=38 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=81 VALIGN=TOP>
			<P>Connector on mother board</P>
		</TD>
		<TD WIDTH=170 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=80 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=135 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=22 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=38 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD ROWSPAN=2 WIDTH=81 VALIGN=TOP>
			<P>Connector on connectic</P>
		</TD>
		<TD WIDTH=170 VALIGN=TOP>
			<P LANG="en-US">2.54mm Pitch C-Grid III&trade; Crimp Housing Dual
			Row, 8 Circuits</P>
		</TD>
		<TD WIDTH=80 VALIGN=TOP>
			<P>Molex</P>
		</TD>
		<TD WIDTH=135 VALIGN=TOP>
			<P>90142-0008</P>
		</TD>
		<TD WIDTH=22 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=38 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=170 VALIGN=TOP>
			<P LANG="en-US">C-Grid III&trade; Crimp Terminal, 22-24 AWG, Reel,
			Tin (Sn) 
			</P>
		</TD>
		<TD WIDTH=80 VALIGN=TOP>
			<P>Molex</P>
		</TD>
		<TD WIDTH=135 VALIGN=TOP>
			<P>90119-2121</P>
		</TD>
		<TD WIDTH=22 VALIGN=TOP>
			<P LANG="en-US">4</P>
		</TD>
		<TD WIDTH=38 VALIGN=TOP BGCOLOR="#d9d9d9">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=14>
			<P LANG="en-US" ALIGN=CENTER>13</P>
		</TD>
		<TD WIDTH=81 VALIGN=TOP>
			<P LANG="en-US">Cable between pump and connectic</P>
		</TD>
		<TD WIDTH=170 VALIGN=TOP>
			<P LANG="en-US">Standard pump cable</P>
		</TD>
		<TD WIDTH=80 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=135 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=22 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=38 VALIGN=TOP BGCOLOR="#ffffff">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=14>
			<P LANG="en-US" ALIGN=CENTER>14</P>
		</TD>
		<TD WIDTH=81 VALIGN=TOP>
			<P LANG="en-US">Cable between mother board and connectic (network)
						</P>
		</TD>
		<TD WIDTH=170 VALIGN=TOP>
			<P LANG="en-US">Standard network cable</P>
		</TD>
		<TD WIDTH=80 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=135 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=22 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=38 VALIGN=TOP BGCOLOR="#ffffff">
			<P><BR>
			</P>
		</TD>
	</TR>
	<TR>
		<TD WIDTH=14>
			<P LANG="en-US" ALIGN=CENTER>15</P>
		</TD>
		<TD WIDTH=81 VALIGN=TOP>
			<P LANG="en-US">Cable between Atx DC/DC and Motherboard</P>
		</TD>
		<TD WIDTH=170 VALIGN=TOP>
			<P LANG="en-US">Standard ATX cable</P>
		</TD>
		<TD WIDTH=80 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=135 VALIGN=TOP>
			<P><BR>
			</P>
		</TD>
		<TD WIDTH=22 VALIGN=TOP>
			<P LANG="en-US">1</P>
		</TD>
		<TD WIDTH=38 VALIGN=TOP BGCOLOR="#ffffff">
			<P><BR>
			</P>
		</TD>
	</TR>
</TABLE>

# 6. Setup GPIO wires #

### 6.1. Serial console ###

Connect RX (com1) on RX (J52) and TX (com1) on TX (J52)

![](/usr/share/wordpress//Webdav/Public/ruggedpod_electronics/serial_console1.png)
![](/usr/share/wordpress//Webdav/Public/ruggedpod_electronics/serial_console2.png)

# 6.2. Power on/ off and reset #
![](/usr/share/wordpress//Webdav/Public/ruggedpod_electronics/power_on_off.png)

![](/usr/share/wordpress//Webdav/Public/ruggedpod_electronics/power_on_off_2350.png)

# 6.3. Pumps #
![](/usr/share/wordpress//Webdav/Public/ruggedpod_electronics/pumps.png)

