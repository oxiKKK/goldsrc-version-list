Blue Shift
Version 1.0.0.0
Readme File
4/5/01

***********************************************************************
About This Document:

Thank you for purchasing Blue Shift. 

This document contains last-minute information about Blue Shift and other information about the program not found in the Help Files.  This README file includes information that pertains to general problems and questions you may have concerning this software or your computer. Should you experience any problems with Blue Shift, please refer to this file for additional help on answering questions about the game and solving technical difficulties.

***********************************************************************
TABLE OF CONTENTS

I.	MINIMUM REQUIREMENTS
II.	GENERAL TECHNICAL ISSUES
III.	GENERAL GAME ISSUES 
IV.    CONTACTING SIERRA 	 
	               



I. MINIMUM REQUIREMENTS
-----------------------
Windows(r) 95,98, ME, 2000(admin login) or Windows NT 4.0
Pentium 233+, 32 MB RAM
SVGA, high color (16-bit)
2x CD-ROM drive
Windows-compatible sound card
Mouse, keyboard

II. GENERAL TECHNICAL ISSUES
----------------------------

DRIVER ISSUES

Some Matrox G400 users could experience trouble switching from the game engine to the launcher.  Check the Matrox website (www.matrox.com) for the most recent drivers.

Users that are running with the ATI Rage Pro Turbo card could experience graphical corruption in the game if their desktop color depth is set to 24 or 32 bit.  Setting desktop resolution to 16 bit is preferred.

If you are using a nVidia based GeForce video card, download the latest reference drivers from www.nvidia.com.  This will fix the problem with models showing up as all white.

If you are running Blue Shift using a 3Dfx Voodoo5 card, select OpenGL default as your driver.  Selecting 3Dfx Mini Driver can cause system instability.

There is an issue with pre-Voodoo 3 3dfx cards (Voodoo Graphics, Voodoo 2, and Voodoo Banshee) not working properly with the 3dfx MiniDriver in OpenGL mode on Half-Life Blue Shift. We recommend that owners of the previously mentioned display adapters select Direct 3D mode instead.


Users running Diamond Viper 550 cards could experience trouble switching from the game engine in OpenGL in certain resolutions.  Running in D3D mode is preferred for this chipset.

Make sure the most current version of DirectX is installed on your computer. DirectX 7 is the most current version (as of 11/7/00), and it is included on the Blue Shift CD in the 'DirectX' folder. 

If you are running a pre-OSR2 release of Windows95, get the OpenGL 1.1 fix in order to run Blue Shift in OpenGL mode.  The fix can be found at ftp://ftp.microsoft.com/softlib/mslfiles/opengl95.exe

Make sure you have installed the most recent drivers for all your hardware before playing Blue Shift.

There is only one CD-Key allowed per client for Internet play.  If you are getting a "CD-Key in use error" make sure that there are no other clients connected to any game server using your CD-Key.

At the time of this product release, the Rage Fury Pro has no driver support
in Windows 2000/NT 4.0

At the time of this product release, Voodoo 4 & 5 video cards do not have
available drivers in NT 4.0.

If you have an ATI Radeon video card and are running the game in Windows
2000, you'll need to download the most current video drivers available for
your card.



III. GENERAL GAME ISSUES
------------------------

SOUND PROBLEMS
If you don't hear any sounds while playing Blue Shift or if you only hear music, another application you are running may have control of the sound hardware.  Exit Blue Shift, close the other application, and restart Blue Shift.

A3D 1.0 versus 2.0
Blue Shift requires version 2.0 of A3D.  You can upgrade your A3D from 1.0 to 2.0 by downloading the latest drivers from Aureal's website at www.a3d.com.  If you try to enable A3D support in Blue Shift without upgrading to 2.0, you will get an error message when starting Blue Shift.


"YOUR Blue Shift EXECUTABLE HAS BEEN MODIFIED.  PLEASE CHECK YOUR SYSTEM FOR VIRUSES AND THEN RE-INSTALL Blue Shift." ERROR MESSAGE
As soon as you run Blue Shift , Blue Shift checks itself to determine if the Blue Shift executable you are running has been damaged or altered in any way.  The most likely causes of such damage are 1) computer viruses and 2) corrupt portions of a user's hard disk drive.  The section entitled "YOUR Blue Shift INSTALLATION HAS BECOME CORRUPT OR OUT OF DATE" ERROR MESSAGE provides instructions on how to proceed.

"YOUR Blue Shift INSTALLATION HAS BECOME CORRUPT OR OUT OF DATE" ERROR MESSAGE
One cause for this error message is computer viruses.  If your system has a virus, the virus will modify Blue Shift.exe as well as any other programs you run.  When you try to play a multiplayer game, this modification will be detected and your system won't be authenticated.  Upgrading to the latest version of Blue Shift won't solve the problem, as the virus will infect that version as well.  The work around is simple - download an appropriate virus scanner, remove the virus from your system using the virus scanner, uninstall and then reinstall Blue Shift.  The reason you must uninstall and reinstall Blue Shift is because many virus scanner programs, while capable of fixing damaged executables, must modify the executable in order to work.  Thus, though the virus scanner has "cleaned" the Blue Shift executable, Blue Shift will detect the changes and refuse to authenticate the executable. By far the most common virus that our users have encountered has been the CIH virus, and unfortunately some antivirus programs don't currently detect this virus. We recommend Norton AntiVirus which is available on Symantec's website at www.symantec.com. We also suggest updating to the latest version.


SWITCHING BETWEEN OPENGL AND D3D ON THE NVIDIA TNT
If you run OpenGL on the nVidia Riva TNT and switch to Direct3D, decals may not appear.  To fix this, type gl_polyoffset 4 at the console.

JUMP KEY NOT ALLOWING YOU TO SWIM UP
If you are having trouble swimming up when you are standing on the ground underwater, try setting fps_max to a number less than it is currently set to at the console.

DESKTOP RESOLUTION AND Blue Shift
Blue Shift should be run in a resolution that is lower than or equal to your desktop resolution.  Running Blue Shift in a full-screen or windowed mode that is greater than your desktop resolution can cause problems.

SOUND QUALITY PROBLEMS
If your sound is skipping or cracking, you may need to adjust your direct sound configuration in Blue Shift.  There are two common adjustments you can make:

1) Adjust _snd_mixahead.  If you have access to the Blue Shift console, type "_snd_mixahead 0.2" at the console.  If not, create a file with notepad that contains the line:
_snd_mixahead 0.2
And save it in your Blue Shift\bshift\ directory.  Name the file "autoexec.cfg".

2) Disable direct sound.  Run Blue Shift with the command line argument "-wavonly".  Edit the Blue Shift shortcut.  The 'target' field should say: "Blue Shift.EXE -wavonly".


Blue Shift supports standard joysticks, digital joysticks and advanced controllers like the FPgaming Assassin 3D, the Logitech WingMan Warrior and the SpaceTec IMC SpaceOrb.

To enable Blue Shift joystick support, verify that your joystick or game controller is selected in the Joystick control panel applet and has been calibrated and tested, then launch Blue Shift. Check the joystick box in the Configuration/Controls/Advanced controls menu of Blue Shift.

For advanced controllers, you will also need to have a configuration file called joystick.cfg.  Typically this configuration file should be obtained from your game controller company.  However you can create your own and place this file in the bshift subdirectory of your Blue Shift directory.  Blue Shift will automatically execute this configuration file each time you start the game. 

The configuration files for common game controllers are included below.

Blue Shift Joystick functionality

1. Proportional movement (the farther you move the stick, the faster you move) 
2. Support for up to 32 buttons (JOY1-JOY4 and AUX5-AUX32)
3. Sensitivity setting for each control (allows tuning and inverting the control direction)
4. Dead-zone setting for each control
5. Support for all 6 axes (X, Y, Z, R, U, V)
6. Mapping of any axis to any control (Forward, Look, Side, Turn)
7. Support for absolute controls (like joysticks) and relative controls (like trackballs and spinners)

The default joystick setting is for joystick left/right movement to control turning and for joystick forward/backward movement to control moving forward/backward.  To control strafing, assign the 'strafe modifier' to one of your joystick buttons (via the Configuration/Controls menu).  To control joystick looking, assign the  'Joystick look modifier' to one of your joystick buttons (also via the Configuration/Controls menu).  

'Reverse mouse' in the Configuration/Controls/Advanced controls menu also changes the direction the joystick has to move when looking up and down.

The following variables can be set in your joystick.cfg.

These variables control your sensitivity settings:
Command Name	Command Action	Default	NOTES:	
Variable:  Joyforwardsensitivity
Function:  Controls the ramp-up speed or how much joystick movement is required for moving "full speed" forward and backward
Default:  -1.0
Comments:  If your joystick is not as fast as you think it should be try a setting of -1.5, you will reach full speed with only half of the movement.	

Variable:  Joysidesensitivity
Function:  Controls the ramp-up speed or how much joystick movement is required for moving "full speed" side to side
Default:  1.0
Comments:  If your joystick is not as fast as you think it should be try a setting of 1.5, you will reach full speed with only half of the movement.	

Variable:  Joypitchsensitivity
Function:  Controls the speed or ratio used when you look up and down using the Assassin 3D
Default:  -0.25
Comments:  This setting will allow you to look Up and Down at a 45 degree angle without repositioning your hand.	

Variable:  Joyyawsensitivity
Function:  Controls the speed that or ratio used when you look left to right using the Assassin 3D
Default:  -0.5
Comments:  This setting will allow you to look left and right at a 90 degree angle without repositioning your hand.	

You can set the sensitivity settings to negative numbers.  This inverts the direction of movement for the control.  The default sensitivity settings are 1 (or -1). 

These variables control your threshold settings:
Command Name	Command Action	Default	NOTES:	
Variable:  Joyforwardthreshold
Function:  Controls the dead-zone for moving forward and backward
Default:  0.15
Comments:  If you have problems with your character moving forward or back when trying to stop or strafe, increase this number to .20	

Variable:  Joysidethreshold
Function:  Controls the dead-zone for moving side to side
Default:  0.15
Comments:  If you have problems with your character moving left or right when trying to stop or walk a ledge, increase this number to .20

Variable:  Joypitchthreshold
Function:  Controls the dead-zone for looking up and down
Default:  0.15

Variable:  Joyyawthreshold
Function:  Controls the dead-zone for looking left and right
Default:  0.15		

The threshold settings allow you to control your dead-zone (or no-movement zone).  The default threshold settings are .15 (meaning 15% of the full-range).  The range of the threshold settings is from 0 to 1.  Troublesome analog joysticks may need a larger number (like .2).  Premium joysticks can use a smaller number (like .1).

If your joystick has a POV hat, the buttons are mapped to AUX29-AUX32.  So, you get 8 buttons with the Logitech WingMan Extreme, 12 buttons with the Microsoft SideWinder 3D Pro, etc.

These six variables control axis mapping:
Command Name	Command Action	Default	NOTES:	
Variable:  Joyadvaxisx
Function:  Controls mapping of DirectInput axis X (typically joystick left and right)
Default:  3
Comments:  Allows the joystick to turn. 	

Variable:  Joyadvaxisy
Function:  Controls mapping of DirectInput axis Y (typically joystick forward and backward)
Default:  1
Comments:  Allows the joystick to move forward and backward.	

Variable:  Joyadvaxisz
Function:  Controls mapping of DirectInput axis Z (typically joystick throttle)
Default:  0
Comments:  Not used.	

Variable:  Joyadvaxisr
Function:  Controls mapping of DirectInput axis R (typically joystick rudder)
Default:  0
Comments:  Not used.	

Variable:  Joyadvaxisu
Function:  Controls mapping of DirectInput axis U (custom axis - Assassin 3D trackball left and right, WingMan Warrior SpinControl and SpaceOrb roll)
Default:  20
Comments:  Sets the Assassin 3D to relative turning left and right. (Not self centering)	

Variable:  Joyadvaxisv
Function:  Controls mapping of DirectInput axis V (custom axis - Assassin 3D trackball forward and backward and SpaceOrb yaw)
Default:  18
Comments:  Sets the Assassin 3D to relative free-look up and down. (Not self centering)	

Each joyadvaxis variable can be set to the following controls:

	0 = Axis not used
	1 = Axis is for forward and backward movement
	2 = Axis is for looking up and down (pitch)
	3 = Axis is for side to side movement
	4 = Axis is for turning left and right (yaw)

Additionally, each axis can be designated as an absolute axis (like a joystick) or a relative axis (like the FPgaming trackball or the WingMan Warrior SpinControl).  Absolute axes are defined as having a stopping position whereas relative axes don't have a stopping position and just go around and around.  To designate an axis as a relative axis, add 16 to the above control number.  For example, to set the Assassin 3D's axis U to be looking left and right, type 'joyadvaxisu 20'.  As another example, to make your rudder pedals control turning left and right, type 'joyadvaxisr 4'.  It's a bit complicated, but only needs to be done once.

The advanced axes variables will not have any effect until joyadvanced is set to 1.0.  Additionally, any changes to the axes will not take effect until the joyadvancedupdate command is executed.  So, the procedure for creating an advanced mapping is:

1.  Set 'joyadvanced 1'
2.  Make any desired mapping changes
3.  Make any desired sensitivity changes
4.  Make any desired threshold changes
5.  Call 'joyadvancedupdate'

Here is the configuration file for the FPgaming Assassin 3D:
// Revision 1.0 -- refer to www.fpgaming.com for updates
joyname "FPgaming Assassin 3D"
joyadvanced 1
joyadvaxisx 3
joyadvaxisy 1
joyadvaxisz 0
joyadvaxisr 0
joyadvaxisu 20
joyadvaxisv 18
joyforwardsensitivity -1.0
joysidesensitivity 1.0
joypitchsensitivity -0.25
joyyawsensitivity -0.5
joyforwardthreshold 0.15
joysidethreshold 0.15
joyyawthreshold 0.0
joypitchthreshold 0.0
+mlook
joyadvancedupdate

Here is a configuration file for the Logitech WingMan Warrior:
// Revision 0.1 -- refer to www.logitech.com for updates
joyname "Logitech WingMan Warrior"
joyadvanced 1.0
joywwhack1 1.0
joywwhack2 1.0
joyadvaxisx 3
joyadvaxisy 1
joyadvaxisz 0
joyadvaxisr 0
joyadvaxisu 20
joyadvaxisv 0
joyforwardsensitivity -1.0
joysidesensitivity 1.0
joypitchsensitivity 0.0
joyyawsensitivity -0.6
joyforwardthreshold 0.15
joysidethreshold 0.15
joypitchthreshold 0.0
joyyawthreshold 0.0
joyadvancedupdate

Here is a config file for the SpaceTec IMC SpaceOrb:
// Revision 0.1 -- refer to www.spacetec.com for updates
joyname "SpaceTec IMC SpaceOrb"
joyadvanced 1.0
joyadvaxisx 3
joyadvaxisy 1
joyadvaxisz 0
joyadvaxisr 2
joyadvaxisu 0
joyadvaxisv 4
joyforwardsensitivity -1.0
joysidesensitivity 1.0
joypitchsensitivity -0.5
joyyawsensitivity 1
joyforwardthreshold 0.1
joysidethreshold 0.1
joypitchthreshold 0.1
joyyawthreshold 0.1
+mlook
joyadvancedupdate

Here is a config file for making your joystick operate looking around and strafing, your rudder pedals control turning left and right and throttle control moving forward and backward:
joyname "Joystick, Rudder & Throttle"
joyadvanced 1.0
joyadvaxisx 3
joyadvaxisy 2
joyadvaxisz 1
joyadvaxisr 4
joyadvaxisu 0
joyadvaxisv 0
joyforwardsensitivity -1.0
joysidesensitivity -1.0
joypitchsensitivity 1.0
joyyawsensitivity -1.0
joyforwardthreshold 0.15
joysidethreshold 0.15
joyyawthreshold 0.15
joypitchthreshold 0.15
joyadvancedupdate

Two additional values you can set specifically for the Wingman Warrior:
There are two variables which enable special response curves tuned for the Logitech Wingman Warrior joystick.  "joywwhack1" fixes a centering problem.  "joywwhack2" fixes an "out of control" spin problem when using the joystick to turn or look left/right.  See the Wingman Warrior configuration above for an example of how to use these in your joystick.cfg.

IV. 3D HARDWARE ISSUES

Blue Shift has the ability to use both OpenGL and Direct3D.   Many cards with support for 3D acceleration will provide both OpenGL and Direct3D drivers.  Which one is better depends upon the quality and performance of the drivers themselves, and will vary from card to card.

The latest release of DirectX, version 7.0, is included on the Blue Shift CD.  It should be automatically installed as part of the Blue Shift installation process.  If you need to reinstall at a later time, open the DirectX folder on your Blue Shift installation CD and run dxsetup.exe.

Video configuration is set in the Configuration\Video\Video modes menu in Blue Shift.

The following section explains the known driver and compatibility issues for specific chipsets at the time of Blue Shift's shipping.  If you have any questions about which chipset is incorporated in your graphics card, consult the documentation that accompanied your card, or contact the card manufacturer.

3DFX Banshee, Voodoo 1, Voodoo 2, Voodoo 2 SLI

Get the latest drivers from your card manufacturer or get the latest drivers directly from the 3DFX site. Blue Shift ships with the current, tested GL mini-driver. Make sure that you have Glide version 2.54 or above. Blue Shift does not support Direct3D on Voodoo cards.

The Voodoo 2 running in SLI mode on Windows/NT is prone to crashing.   The solution to this instability is to either get an updated driver from 3DFX, disable SLI mode, or run under Windows 95/98.

3DFX Rush

With the current drivers, Blue Shift supports the Voodoo rush in software mode only. Check with 3DFX for an updated driver that offers support for Blue Shift.

NVIDIA Riva 128

You must have Windows 95 OSR 2 or later, Windows 98 or Windows NT. As of shipping, Blue Shift Riva 128 OpenGL support requires the latest reference driver from NVIDIA. Get this driver off of their site, www.nvidia.com.  Direct3D support is currently unavailable. Contact NVIDIA for a Direct3D driver that supports Blue Shift.

NVIDIA TNT

Blue Shift supports the TNT in software, OpenGL and Direct3D modes. Get the latest driver off of NVIDIA's site.

Matrox G200

Blue Shift supports the G200 in software and Direct3D. Get the latest driver from Matrox's site, www.matrox.com. Matrox will also be providing a GL mini-driver that will support OpenGL in Blue Shift. Check with Matrox for details.

S3 Virge

Blue Shift supports the Virge in software mode only.

S3 Savage

Blue Shift support the Savage in software and Direct3D. You can get the latest drivers from S3's site, www.s3.com. S3 will also be providing a GL driver that will support Blue Shift. Check with S3 for details.

General Issues:

Missing Decals (i.e. Bullet holes)
Blue Shift uses a feature of OpenGL and Direct3D that some video card drivers do not support correctly.  To over ride the default settings for this feature, put this line in your opengl.cfg or d3d.cfg file:

 	gl_polyoffset 0.1

If this doesn't work, try -0.1, 1 or 20. This tells the driver how far to offset the decal from the surface of the polygon that the decal is being applied to.

Direct3D or OpenGL are running very slow
On some cards that don't fully support Direct3D or OpenGL, Blue Shift will fall back to a software emulation mode. These modes are very slow. If your Direct3D support is slow, try selecting OpenGL, and vice versa.  If neither work, change your settings to use Blue Shift' software video modes instead and the speed will improve.

Direct3D Input seems lagged.
If your input seems to lag behind the visual display on occasion, add this line to your d3d.cfg file:

	gl_d3dflip 1

Parts of the screen are flashing (in Direct3D or OpenGL)
Some older, non-3DFX cards have a problem with clearing the z buffer and this can cause parts of the screen to flash. If you are seeing this, put this line in your opengl.cfg or d3d.cfg file:

 	gl_ztrick 0

Network instability
If you have a connection to the Internet that is unstable, or prone to packet loss, try typing 'cl_nodelta 1' at the console (bring down the console with the ~ key).  This will improve your overall network stability, but will sacrifice your overall latency.

COMMON QUESTIONS
What can I do if the game is too dark?.
Some monitors are darker than others, but Blue Shift provides controls to correct this problem. You will need to adjust the Gamma and Glare Reduction settings in the Configuration\Video\Video options menu in Blue Shift. These are used to adjust for different kinds of monitors and room brightness. Adjust the two sliders so that the Soldiers camouflage pattern is dark but visible.  If this still doesn't work, you then may need to adjust the actual brightness and contrast of your monitor.  This is usually done by adjusting buttons or knobs on the front of your monitor, but all monitors are a bit different so you may want to look through your monitors documentation to be sure.  Some places in the game are intentionally dark, and you'll need to use your flashlight, but you should be able to see everything without difficulty in the opening train ride and throughout the first part of the game.  Some graphics cards also have support for controlling how bright the display is.  If your card's device driver supports this, you can find it by going to the Windows control panel, and selecting the Display applet.

What can I do if the game looks washed out?
The most likely cause is that your monitor is slightly brighter than average and the default game settings are for a darker monitor. You will need to adjust the Gamma and Glare Reduction settings in the Configuration\Video\Video options menu in Blue Shift. These are used to adjust for different kinds of monitors and room brightness. Adjust the two sliders so that the Soldiers camouflage pattern is dark but visible.  If this still doesn't work, you then may need to adjust the actual brightness and contrast of your monitor.  This is usually done by adjusting buttons or knobs on the front of your monitor, but all monitors are a bit different so you may want to look through your monitors documentation to be sure.  The most common problem, especially on new computers, is that "black" isn't showing up as black, but more of a dark gray.  Turn the Contrast down until the border around the edges of the picture are totally black, then slowly turn it back up until it just before it starts getting visibly lighter.  You may need to adjust your monitors Brightness back up after you do this. .  Some graphics cards also have support for controlling how bright the display is.  If your card's device driver supports this, you can find it by going to the Windows control panel, and selecting the Display applet.


IV.CONTACTING SIERRA
=======================
A) Customer Service, Support, and Sales
B) Technical Support
C) Legal Information


A) Customer Service, Support, and Sales
----------------------------------
United States	

U.S.A. Sales Phone: (800) 757-7707
International Sales:  (425) 746-5771 
Hours: Monday-Saturday 7AM to 11 PM CST,
Sundays 8 AM to 9PM CST 
FAX: (402) 393-3224	
	
Sierra Direct				
7100 W. Center Rd			
STE 301				
Omaha, NE  68106			

United Kingdom

Vivendi Universal Interactive Publishing UK Ltd.  	
Main: (0118) 920-9111
Monday-Friday, 9:00 a.m. - 5:00 p.m.
Fax:   (0118) 987-5603
Disk/CD replacements in the U.K. are £6.00,
or £7.00 outside the UK. Add "ATTN.: Returns."

2 Beacontree Plaza,			
Gillette Way,				
Reading, Berkshire			
RG2 0BS United Kingdom		

France

Vivendi Universal Interactive Publishing France 
32, Av de l'Europe 
Bât Energy 1 (2e étage) 
78 140 VELIZY
France

Téléphone: 01-30-67-90-50
Lundi au Jeudi de 10h à 19h
Vendredi de 10h à 18h
Fax: 01 30 67 90 65


Germany

Vivendi Universal Interactive Publishing Deutschland Gmbh. 	
Tel: 018050 / 7743530
Montag - Freitag von 8.30 Uhr - 22.00 Uhr
sowie Sa. von 9.30 Uhr - 19.00 Uhr
Fax: 018050 / 32936

Direktservice
Paul-Ehrlich Straße 1a
D-63325 Langen		
Deutschland	


On-Line Sales
Internet USA:		  http://www.sierra.com
Internet United Kingdom:  http://www.sierra-online.co.uk
Internet France:  	  http://www.sierra.fr
Internet Germany:	  http://www.sierra.de
	
Disk and Manual Replacement :
Please refer to the Technical Support Policy.


B) TECHNICAL SUPPORT
-------------------------
North America

Sierra On-Line offers a 24-hour automated technical support line with recorded answers to the most frequently asked technical questions. To access this service, call (425) 644-4343, and follow the recorded instructions to find your specific topic and resolve the issue. If this fails to solve your problem, you may still write, or fax us with your questions, or contact us via our Web site.

Sierra On-Line				
Technical Support
P.O. Box 85006			
Bellevue, WA 98015-8506	

Main: (425) 644-4343
Monday-Friday, 8:00 a.m.- 4:45 p.m.  PST 
Fax:   (425) 644-7697

http://www.sierra.com
support@sierra.com


United Kingdom

Vivendi Universal Interactive Publishing UK Ltd. offers a 24-hour Automated Technical Support line with recorded answers to the most frequently asked technical questions. To access this service, call (0118) 920-9111, and follow the recorded instructions to find your specific topic and resolve the issue. If this fails to solve your problem, you may still write, or fax us with your questions, or contact us via our Internet or CompuServe sites.

Vivendi Universal Interactive Publishing UK Ltd. 	
2 Beacontree Plaza,			
Gillette Way,				
Reading, Berkshire			
RG2 0BS United Kingdom	

Main: (0118) 920-9111
Monday-Friday, 9:00 a.m. - 5:00 p.m.
Fax:   (0118) 987-5603

http://www.sierra-online.co.uk


France

Vivendi Universal Interactive Publishing France 
32, Av de l'Europe 
Bât Energy 1 (2e étage) 
78 140 VELIZY
France

Téléphone: 01-30-67-90-50
Lundi au Jeudi de 10h à 19h
Vendredi de 10h à 18h
Fax: 01 30 67 90 65

http://www.sierra.fr


Germany

Vivendi Universal Interactive Publishing Deutschland Gmbh. 
Technischer Kundendienst
Paul-Ehrlich Straße 1a
D-63325 Langen		
Deutschland				

Tel: (0) 6103-99-40-940
Montag bis Freitag von 10 - 19Uhr
Fax: (0) 6103-99-40-35
Mailbox: (0) 6103-99-40-35

http://www.sierra.de


Spain
Vivendi Universal Interactive Publishing Espana 
C/ Nuestra Señora de Valverde, 23 
28034 MADRID
España (Spain)


Teléfono: (91) 735-3437
Lunes a Viernes de 9:30 a 15:00 y de 16:00 a 18:30
Fax: (91) 735-2730
Soporte@havasinteractive.es
www.havasinteractive.es


Italy

Contattare il vostro distribotore.	


C) Sierra Warranty & Legal Information
-----------------------------------
Sierra's end user license agreement, limited warranty and return policy is set forth in the EULA.txt, found on the CD, and is also available during the install of the product.

Copyright (1999 Sierra On-Line, Inc.)























































































