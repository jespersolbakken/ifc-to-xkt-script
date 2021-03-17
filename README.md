# ifc-to-xkt-script

Simple bash-script for MacOS that uses IfcConverter, Collada and xeokit-gltf-to-xkt to convert ifc files to xkt files for use with xeokit.
I created this because I found it abit tedious to run the three programs after eachother to get the correct file for xekoit.
The converters are NOT created by me and all credits go to their creators.(xeolab, IfcOpenSHell and KhronosGroup)


Disclaimer: Use this at your own risk, I can not guarantee that the xkt files that comes out are not corrupted, but the input ifc file should not be changed in any way. The output file will be named the same as the input file and will overwrite existing files with same filename and filetype.


## Setup
Download IfcConvert for Mac OSX, Collada OSX and xeokit-gltf-to-xkt following the guides on their sites.
https://github.com/xeokit/xeokit-sdk/wiki/Creating-Files-for-Offline-BIM

All files and folders should in the same directory:
- converterifc.sh
- "INPUTFILE.IFC"
- IfcConvert
- xeokit-gltf-to-xkt-master/ 
- COLLADA2GLTF-v2/

How to use:
1. Navigate to the folder containing the converters
2. open terminal and run the command ./converterifc.sh "INPUTFILE.IFC"
3. decide if you want to keep the .dae and .gltf
4. PROFIT! get the .xkt file

## Credits to xeolabs for xeokit and the converter, IfcOpenShell for IfcConvert and KhronosGroup for Collada

## IfcConvert Mac OSX version 0.6.0 created by IfcOpenShell downloaded from: 
http://ifcopenshell.org/ifcconvert

## Collada osx version 2.1.5 created by KhronosGroup downloaded from:
https://github.com/KhronosGroup/COLLADA2GLTF/releases

## xeokit-gltf-to-xkt created by xeolabs downloaded from:
https://github.com/xeokit/xeokit-gltf-to-xkt
