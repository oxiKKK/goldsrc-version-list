Half-Life
Version 1.1.1.1
Readme File
12/2/02

********************************************************************
About This Document: 

This document contains last-minute information about Half-Life, including questions you may have concerning the game or your computer. If you have a question, check to see if it is addressed here first: you may save yourself a call to Technical Support. 
********************************************************************

I.	MINIMUM REQUIREMENTS
II.	GENERAL TECHNICAL ISSUES
III.	GENERAL GAME ISSUES
IV.	3D HARDWARE ISSUES
V.	CONTACTING SIERRA

I. MINIMUM REQUIREMENTS
Windows(r) 95, Windows 98 or Windows NT 4.0
Pentium 133+, 24 MB RAM
SVGA, high color (16-bit)
2x CD-ROM drive
Windows-compatible sound card
Mouse, keyboard

II. GENERAL TECHNICAL ISSUES

DRIVER ISSUES

If you are using a nVidia based GeForce video card, download the latest reference drivers from www.nvidia.com.  This will fix the problem with models showing up as all white.

When running Half-Life in OpenGL, you must select '3Dfx Mini Driver' from the drivers list in the Video Options menu if you have a 3Dfx card (Voodoo, Voodoo2, Rush or Banshee).  Choosing the 'Default' driver may severely impact Half-Life's performance.

The Diamond Viper 550 drivers older than 4/2/99 cause the game menus to be drawn incorrectly. Use the drivers from the Nvidia home page (http://www.nvidia.com) dated 2/17/99 or later.

Make sure the most current version of DirectX is installed on your computer. DirectX 6 is the most current version (as of 10/31/98), and it is included on the Half-Life CD in the 'DirectX' folder. 

If you are running a pre-OSR2 release of Windows95, get the OpenGL 1.1 fix in order to run Half-Life in OpenGL mode.  The fix can be found at ftp://ftp.microsoft.com/softlib/mslfiles/opengl95.exe

Make sure you have installed the most recent drivers for all your hardware before playing Half-Life.

There is only one CD-Key allowed per client for Internet play.  If you are getting a "CD-Key in use error" make sure that there are no other clients connected to any game server using your CD-Key.

III. GENERAL GAME ISSUES

LAN HEARTBEATS
By default, the Half-Life game engine now reports the current status of IP LAN (e.g., sv_lan 1 or unable to authenticate) games to the master servers.  This reporting is for general statistical information to Valve only and these IP LAN servers will not be visible to Internet players.  If you would like to opt out of having your IP lan server report to the master servers, you must run the engine or dedicated server with the "-nomaster" command line option.

CUSTOM RESOURCE DOWNLOADING
Something that has always limited the propagation of custom maps has been the lack of support for custom map resources.  Running a custom map that has it's own .wad file, custom sprites, or precached sounds has been something of a burden to server operators. So, we've added a new feature/function to help simplify the process.

For this example let's assume we have a Team Fortress map called "mymap.bsp".  This map uses a few different custom resources.  It has it's own .wad file called "mytextures.wad", a new model called "mymodel.mdl", and a new sprite called "mysprite.spr".  As a server operator you will need to go through these steps to allow these resources to be downloaded:

	1.  Create a file called "mymap.res" and place it into the \tfc\maps directory.  The .res file must be the same as the .bsp name.
	2.  Add the resource names relative to the game directory in this file.  The file should look like this:
		mywad.wad
		models\mymodel.mdl
		sprites\mysprite.spr
	3.  Run your server with sv_allowdownload set to 1.

When a client connects they will start downloading these files.  The client's download speed/bandwidth is throttled according to their rate.  This will not replace any files that are currently on the client's machine.

There are seven valid file types for this:
	Maps (.bsp)
	Textures (.wad)
	Models (.mdl)
	Sprites (.spr)
	Bitmaps (.bmp)
	Sound files (.wav)
	Targas (.tga)

TEAM FORTRESS
For information on playing Team Fortress, refer to the Team Fortress manual located at \half-life\tfc\manual\tfccontents.htm.

SOUND PROBLEMS
If you don't hear any sounds while playing Half-Life or if you only hear music, another application you are running may have control of the sound hardware.  Exit Half-Life, close the other application, and restart Half-Life.

A3D 1.0 versus 2.0
Half-Life requires version 2.0 of A3D.  You can upgrade your A3D from 1.0 to 2.0 by downloading the latest drivers from Aureal's website at www.a3d.com.  If you try to enable A3D support in Half-Life without upgrading to 2.0, you will get an error message when starting Half-Life.

CAN'T HEAR CD MUSIC
If you don't hear any music while playing Half-Life, the problem is likely to have one of three causes:

1) The Half-Life CD needs to be in the first CD-ROM drive (only an issue if you have more than one CD-ROM drive).
2) Another application is actively using the CD Audio when Half-Life starts up.
3) CD Audio isn't enabled for the CD-ROM drive.

To fix the first problem, make sure the Half-Life CD is in your first CD-ROM drive.  To fix the second, close other applications which may be accessing your CD-ROM drive, such as CD music players.  If you still can't hear the Half-Life music, run the application "CD Player" that comes standard with Windows located on your Start Menu Programs,  Accessories, Multimedia.  If the CD Player doesn't play the music tracks on the Half-Life CD, then check Control Panel, Multimedia, CD Music, CD ROM Selection, and make sure it's set to your first CD-ROM drive.  If you're under NT, you may also want to check Control Panel, Devices, Cdaudio, and make sure it's not disabled.  Once the first two requirements are met, and the "CD Player" application works, then Half-Life should be able to play the CD music without any problems.

"YOUR HALF-LIFE EXECUTABLE HAS BEEN MODIFIED.  PLEASE CHECK YOUR SYSTEM FOR VIRUSES AND THEN RE-INSTALL HALF-LIFE." ERROR MESSAGE
As soon as you run Half-Life ( or the Half-Life dedicated server -- HLDS.exe ), Half-Life checks itself to determine if the Half-Life executable you are running has been damaged or altered in any way.  The most likely causes of such damage are 1) computer viruses and 2) corrupt portions of a user's hard disk drive.  The section entitled "YOUR HALF-LIFE INSTALLATION HAS BECOME CORRUPT OR OUT OF DATE" ERROR MESSAGE provides instructions on how to proceed.

"YOUR HALF-LIFE INSTALLATION HAS BECOME CORRUPT OR OUT OF DATE" ERROR MESSAGE
One cause for this error message is computer viruses.  If your system has a virus, the virus will modify hl.exe as well as any other programs you run.  When you try to play a multiplayer game, this modification will be detected and your system won't be authenticated.  Upgrading to the latest version of Half-Life won't solve the problem, as the virus will infect that version as well.  The work around is simple - download an appropriate virus scanner, remove the virus from your system using the virus scanner, uninstall and then reinstall Half-Life.  The reason you must uninstall and reinstall Half-Life is because many virus scanner programs, while capable of fixing damaged executables, must modify the executable in order to work.  Thus, though the virus scanner has "cleaned" the Half-Life executable, Half-Life will detect the changes and refuse to authenticate the executable. By far the most common virus that our users have encountered has been the CIH virus, and unfortunately some antivirus programs don't currently detect this virus. We recommend Norton AntiVirus which is available on Symantec's website at www.symantec.com. We also suggest updating to the latest version.

SETTING UP A LISTEN SERVER IN THE LAUNCHER OR THE CONSOLE
If you are setting up your listen server variables in the launcher then all settings are stored in a file called 'game.cfg' which is located in the 'valve' directory of your installation.  If you would like to modify settings at the console, you must either edit this file directly using notepad, or delete this file and modify all server settings at the console.

SWITCHING BETWEEN OPENGL AND D3D ON THE NVIDIA TNT
If you run OpenGL on the nVidia Riva TNT and switch to Direct3D, decals may not appear.  To fix this, type gl_polyoffset 4 at the console.

USING KEYBOARD SHORTCUTS
Hotkeys can be activated by using the ALT key in combination with the highlighted letter. For example, you can use ALT+R to perform a 'Refresh' within the Multiplayer/Internet Games menu.  

JUMP KEY NOT ALLOWING YOU TO SWIM UP
If you are having trouble swimming up when you are standing on the ground underwater, try setting fps_lan to a number less than it is currently set to at the console.

CD MUSIC VOLUME
You cannot control the CD music volume within Half-Life. To adjust your CD music volume, go to the Windows Start Menu, Programs, Accessories, Multimedia, and select the Volume Control applet. 

CD AUDIO SLOWDOWNS
Some CD-ROM drives take a few seconds to spin up to their playing speed.  You may notice some parts of the game that will momentarily slow down before the CD audio will play.

PLAYING ON THE SAME MACHINE AS A DEDICATED SERVER
If you are going to be playing Half-Life multiplayer on the same machine that you are running a dedicated server on, make sure you not using the same port for both.  Run the Half-Life client with -port 27016 (or any other port not in use) in the target line of the shortcut.

VIEW OPENING AVI SEQUENCES
Half-Life begins with two short AVI sequences.  If you are having trouble viewing the AVIs, check to see that you have video compression installed. Go to the Control Panel and select Add/Remove programs.  From there, select Windows Setup and scroll down to Multimedia.  Select Multimedia and make sure that Video Compression is checked. 

CUSTOM KEYBOARD CONFIGURATION
If you plan to customize your keyboard configuration, note that the 'jump' and 'crouch' commands need to be controlled by different fingers. You will need to use both keys simultaneously when performing a 'longjump.'

DESKTOP RESOLUTION AND HALF-LIFE
Half-Life should be run in a resolution that is lower than or equal to your desktop resolution.  Running Half-Life in a full-screen or windowed mode that is greater than your desktop resolution can cause problems.

SOUND QUALITY PROBLEMS
If your sound is skipping or cracking, you may need to adjust your direct sound configuration in Half-Life.  There are two common adjustments you can make:

1) Adjust _snd_mixahead.  If you have access to the Half-Life console, type "_snd_mixahead 0.2" at the console.  If not, create a file with notepad that contains the line:
_snd_mixahead 0.2
And save it in your Half-Life\Valve\ directory.  Name the file "autoexec.cfg".

2) Disable direct sound.  Run Half-Life with the command line argument "-wavonly".  Edit the Half-Life shortcut.  The 'target' field should say: "HL.EXE -wavonly".

GETTING STUCK ON LADDERS IN MULTIPLAYER
If you are getting stuck on the tops of ladders in a multiplayer game, make sure that the server you are running on does not have the variable sv_airaccelerate set to zero.  Any value other than zero will work properly.

MULTIPLAYER FRAMERATE ISSUE
If you are experiencing low framerate in long multiplayer games, it may be caused by too many decals.  Decals are used to display spray paint, bulletholes, and blood effects in multiplayer.  You can adjust the console variable "r_decals" to set a lower limit.  The default value is 4096.  For better performance, try setting "r_decals 500".  Bring down the console (using the ~ key) and type "r_decals 500".  You can set r_decals to any value between 0 (completely disables these effects) and 4096 (normal value for single player).

TURNING OFF DATA COMPRESSION
When playing Half-Life online turning off data compression can significantly improve your latency.  To turn off data compression go to your dial up connection in the Dial-Up networking area of your computer.  Right click on your dial up connection and go to 'Properties', click on the Server Types tab at the top and uncheck the software compression box.

NEW COMMAND LINE SWITCHES IN THIS UPDATE
"-w #"   sets the video mode width where # is the width in pixels of desired video mode.

"-d3d"  selects the Direct3D engine
"-soft"  selects the Software engine
"-gl"     selects the OpenGL engine
"-gldrv <driver name> " selects the GL Driver. The two choices are "Default" and "3dfxgl.dll". 

"-win"  selects windowed mode
"-full"   selects full screen mode

"-gamegauge <demo name>" runs the demo in Game Gauge mode. This is a benchmark utility that runs through a demo as fast as possible and stores the framerate in the file fps.txt in the Half-Life directory.

JOYSTICK AND GAMEPAD CONFIGURATION
Enable use of joysticks or gamepads by checking the joystick box in the Configuration/Controls/Advanced controls menu. Joystick and gamepad buttons can then be configured through the Configuration/Controls menu.

Valve thanks James Barnes at First-Person Gaming, Inc. for permission to use his excellent documentation on joystick support.  Information on their products are available on the Internet at http://www.fpgaming.com/.

Half-Life supports standard joysticks, digital joysticks and advanced controllers like the FPgaming Assassin 3D, the Logitech WingMan Warrior and the SpaceTec IMC SpaceOrb.

To enable Half-Life joystick support, verify that your joystick or game controller is selected in the Joystick control panel applet and has been calibrated and tested, then launch Half-Life. Check the joystick box in the Configuration/Controls/Advanced controls menu of Half-Life.

For advanced controllers, you will also need to have a configuration file called joystick.cfg.  Typically this configuration file should be obtained from your game controller company.  However you can create your own and place this file in the Valve subdirectory of your Half-Life directory.  Half-Life will automatically execute this configuration file each time you start the game. 

The configuration files for common game controllers are included below.

Half-Life Joystick functionality

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

CONSOLE COMMANDS AND CONTROLS
For a complete listing of Half-Life's console commands, visit http://pcgame.com/randy/console.htm

TEAM PLAY
Starting a teamplay game:
- Listen server: Start Half-Life. Select the options Multiplayer->Lan Game->Create Game->Advanced Options and select the 'Team Play' check box. Hit Done then Start Game.
- Dedicated server: in the valve/autoexec.cfg add the line: mp_teamplay 1 then whenever you start the server it will be in teamplay mode.
Joining a teamplay game:
In the server browser, you can see teamplay games are called "HL Teamplay".  Select one of these and hit Join Game'
Playing a teamplay game:
Holding down the TAB key will show you the teams.  Teams are assigned
according to the player model you are using.  To change teams,
hit ESCAPE to go back to the launcher, then select the Customize option and change your model to the team you wish to be on.

CREATE A CUSTOM DECAL

Making a custom decal is a simple process.  All you need is an image, and a paint program capable of simple palette manipulation and image scaling.  Paint Shop Pro is ideal, and is available as shareware from http://www.jasc.com.  The steps for creating a decal are: 1.  Paint or scan an image.  Make it 64 by 64 pixels in size, either by painting the image to that size, or by scaling your scanned image (or larger painted image.) ). Painting in black and white is recommended, because the final decal will be displayed as one color only.  You can choose the color of your decal and you can change that color at any time
between games using the game interface.  Save your source decal as a black and white image, however.

2.  Use your paint program to make the image a "grayscale" image:  that is, the palette (the colors that the image uses) should be a ramp from white to black.  If you are painting the image yourself using Paint Shop Pro, Photoshop, or some similar program, you can specify that you want the image to be grayscale before you start.  With the palette going from black to white, any white in the image will be totally opaque, and any black in the image will be totally transparent (invisible).  Any gray in the image will be translucent: very translucent if it is near-black, and close to opaque if it is near white.  Some applications will ramp the palette from black to white when you select "grayscale."  That is, if you look at the color palette, the first color (usually the upper left-hand corner color) will be black, and the last color (usually the lower right-hand corner color) will be white.  In this case, you want to invert your image, such that the black portions of your image are the parts that will be opaque, and the white portions are the parts that will be transparent.  Be sure you check what the palette looks like after you save your file, and adjust it if necessary. Think of it this way: if your decal looks like a chalk drawing on a blackboard, you want the first color in your palette to be black (which will come through as completely transparent), ramping to the last color which is white (which will come through as opaque).  If your drawing looks like a pen drawing on white paper, the first color should be white, ramping to the last color which should be black.

3.  Save this image in your half-life\logos directory as a Windows bitmap (.bmp) file, and it will automatically show up in the list of decals you see in the launcher interface.  There you can choose the decal's color. Changing the color of your decal during a game will not take effect for that game.  Only after you restart your game will the new color appear.

If you would like to view pre-made decals, several are shipped with Half-Life and can be found in the Half-Life\logos directory.  These will give you a good idea about the file format and appearance of a decal, before it appears in the game.

IV. 3D HARDWARE ISSUES

Half-Life has the ability to use both OpenGL and Direct3D.   Many cards with support for 3D acceleration will provide both OpenGL and Direct3D drivers.  Which one is better depends upon the quality and performance of the drivers themselves, and will vary from card to card.

The latest release of DirectX, version 6.0, is included on the Half-Life CD.  It should be automatically installed as part of the Half-Life installation process.  If you need to reinstall at a later time, open the DirectX folder on your Half-Life installation CD and run dxsetup.exe.

In general, make sure you have the latest versions of the device drivers for your display hardware.  Most graphics card vendors make them freely available on the Internet, and a collection of links to sites of many popular cards is installed on your hard drive along with Half-Life.  The default location for this file is:

	C:\SIERRA\Half-Life\media\DrvPage\default.htm

Video configuration is set in the Configuration\Video\Video modes menu in Half-Life.

The following section explains the known driver and compatibility issues for specific chipsets at the time of Half-Life's shipping.  If you have any questions about which chipset is incorporated in your graphics card, consult the documentation that accompanied your card, or contact the card manufacturer.

3DFX Banshee, Voodoo 1, Voodoo 2, Voodoo 2 SLI

Get the latest drivers from your card manufacturer or get the latest drivers directly from the 3DFX site. Half-Life ships with the current, tested GL mini-driver. Make sure that you have Glide version 2.54 or above. Half-Life does not support Direct3D on Voodoo cards.

The Voodoo 2 running in SLI mode on Windows/NT is prone to crashing.   The solution to this instability is to either get an updated driver from 3DFX, disable SLI mode, or run under Windows 95/98.

3DFX Rush

With the current drivers, Half-Life supports the Voodoo rush in software mode only. Check with 3DFX for an updated driver that offers support for Half-Life

NVIDIA Riva 128

You must have Windows 95 OSR 2 or later, Windows 98 or Windows NT. As of shipping, Half-Life Riva 128 OpenGL support requires the latest reference driver from NVIDIA. Get this driver off of their site, www.nvidia.com.  Direct3D support is currently unavailable. Contact NVIDIA for a Direct3D driver that supports Half-Life.

NVIDIA TNT

Half-Life supports the TNT in software, OpenGL and Direct3D modes. Get the latest driver off of NVIDIA's site.

Matrox G200

Half-Life supports the G200 in software and Direct3D. Get the latest driver from Matrox's site, www.matrox.com. Matrox will also be providing a GL mini-driver that will support OpenGL in Half-Life. Check with Matrox for details.

S3 Virge

Half-Life supports the Virge in software mode only.

S3 Savage

Half-Life support the Savage in software and Direct3D. You can get the latest drivers from S3's site, www.s3.com. S3 will also be providing a GL driver that will support Half-Life. Check with S3 for details.

General Issues:

Missing Decals (i.e. Bullet holes)
Half-Life uses a feature of OpenGL and Direct3D that some video card drivers do not support correctly.  To over ride the default settings for this feature, put this line in your opengl.cfg or d3d.cfg file:

 	gl_polyoffset 0.1

If this doesn't work, try -0.1, 1 or 20. This tells the driver how far to offset the decal from the surface of the polygon that the decal is being applied to.

Direct3D or OpenGL are running very slow
On some cards that don't fully support Direct3D or OpenGL, Half-Life will fall back to a software emulation mode. These modes are very slow. If your Direct3D support is slow, try selecting OpenGL, and vice versa.  If neither work, change your settings to use Half-Life's software video modes instead and the speed will improve.

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
Some monitors are darker than others, but Half-Life provides controls to correct this problem. You will need to adjust the Gamma and Glare Reduction settings in the Configuration\Video\Video options menu in Half-Life. These are used to adjust for different kinds of monitors and room brightness. Adjust the two sliders so that the Soldiers camouflage pattern is dark but visible.  If this still doesn't work, you then may need to adjust the actual brightness and contrast of your monitor.  This is usually done by adjusting buttons or knobs on the front of your monitor, but all monitors are a bit different so you may want to look through your monitors documentation to be sure.  Some places in the game are intentionally dark, and you'll need to use your flashlight, but you should be able to see everything without difficulty in the opening train ride and throughout the first part of the game.  Some graphics cards also have support for controlling how bright the display is.  If your card's device driver supports this, you can find it by going to the Windows control panel, and selecting the Display applet.

What can I do if the game looks washed out?
The most likely cause is that your monitor is slightly brighter than average and the default game settings are for a darker monitor. You will need to adjust the Gamma and Glare Reduction settings in the Configuration\Video\Video options menu in Half-Life. These are used to adjust for different kinds of monitors and room brightness. Adjust the two sliders so that the Soldiers camouflage pattern is dark but visible.  If this still doesn't work, you then may need to adjust the actual brightness and contrast of your monitor.  This is usually done by adjusting buttons or knobs on the front of your monitor, but all monitors are a bit different so you may want to look through your monitors documentation to be sure.  The most common problem, especially on new computers, is that "black" isn't showing up as black, but more of a dark gray.  Turn the Contrast down until the border around the edges of the picture are totally black, then slowly turn it back up until it just before it starts getting visibly lighter.  You may need to adjust your monitors Brightness back up after you do this. .  Some graphics cards also have support for controlling how bright the display is.  If your card's device driver supports this, you can find it by going to the Windows control panel, and selecting the Display applet.



V.CONTACTING SIERRA
=======================
A) Customer Service, Support, and Sales
B) Technical Support
C) Legal Information


A) Customer Service, Support, and Sales
----------------------------------
United States	

U.S.A. Sales Phone: (800) 757-7707
Hours: 24 hours a day, 7 days a week

International Sales:  (425) 746-5771 
Hours: Monday-Friday 8 AM to 4 PM PST
FAX: (916) 939-1010	
	
Sierra Direct				
P O Box 629001
El Dorado Hills, CA 95762-9972		
		
Email: customer.support@sierra.com
http://www.sierra.com


United Kingdom

Vivendi Universal Interactive Publishing UK Ltd.
Main: (0118) 920-9111
Monday-Friday, 9:00 a.m. - 5:00 p.m.
Fax:   (0118) 987-5603
Disk/CD replacements in the U.K. are £6.00, or £7.00 outside the UK. Add "ATTN.: Returns."
2 Beacontree Plaza,
Gillette Way,
Reading, Berkshire			
RG2 0BS United Kingdom		


France

Vivendi Universal Interactive Publishing France
32, Av de l'Europe 
Bât Energy 1 (2e étage) 
78 140 VELIZY-Villacoubaly
France

Téléphone: 01-30-67-90-50
Lundi au Jeudi de 10h à 19h
Vendredi de 10h à 18h
Fax: 01-30-67-90-65


Germany

Vivendi Universal Interactive Publishing Deutschland Gmbh.	
Tel: (0) 6103-99-40-40
Montag bis Freitag von 10h - 19Uhr
Fax: (0) 6103-99-40-35

Paul-Ehrlich-Straße l
63225 Langen 
Deutschland



On-Line Sales
CompuServe United Kingdom:GO UKSIERRA
CompuServe France:	  GO FRSIERRA
Internet USA:		  http://www.sierra.com
Internet United Kingdom:  http://www.sierra-online.co.uk
Internet France:  	  http://www.sierra.fr
Internet Germany:	  http://www.sierra.de

Disk and or Manual Replacement:		

Product Returns*:
Vivendi Universal Interactive Publishing International
Sierra On-Line Returns
4247 S. Minnewawa Ave.
Fresno, CA  93725

Vivendi Universal Interactive Publishing International
Sierra On-Line CD/Doco Replacement
4247 S. Minnewawa Ave.
Fresno, CA  93725				
		
NOTE: To replace your cd(s) please send only the damaged cd and copy of your dated Receipt, if less then 90 days.  After 90 days please include a $10.00 handling fee along with the cd(s).  For Documentation replacement, please include a $5.00 handling fee and a photocopy ONLY of either your disk or cd.  Payment should be made at the time of your request.  Sorry, no credit cards.	

* Returns to this address valid in North America only.


B) TECHNICAL SUPPORT
-------------------------
North America

Sierra On-Line offers a 24-hour automated technical support line with recorded answers to the most frequently asked technical questions. To access this service, call (425) 644-4343, and follow the recorded instructions to find your specific topic and resolve the issue. If this fails to solve your problem, you may still write, or fax us with your questions, or contact us via our Web site.

Sierra On-Line		
Technical Support
4247 South Minnewawa Avenue
Fresno, CA 93725

Main: (425) 644-4343
Monday-Friday  8:00 a.m. - 5:00 p.m. PST
Fax:  (310) 258-0755
	
http://www.sierra.com
support@sierra.com


United Kingdom

Vivendi Universal Interactive Publishing UK Ltd. offers a 24-hour Automated Technical Support line with recorded answers to the most frequently asked technical questions. To access this service, call (0118) 920-9111, and follow the recorded instructions to find your specific topic and resolve the issue. If this fails to solve your problem, you may still write, or fax us with your questions or contact us via our Internet or CompuServe sites.



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
78 140 VELIZY-Villacoublay
France

Téléphone: 01-30-67-90-50
Lundi au Jeudi de 10h à 19h
Vendredi de 10h à 18h
Fax: 01 30 67 90 65

http://www.sierra.fr


Germany

Vivendi Universal Interactive Publishing Deutschland Gmbh.
Technischer Kundendienst
Paul-Ehrlich-Straße la
63225 Langen 
Deutschland			
Tel: (0) 6103-99-40-40
Montag bis Freitag von 10 - 19Uhr
Fax: (0) 6103-99-40-35
Mailbox: (0) 6103-99-40-35

http://www.sierra.de


Spain

Vivendi Universal Interactive Publishing España 
NUESTRA SEÑORA DE VALVERDE Nº 23 
28034 MADRID 
Spain

Tech Support Teléfono: 91 735 24 37

Soporte técnico de lunes a Viernes 
de 09:30 a 15:00 y de 16:00 a 18:30
 

www.havasinteractive.es
Soporte Tecnico: soporte@havasinteractive.es
Comercial: comercial@havasinteractive.es

Italy

Vivendi Universal Interactive Publishing Italia spa
Contattare il vostro distributore.	


C) Sierra Warranty & Legal Information
-----------------------------------
Sierra's end user license agreement, limited warranty and return policy is set forth in the EULA.txt, found on the CD, and is also available during the install of the product.

Copyright (2002 Valve LLC.) 


Half-Life Uses Miles Sound System. Copyright © 1991-2001 by RAD Game Tools, Inc.











































































































