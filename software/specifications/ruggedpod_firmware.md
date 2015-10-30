---
title: RuggedPOD Firmware specifications v1.0
author: RuggedPOD team
---

RuggedPOD chassis is designed to run 24 hours a day in very harsh environments that is why it includes a complex remote management system which is flexible enough to be extended. The firmware is designed to be operated without any local human action. It can be run on a single or dual management board to sustain redundancy.

## Introduction

RuggedPOD project is release under the OCP license. The resulting software is released under the GPL v2 license. As to accelerate our development and stay compliant with existing OCP projects, we decided to implement the Microsoft ReST API with some extensions relative to outdoor operation and remote operating system deployment.

## Microsoft OCS ReST API

The full Microsoft ReST API is available [here](http://files.opencompute.org/oc/public.php?service=files&t=7421ce14df325e8c48a2abd93d3d649c). This API tend to standardize remote system access through HTTP GET/PUT.

## RuggedPOD firmware functions

The RuggedPOD firmware is providing the following functions:

 - Remote Power on/off
 - Remote Reset
 - Remote Power sensing including
	- Voltage per board
	- Power consumption
 - i2c sensors interface
 - PXE operating system deployment interface

### Security

The RuggedPOD API is secured, and answering on HTTPS protocol only. Each remote management card owns a self signed certificate which is automatically generated on the machine. The certificate is providing 256 bit SHA encryption. It must be accepted, and trusted as a root authentication solution on every clients accessing the API remotely. It can be downloaded on each remote management board through the following API call. The remaining Auth is performed through an HTTP Auth Digest request. ReSTful API means no client data storage on the server side, and only a login/password send operation to each HTTP request can be used as to be stateless.

** Microsoft ReST API relies on Windows Server Domain authentication which we do not want use for RuggedPOD project and would like to expand the API with a more standard approach **  

 - GetRemoteBoardCertificate

This call is not supported by Microsoft ReST API.

### Current API calls

As to reach these goals RuggedPOD firmware must implements the following calls

 - SetBladeAttentionLEDOn
	Parameters: BladeID = Integer


 - SetAllBladesAttentionLEDOn


 - SetBladeAttentionLEDOff
	Parameters: BladeID = Integer


 - SetAllBladesAttentionLEDOff


 - GetAllPowerState


 - GetPowerState
	Parameters: BladeID = Integer


 - SetPowerOn
	Parameters: BladeID = Integer


 - SetPowerOff
	Parameters: BladeID = Integer


 - SetAllPowerOn


 - SetAllPowerOff


 - SetBladeShortOnOff
	Parameters: BladeID = Integer


 - SetAllBladesShortOnOff


 - SetBladeLongOnOff
	Parameters: BladeID = Integer


 - SetAllBladesLongOnOff


 - SetBladeReset
	Parameters: BladeID = Integer


 - SetAllBladesReset


 - StartBladeSerialSession
	Parameters: BladeID = Integer

The following calls are RuggedPOD specifics.

 - SetBladeOilPumpOn


 - SetAllBladesOilPumpOn


 - SetBladeOilPumpOff


 - SetAllBladesOilPumpOff


 - GetBladeOilPumpStatus


 - GetAllBladesOilPumpStatus


## API call example

## Return status


