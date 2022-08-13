Half-Life: Counter-Strike
Version 1.0.0.3
Readme File
9/24/01

***********************************************************************
About This Document:

Thank you for purchasing Half Life: Counter-Strike. 

This document contains last-minute information about Half Life: Counter-Strike and other information about the program not found in the Help Files.  This README file includes information that pertains to general problems and questions you may have concerning this software or your computer. Should you experience any problems with Half Life: Counter-Strike, please refer to this file for additional help on answering questions about the game and solving technical difficulties.

***********************************************************************

TABLE OF CONTENTS

I.	HOW TO ACTIVATE CUSTOM GAMES (MODS)
II.	MINIMUM REQUIREMENTS
III.	GENERAL TECHNICAL ISSUES
IV.	GENERAL GAME ISSUES


I.  HOW TO ACTIVATE CUSTOM GAMES (MODS)
---------------------------------------
Half-Life: Counter-Strike gives you the option to install up to seven custom games.  
To activate these games from within Half-Life: Counter-Strike: 
    1.  Press the CUSTOM GAME button from the main menu.  
    2.  Select the game you want to play from the list.
    3.  Press the ACTIVATE button. You should see the launcher graphics change to reflect the custom game you are currently playing.
    4.  Press DONE to go back to main menu.

II. MINIMUM REQUIREMENTS
------------------------
Windows 2000, Windows 98, Windows Millennium, Windows XP or Windows NT 4.0 
Pentium II 400 Mhz, 64 MB RAM
Radeon 8500
4x CD-ROM drive
Windows-compatible sound card
Mouse, keyboard
32-bit Internet service provider with 28.8+ modem or LAN 

III. GENERAL TECHNICAL ISSUES
----------------------------

DRIVER ISSUES

Make sure the most current version of DirectX is installed on your computer. DirectX 8 is the most current version and it is included on the Half-Life: Counter-Strike CD in the 'CSTRIKE\DirectX' folder. 

If you are running a pre-OSR2 release of Windows95, get the OpenGL 1.1 fix in order to run Half-Life: Counter-Strike in OpenGL mode.  The fix can be found at ftp://ftp.microsoft.com/softlib/mslfiles/opengl95.exe

Make sure you have installed the most recent drivers for all your hardware before playing Half-Life: Counter-Strike.

There is only one CD-Key allowed per client for Internet play.  If you are getting a "CD-Key in use error" make sure that there are no other clients connected to any game server using your CD-Key.


IV. GENERAL GAME ISSUES
------------------------

SOUND PROBLEMS
If you don't hear any sounds while playing Half-Life or if you only hear music, another application you are running may have control of the sound hardware.  Exit Half-Life, close the other application, and restart Half-Life.

A3D 1.0 versus 2.0
Half-Life requires version 2.0 of A3D.  You can upgrade your A3D from 1.0 to 2.0 by downloading the latest drivers from Aureal's website at www.a3d.com.  If you try to enable A3D support in Half-Life without upgrading to 2.0, you will get an error message when starting Half-Life.


"YOUR Counter-Strike EXECUTABLE HAS BEEN MODIFIED.  PLEASE CHECK YOUR SYSTEM FOR VIRUSES AND THEN RE-INSTALL HALF-LIFE." ERROR MESSAGE
As soon as you run Half-Life: Counter-Strike ( or the Half-Life dedicated server -- HLDS.exe ), Half-Life: Counter-Strike checks itself to determine if the Half-Life: Counter-Strike executable you are running has been damaged or altered in any way.  The most likely causes of such damage are 1) computer viruses and 2) corrupt portions of a user's hard disk drive.  The section entitled "YOUR Counter-Strike INSTALLATION HAS BECOME CORRUPT OR OUT OF DATE" ERROR MESSAGE provides instructions on how to proceed.

"YOUR Counter-Strike INSTALLATION HAS BECOME CORRUPT OR OUT OF DATE" ERROR MESSAGE
One cause for this error message is computer viruses.  If your system has a virus, the virus will modify cstrike.exe as well as any other programs you run.  When you try to play a multiplayer game, this modification will be detected and your system won't be authenticated.  Upgrading to the latest version of Half-Life: Counter-Strike won't solve the problem, as the virus will infect that version as well.  The work around is simple - download an appropriate virus scanner, remove the virus from your system using the virus scanner, uninstall and then reinstall Half-Life: Counter-Strike.  The reason you must uninstall and reinstall Half-Life: Counter-Strike is because many virus scanner programs, while capable of fixing damaged executables, must modify the executable in order to work.  Thus, though the virus scanner has "cleaned" the Half-Life: Counter-Strike executable, Half-Life: Counter-Strike will detect the changes and refuse to authenticate the executable. By far the most common virus that our users have encountered has been the CIH virus, and unfortunately some antivirus programs don't currently detect this virus. We recommend Norton AntiVirus which is available on Symantec's website at www.symantec.com. We also suggest updating to the latest version.

SETTING UP A LISTEN SERVER IN THE LAUNCHER OR THE CONSOLE
If you are setting up your listen server variables in the launcher then all settings are stored in a file called 'game.cfg' which is located in the 'cstrike' directory of your installation.  If you would like to modify settings at the console, you must either edit this file directly using notepad, or delete this file and modify all server settings at the console.


USING KEYBOARD SHORTCUTS
Hotkeys can be activated by using the ALT key in combination with the highlighted letter. For example, you can use ALT+R to perform a 'Refresh' within the Multiplayer/Internet Games menu.  

JUMP KEY NOT ALLOWING YOU TO SWIM UP
If you are having trouble swimming up when you are standing on the ground underwater, try setting fps_max to a number less than it is currently set to at the console.

PLAYING ON THE SAME MACHINE AS A DEDICATED SERVER
If you are going to be playing Half-Life: Counter-Strike multiplayer on the same machine that you are running a dedicated server on, make sure you not using the same port for both.  Run the Half-Life client with -port 27016 (or any other port not in use) in the target line of the shortcut.

DESKTOP RESOLUTION AND HALF-LIFE
Half-Life: Counter-Strike should be run in a resolution that is lower than or equal to your desktop resolution.  Running Half-Life: Counter-Strike in a full-screen or windowed mode that is greater than your desktop resolution can cause problems.

SOUND QUALITY PROBLEMS
If your sound is skipping or cracking, you may need to adjust your direct sound configuration in Half-Life: Counter-Strike.  There are two common adjustments you can make:

1) Adjust _snd_mixahead.  If you have access to the Half-Life console, type "_snd_mixahead 0.2" at the console.  If not, create a file with notepad that contains the line:
_snd_mixahead 0.2
And save it in your Counter-Strike\cstrike\ directory.  Name the file "autoexec.cfg".

2) Disable direct sound.  Run Half-Life: Counter-Strike with the command line argument "-wavonly".  Edit the Half-Life: Counter-Strike shortcut.  The 'target' field should say: "CSTRIKE.EXE -wavonly".


Valve thanks James Barnes at First-Person Gaming, Inc. for permission to use his excellent documentation on joystick support.  Information on their products are available on the Internet at http://www.fpgaming.com/.

Half-Life supports standard joysticks, digital joysticks and advanced controllers like the FPgaming Assassin 3D, the Logitech WingMan Warrior and the SpaceTec IMC SpaceOrb.

To enable Half-Life joystick support, verify that your joystick or game controller is selected in the Joystick control panel applet and has been calibrated and tested, then launch Half-Life. Check the joystick box in the Configuration/Controls/Advanced controls menu of Half-Life.

For advanced controllers, you will also need to have a configuration file called joystick.cfg.  Typically this configuration file should be obtained from your game controller company.  However you can create your own and place this file in the Valve subdirectory of your Half-Life directory.  Half-Life will automatically execute this configuration file each time you start the game. 

The configuration files for common game controllers are included below.

Half-Life: Counter-Strike Joystick functionality

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

COMMON QUESTIONS

What can I do if the game is too dark?.
Some monitors are darker than others, but Half-Life: Counter-Strike provides controls to correct this problem. You will need to adjust the Gamma and Glare Reduction settings in the Configuration\Video\Video options menu in Half-Life: Counter-Strike. These are used to adjust for different kinds of monitors and room brightness. Adjust the two sliders so that the Soldiers camouflage pattern is dark but visible.  If this still doesn't work, you then may need to adjust the actual brightness and contrast of your monitor.  This is usually done by adjusting buttons or knobs on the front of your monitor, but all monitors are a bit different so you may want to look through your monitors documentation to be sure.  Some places in the game are intentionally dark, and you'll need to use your flashlight, but you should be able to see everything without difficulty in the opening train ride and throughout the first part of the game.  Some graphics cards also have support for controlling how bright the display is.  If your card's device driver supports this, you can find it by going to the Windows control panel, and selecting the Display applet.

What can I do if the game looks washed out?
The most likely cause is that your monitor is slightly brighter than average and the default game settings are for a darker monitor. You will need to adjust the Gamma and Glare Reduction settings in the Configuration\Video\Video options menu in Half-Life: Counter-Strike. These are used to adjust for different kinds of monitors and room brightness. Adjust the two sliders so that the Soldiers camouflage pattern is dark but visible.  If this still doesn't work, you then may need to adjust the actual brightness and contrast of your monitor.  This is usually done by adjusting buttons or knobs on the front of your monitor, but all monitors are a bit different so you may want to look through your monitors documentation to be sure.  The most common problem, especially on new computers, is that "black" isn't showing up as black, but more of a dark gray.  Turn the Contrast down until the border around the edges of the picture are totally black, then slowly turn it back up until it just before it starts getting visibly lighter.  You may need to adjust your monitors Brightness back up after you do this. .  Some graphics cards also have support for controlling how bright the display is.  If your card's device driver supports this, you can find it by going to the Windows control panel, and selecting the Display applet.


