# EzCryTifTools
Tools to access the CryTif export dialog without Photoshop.

![](http://i.imgur.com/QdA334X.gif)
![](http://i.imgur.com/bLNEwEr.gif)

## Installation Instructions
1. Press the sexy ![Download Zip](http://i.imgur.com/LxaBwHa.png) button
2. Extract the EzCryTifTools-master folder in the zip file to wherever you want the scripts to live.
3. Run install.bat (as administrator, it needs to be admin to create the relevant registry keys).
4. If you need to Uninstall for whatever reason, run uninstall.bat (as administrator), and then delete the folder.

## Usage
* IMPORTANT: Your textures must all be .tif beforehand or the scripts WILL NOT WORK. Also make sure you have the correct naming convention set up for your textures (_diff for Albedo, _ddna for Normals/Gloss etc)
* Select the folder containing your textures, right click it, and press "Convert Textures to CryTif"
* Alternatively you can Right-Click your texture, press "Send To" and select "Convert to CryTif.bat"

## Known Issues
* Running the script over normal maps twice breaks the crap out of them, I'm not entirely sure why, but am investigating.
* Currently I batch each RC operation into map types, so Albedo/Reflectivity/Normals, I'm not currently looping through the other types of maps. For those you can process them individually with the "Send To" menu.


