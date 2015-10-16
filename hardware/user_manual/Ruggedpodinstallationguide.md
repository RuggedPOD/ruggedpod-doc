RuggedPOD
===================
Installation and User Guide
-----------

> **IMPORTANT INFORMATION** 
> Read all the operational instructions, safety recommendations and all warnings provided in the instruction manual.  
Most accidents encountered are merely due to the failed observance of basic safety standards.  
Accidents are prevented by foreseeing potentially hazardous situations and observing the appropriate safety standards.  
The fundamental safety standards are listed in the “SAFETY” section of this manual and also in the section involving.  
The Manufacturer reserves the right to up-date the technical information gifrven in this manual without notice.  

# 1) Overview #

RuggedPOD is a chassis designed to run outdoor and support up to 1kW without active cooling element. The PODs are designed to be interconnected together as a mesh network even if they can support traditional topologies. Each POD must be equipped with a network input and a power supply input. 

RuggedPOD is using the thermal property of oil to cool electronic systems. It is using an immersive approach, which is avoiding the need of any humidity control solution, as water doesn’t mix into RuggedPOD coolant which makes it a unique outdoor solution.

![Ruggedpod exploded view](http://www.horizon-computing.com/Webdav/Public/ruggedpod_usermanual/pictures/overview/exploded.jpg)

### a) Mechanical ###

The pod is designed to support 4 Blades, each equipped with 1 motherboard (ATX/mini ITX/Micro ATX), a 3,5'HDD, 1 SSD and a pump.
The blades are mounted on a backplane located at the bottom of the chassis, this one provides power to the motherboards.

### b) Power managment ###

The power supply provides 1kW in 24V distributed to the blades and the network switch.
4 DCDC boards are located on the blades as mezzanine boards to convert the power in appropriate voltage for the motherboards, 1 other DCDC located in the bottom of the chassis convert the power for the switch.

### c) Network ###

The Blades are connected to a switch via the backplane. This can provide Remote management and control, thanks to it's controller function.

### d) Sensors ###

Sensors are arranged in order to contol :
CPU temperature
Coolant temperature
Casing (external) tempemrature
External ambiant temperature
coolant level (leak detection)
Power consumption
All sensors are connected to the controler board.

### e) Coolant ###

Organic oil coolant for RuggedPOD is fully bio compatible, and can work without degradation up to -10 C degrees. As to offer lower temperature operation RuggedPOD support a heating option to avoid that the oil temperature goes too low especially during system maintenance or shutdown operation.

# 2) Waranty and safety #

The installation and handling of a RuggedPOD is for technicians trained in electrical products only.  
Never work on a Running Ruggedpod.
Always disconnect RuggedPod from the power outlet while working on it.  
Never open a RuggedPOD when raining or in a wet environement.

# 3) Installation #

Unpack the ruggedPOD shipping carton, and locate the materiel for installing the POD.
Shipping carton includes:

 - 1 RuggedPOD with backplane, controller board and network switch
 - 4 Blade servers chassis, eahc containing a DCDC board, a connectic board and a pump
 - 3 Organic oil cans of 20L
 - 1 Vaccum pump
 - 1 Screwdrivers and screws set
 - 1 Power cable
 - 1 Network cable

### III.I. Safety ###

Before installing a RuggedPOD, be sure that you understand the following warnings and cautions.

>**WARNING**: To reduce the risk of electric shock or damage to the equipment:
>• Do not disable the power cord grounding plug. The grounding plug is an important safety
feature.
• Plug the power cord into a grounded (earthed) electrical outlet that is easily accessible at all
times.
• Unplug the power cord from the power supply to disconnect power to the equipment.
• Do not route the power cord where it can be walked on or pinched by items placed against it.
Pay particular attention to the plug, electrical outlet, and the point where the cord extends from the server.

### III.II. Required tools ###

You need the following items for some procedures:
• Torx T-15 screwdriver
• Phillips screwdriver
• Flathead screwdriver

### III.III Blade servers assembly ###

#### Motherboards ####

Each blade supports mini-ITX, Micro Atx or Atx form factor motherboard, do not try to mount other format. 

>**Note**: We will use an ATX motherboard as an example on each illustration.
>
1. Install processor, memory and every features on the motherboard, please refer to the user manuel of the board manufacturer.
2. Screw the motherboard on the blade chassis.

![Motherboard mounting](http://www.horizon-computing.com/Webdav/Public/ruggedpod_usermanual/pictures/installation/motherboard_mounting.jpg)

#### Hard drives ####

>**Note**: Each blade has a 2,5' and 3,5 bay slot to mount hard drives,
**Important** : Only use device that can run in an immersed environment.
>
1. Slide the hard drive in the bay
2. Screw the drive

![enter image description here](http://www.horizon-computing.com/Webdav/Public/ruggedpod_usermanual/pictures/installation/harddrives.jpg)

#### DCDC ####

>1. Position the DCDC 
2. Screw the board

![DCDC mounting](http://www.horizon-computing.com/Webdav/Public/ruggedpod_usermanual/pictures/installation/dcdc_mounting.jpg)

#### Connection board ####

>1. Position the Connection board
2. Screw the board

![Connection board mounting](http://www.horizon-computing.com/Webdav/Public/ruggedpod_usermanual/pictures/installation/connecting_board_mount.jpg)

#### Pump ####

>1. Position the pump
2. Screw it

![pump mounting](http://www.horizon-computing.com/Webdav/Public/ruggedpod_usermanual/pictures/installation/pump_mounting.jpg)

#### Cabling ####

DCDC
Pump
Network

# IV. Mounting blade on RuggedPOD #

Rack the blade

# V. Fill RuggedPOD with oil #

Fill the tank gently avoiding to pour oil directly on the backplane until the level reaches approximately 3/4 of the tank.

# VI. Create vaccum #

Due to the fact that the deterioration of the oil is caused generally by the oxidation, the
method to prevent consists of reducing to a minimum possible its contact surface with the
air. That is why vaccum condition is needed inside the tank, this will avoid oil oxidation and guaranty a constant pressure despite oil heat variation.

>**Important:** If you constat vaccum issue please contact the manufacturer.


### VI.I Required equipment ###

 - Vaccum pump
 - Screwdriver

### VI.II Closing the tank ###

Take care that the sealer is properly positioned in its trench.
Plug Network and power out put cable to related network and power supply.
Position the cover on the tank, then screw each 24 screws.

### VI.III Vaccum ###

Take the pump and plug it on the valve.
Turn of the valve and wait that pressure comes below 0.2 bar.
Then turn off the pump and unplug it.
We recommend to check that the pressure did not rise up during the hour following the creation of the vacuum.

>**Note:** RuggedPOD is designed for 25 vaccum cycles.


# VII. Implementation locations #

### VII.I. Installation recommendations ###

 - RuggedPOD is designed to run in outdoor condition provided by keeping it protected from direct expostion to sun light.
 - It must be placed in a flat surface on a support which ensures an elevation of at least 50 cm from the ground to allow free convection cooling.
 - In case of stack of RuggedPOD, each one must be separated by at least 50 cm from each side.
 - Keep a clear space of at least 50cm from each side of the RuggedPOD.
 - Floor must support at least 200kg/m2.
 - In case of implementation in a very dusty place a regular cleaning of the alveoli is needed, these being obstructed may cause free convection stop and harm cooling.
 - 
### VII.II. Outdoor ###

We recommend to make PODs difficult to access to public and unauthorized persons to avoid from stealing and degradation.

### VII.III. Indoor ###

Rugged pod must be in a ventilated environement to avoid ambiant temperature increasing.
Always keep ruggedPOD in at least 50cm free aera.

### VII.IV. Operating temperatures table ###

RuggedPOD is an electronic chassis designed to run outdoor and support up to 1kW without active cooling element, the amount of power it's able of support is function of the ambiant temperature.

<TABLE> 
  <TR> 
 <TH>Ambiant temprature </TH> 
 <TH> Power supported </TH> 
  </TR> 
  <TR>  
 <TD> 35°c </TD> 
 <TD> 1000 W </TD> 
  </TR> 
 <TR>  
 <TD> 45°c </TD> 
 <TD> 750 W </TD> 
  </TR> 
 <TR>  
 <TD> 50°c </TD> 
 <TD> 450 W </TD> 
  </TR> 
 
</TABLE> 

>**Important:** these values correspond to RuggedPOD in a shaded environement.


# VIII. Turn on the POD #

>**Important:** Only trained technicians may handle the RuggedPOD.


### VIII.I. Power up the POD ###

Plug power cable to broker.
drawing to add

>**Important:** Never use RuggedPOD without broker, you will expose you to high electrical danger.


### VIII.II. tgtgt ###

# IX. Configuration #

### IX.I. BMC ###

The backpanel integrates a remote management card able to provide the following core functions :
 - Remote power on/off of each Blades
 - Remote reset of each Blades
 - Remote console access
 - Power consumption level reading per Blade
 - Pump control
These actions are available through a ReST API, as well as CLI, a web interface and require initial setup of the remote management card.

### IX.II. Bios Setting ###

Fdsdfsdfsd

# X. Maintenance #

>**Important:** All maintenance activity must be done out of the production field in a separated aera, RuggedPOD power off by a trained technician.
>Check regularly oil leaks from the ends and the welded parts of the panels. If oil is leaking, report it to the manufacturer.

### X.I. Alveolar panels ###

It is necessary to take a special care for alveolar panels maintenance and inspection, since any
abnormality can reduce the useful life of the servers or cause serious defects.
Be sure that alveoli are not obstructed.
This recommendation is especially important in a dusty environment.

> To clean the panel you can use pressure washer taking care to cable.

### X.II.Tank ###

#### Unseal the Tank ####

Turn off the server and wait several minutes to let the server cool before removing the server cover.
Unscrew all 24 screws then unplug output cables inside the tank. You can now remove the cap. 

#### Change Battery ####

Empty the tank from oil first. 
Unplug all cables from power supply to controller board and network switch.
Then unscrew the 4 screws tha fix the PSU to its support.
Place the new one and repeat the process in reverse.

#### Change controler board ####

Empty the tank from oil first.
Unrack the blade to access to controler board
Unplug power and RJ45 cables.
Remove screws and take the board, place the new one and repeat the process in reverse.

#### Change Backplane ####

Empty the tank from oil first.
Unrack all blades server, then unplug all rR45, GPIO and power cables.
Remove the backplane, place the new one and repeat the process in reverse.

### Blade server ###

#### Remove a Blade Server ####

Simply unrack the blade.
Take care that the POD is powered off

#### Change a motherboard ####

Unplug ATX cable, 12V cable And network cable.
You can unscrew the motherboard and remove it.
Repeat the process in reverse to install the new one.

#### Change DCDC ####

Unplug ATX cable, You can unscrew the DCDC and remove it.
Repeat the process in reverse to install the new one.

#### Change Pump ####

Unplug power cable, then unscrw the pump.
Repeat the process in reverse to install the new one.
Pay attention to replace the pump in the same position as shown on the drawing below:

#### Change Hard drive ####

Unscrew the hard drive and remove it.
Screw the new one.

#### Change Connection Board ####

# XI. General Problem #

### XI.I. Hardware Problem ###

#### Power ####

#### Cables ####

#### Motherboards ####

#### Storage ####

### XI.II. Software Problem ###

### XI.III. Vaccum Problem ###

To air leakage, verify the pressure inside the tank thanks to the manometer, any increasing means there is an air leakage. In that case follow the instructions below:

 1. Power off the POD
 2. Verify the sealer is correctly positioned on its trench on top of the tank.
 3. Verify the I/O sealer is correctly positioned on its trench on the cap.
 4. Verify that I/O plate is correctly screwed.
 5. Verify that cap is correctly screwed.
 6. Power on the POD.
 7. Vaccum the POD.
 8. Verify that the pressure is under 0.2 Bar during at least 1 hour.

If after following this process there is always a leakage, please contat the manufacturer.

### XI.I.  Oil leakage ###

Oil leaks are more likely at the welds, so check occasionally the welds between two pannels.
Seeing oil at the ground may due to oil leakage too.
In case of oil leakage, power off the POD and contact the manufacturer.

>**Important:** Oil leakage means you have probably also an air leakage, don not use ruggedPOD in that condition.


# XII. Compliance #

Normes US et normes EU
Sécurité incendie produit inflammable
Sécurité electrique
Etancheité eau et air

# XIII. Specifications #

#### Mechanical specifications ####

<Table>
<TR>  
 <TH> Specification </TH> 
 <TH> Value </TH> 
  </TR>   
<TR>  
 <TD> Height </TD> 
 <TD> xx </TD> 
  </TR> 
<TR>  
 <TD> Width </TD> 
 <TD> xx </TD> 
  </TR> 
<TR>  
 <TD> Depth </TD> 
 <TD> xx </TD> 
  </TR> 
 </Table>

#### Environmental specifications ####

<Table>
<TR>  
 <TH> Specification </TH> 
 <TH> Value </TH> 
  </TR>   
<TR>  
 <TD> Operating temperature </TD> 
 <TD> -20 to 50°C </TD> 
  </TR> 
<TR>  
 <TD> non-operating temperature </TD> 
 <TD> -40 to 70°C </TD> 
  </TR> 
<TR>  
 <TD> Sun exposure </TD> 
 <TD> no </TD> 
  </TR> 
<TR>  
 <TD> Protection against intrusion </TD> 
 <TD> IP 68 </TD> 
  </TR> 
<TR>  
 <TD> Immersion </TD> 
 <TD> 1m </TD> 
  </TR> 
 </Table>

# XIV. Support Information #

Before you contact us, be sure to have the following informations :
 - Product serial number
 - Product serie name
 - List item
 - Hardware configuration
 - Operating system type and revision number
 - teststet
