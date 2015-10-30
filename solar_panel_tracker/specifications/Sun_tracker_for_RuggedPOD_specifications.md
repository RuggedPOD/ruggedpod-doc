# Sun tracker for RuggedPOD specifications #
 
----------

## 1) Objective of the project ##

With ruggedPOD we still decrease the need of energy for a datacenter with a PUE=1.
The idea is now to create a completly autonomous data center using RuggedPODs and solar panels, so we even don't use electricity coming from a power station or from outside the datacnter.
For that we need to create a solar panels system able to provide:

- Power 24h a day to ruggedPODs
- Easy transportation
- Easy deployment
- Easy usage
- Minimun maintenance
- Run alone
- Outdoor conditions resistant

## 2) Why using sun power ? ##

Solar energy is derived from the sun’s radiation. Limitless and free, the sun provides to the Earth enough energy in one hour that could meet the global energy needs for one year ! 
But with existing technologies we are able to harness only 0.001 percent of that energy (read this article [here](http://www.techinsider.io/map-shows-solar-panels-to-power-the-earth-2015-9)) ! 

The choise of solar energy over other sustainable energies was made particulary because of its ease of installation and the existence of many sites around the world that can accommodate a true solar plant, but there are other reasons stated below:

- More mature and efficient technology than other sustainable energy
- Doesn't requier high maintenance
- 25 years lifetime higher than data centers
- Can be deployed in remote aeras where it is expensive to extend electricity power grid
- Strong development potential
- Large locations with high solar radiation (map [here](http://# "solar radiation world map"))

## 3) Project tracks ##

The most efficient orientation for a solar panel is to be perpendicar to sunbeams, the design of a system able to provide the solar panels the best position is essential.
We will need sensors to know the position of the sun and automatic management solution to guide the system in correct position.

Running the RuggedPOD 24 hours a day means we need energy 24 hours a day
As we use solar energy we must have batteries to stock energy during the day and power the pods during the night. Moreover we must anticipate cloudy days or bad weather periods. 

We can divide the project up to 3 tracks

- Structure

Create a 2 axis structure allowing solar panels to follow the sun and being in the most efficient positon to produce energy.
The solution must be resistant to rough outdoor conditions.

- Software

The system will be able to choose the best position by itself, so it needs to be able to calculate the best position compared to sun location.

- Power management

The system will store the energy produced during the day and deliver it during the night.
Moreover we need to dimension the size of solar panels.
The system will assure it's own power supply.

## 4) Structure ##

### a) Outdoor condition constraints ###

Must be rough outdoor conditions resistant, it means it must resist to:

- Wind
- Rain
- Oxydation
- Sandstorm
- Human degradation
- Thunder
- Earthquake


### b) Mechanical ###

Precise tracking of the sun is achieved through systems with dual axis tracking.
It will integrate a panel support, motors, rail and rotativ system. 
The structure must be:

- Easy to deploy by non specialist
- Easy to transport
- Able to resist to rough conditions

### c) electronical ###

The system will integarte sensors and control board.

## 5) Software ##

A software able to calculate the best positon function of sensors data, this track is essentiel to optimize effectiveness of the whole system.

Fucntions included: 

- Sun localisation
- Solar panels positioning
- Remote control management
- Operation monitoring
- Remote power production monitoring
- Weather monitoring
- Friendly and easy interface

## 6) Power management ##

The system must be able to provide power to the PODs 24 hours a day in every condition.
Solar panels will produce electricity during sunny time and it means we must stock some for the night.

The system have to manage:

- Sunny and dark periods alternation
- Continuity of service in case of Breakdown still maintenance intervention
- Security
- Power the PODS
- Power the Tracker
