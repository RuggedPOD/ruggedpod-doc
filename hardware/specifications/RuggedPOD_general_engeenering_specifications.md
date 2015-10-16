# RuggedPOD V1 general engeenering specifications #

----------

## 1) Introduction ##

RuggedPOD is a revolutionary computer and electronic chassis designed to run outdoor and support up to 1kW without active cooling element. The PODs are designed to be interconnected together as a mesh network even if they can support traditional topologies. Each POD must be equipped with a network input and a power supply input. 

RuggedPOD is using the thermal property of oil to cool electronic systems. It is using an immersive approach, which is avoiding the need of any humidity control solution, as water doesn’t mix into RuggedPOD coolant which makes it a unique outdoor solution.

RuggedPOD benefits are:
True Free Cooling
Everywhere: outdoor and also indoor 
Eco friendly
Quick and easy deployment
Standard electronic devices

## 2) Design Guidelines ##

### a) Operating conditions ###

The product can run outdoor, so it have to be bad weather conditions resistant, it means:
Be waterproof > IP68 Norma
The chassis must be stainless
Windproof
Mobile : RuggedPOD must be easy to transport

### b) Electrical ###

Electronics devices into the RuggedPod can support oil immersion and up to 70°C oil temperature. Rugged Pod is designed to operate with 110/230VAC power input. 

### c) Thermal ###

RuggedPOD chassis support up to 1kW of thermal power at 35 C degrees ambient. If using at much higher temperature , system power must be reduduced :

- 45 C degrees – 750 W
- 50 C degrees – 450 W

### d) Fire protection ###

The tank has a total thickness of 5 mm aluminium wall. Bottom and top are made of 3 mm stainless steel, and the seal offer protection against fresh air introduction into the tank avoiding fire expansion. 

Depending on the coolant type, the tank can support temperature up to 135 C Degrees (mineral oil) or 350 C Degrees (organic oil) without any potential risk.

### e) Security ###

## 3) Architecture design ##

### a) Thermal ###

Electronics devices are immerged on oil, hot points on every boards are equipped with an heatsink.
Oil can transfert and support about 10 time more heat than air and may be use as very good a heat-transfer fluid.
The princip is very simple, the heat provided by the immerged electronical devices is caught by the di-electrical oil and transfered to the walls of the chassis, these ones are in contact with the external air and will assure the cooling by natural convection.
It's very important to have oil temperature as homogeneous as possible, for this purpose pumps are located inside the tank to stir oil.

### b) Mechanical ###

The pod is designed to support 4 Blades, each equipped with 1 motherboard (ATX/mini ITX/Micro ATX), a 3,5'HDD, 1 SSD and a pump.
The blades are mounted on a backplane located at the bottom of the chassis, this one provides power and managment system to the motherboards.
**The casing must be fully air proof to protect electronics from pressure modification and oil from oxidation.**

### c) Power managment ###

The power supply provides 1kW in 24V distributed to the blades and the network switch.
4 DCDC boards are located on the backplane as mezzanine boards to convert the power in appropriate voltage for the motherboards, 1 other DCDC located in the bottom of the chassis convert the power for the switch.

### d) Network ###

The Blades are connected to a switch via the backplane. This can provide Remote management and control, thanks to it's controller function.

### e) Sensors ###

Sensors are arranged in order to contol :
CPU temperature
Coolant temperature
Casing (external) tempemrature
External ambiant temperature
coolant level (leak detection)
Power consumption
All sensors are connected to the controler backplane,

### e) Remote management/Software ###

The backpanel integrates a remote management card able to provide the following core functions :

- Remote power on/off of each Blades
- Remote reset of each Blades
- Remote console access 
- Power consumption level reading per Blade
- Pump control

These actions are available through a ReST API, as well as CLI, a web interface and require initial setup of the remote management card.
