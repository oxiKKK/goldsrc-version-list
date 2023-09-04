				
				HLTV Readme			Version 1.1.0.9
	
	
1. Spectator Section
	
	HLTV offers the ability to have thousands of spectators watch online 
	games. To watch a game, start Half-Life, open the Multiplayer menu and
	select 'Spectate Games'. Half-Life will search for currently broadcasted
	games and show them in a list like normal game servers. You recognize
	HLTV games by the little eye icon (and the green text). Select the game
	in the list that you would like to spectate and click on 'Spectate' to
	watch the game. 
	
	You can spectate the game in different modes: Chase Cam, First Person,
	Free Look and Map Overview, Map Chase. The easiest way to change modes
	is the spectator menu, which can be enabled by pressing the DUCK key
	(by default CTRL). Here you can customize your personal view stlye. Hit
	DUCK to disable the menu again. Don't forget to "cheer", by default
	bound to "j".
	
	All features are also accessible via hot keys, see "Help" in spectator
	menu for further details.
		
	If important games are announced to be broadcasted via HLTV, they often
	provide IP:Port addresses of HLTV proxies. Instead of searching them via
	the internal server browser, you can also lower the console and
	use the 'connect' command to spectate to a certain game. For example:
		
		]connect 192.168.130.42:27020
	
	Don't forget to add the given HLTV port, most commonly 27020. 
	

	
2. Administator Section
									      
	The core of HLTV is the hltv.exe proxy application. To broadcast a game 
	running	on a certain game server, the HLTV proxy connects to this game
	server and collects all the needed data. Spectator clients join a
	multicast stream that is used by the HLTV proxy to broadcast this game.
	If multicast technology is not available because the LAN or ISP routers
	do not support multicast, clients can connect directly to the HLTV
	proxy. The number of clients that one HLTV proxy can serve depends on
	available hardware and network resources. HLTV proxies can also connect
	to each other to offer more spectator slots.
	
	A HLTV base configuration looks like this:
	
		Players <-> HL Game Server -> HLTV Master Proxy 
		
	The Master Proxy relays the game to other proxies or spectators:
	
		Master Proxy -> Spectators
		Master Proxy -> Relay Proxy -> Spectators
		
	In all configurations, only one HLTV proxy is connected to the game server.
	This HLTV proxy is called the Master Proxy (or Root Roxy). This Master
	Proxy sets the game delay and analyzes the game data to position the 
	camera in directed spectator mode. All other HLTV proxies that are 
	connected to the Master	Proxy as described above (called Relay Proxies)
	form a chain, or tree. Each Relay Proxy transmits the game only to
	spectator clients that are connected to itself. The Relay Proxies can
	not delay the game or alter how the game is viewed; this only is done
	by the Master Proxy.
	
	The HLTV proxy tells the WON master servers about its broadcasted game.
	Thus, users can spectate a game simply by using the built-in Half-Life
	server browser, connecting to a HLTV proxy the same way as connecting to
	a normal game. Users also can use the console to connect to a HLTV proxy
	with the 'connect' command, the same way as connecting to a normal game.
	
	If the HLTV proxy broadcasts the game via multicast, the client
	automatically tries to join the multicast stream, if possible.
	Unfortunately, multicast is disabled by most ISPs.
	
	See hltv.cfg for more details.
	 
	 
	The HLTV proxy's console accepts the following commands:
	
	connect <host:port>	- connect to server/proxy on the given port (default 27015)
	disconnect		- disconnects the proxy from server/proxy or stops demo playback
	quit			- quits the HLTV appliaction
	exit			- same as quit
	retry			- reconnects to last server/proxy
	autoretry <0|1>		- if enabled, proxy will retry connection to server after any network failure
	masternode <0|1>	- if enabled, proxy will redirect connecting spectators to other proxies
				  which are behind this proxy in the HLTV network tree. Thus several master
				  node proxies manage the load balance for their subtrees. The master proxy
				  is by default a master node. Commentators or other relay proxies will
				  not be redirected.
	public <0|1>		- if public is 0, this proxy will be excluded from load balancing (default 1).
					  
	name <string>		- sets the proxy's player name as shown in scoreboard
	hostname <string>	- sets the proxy's host name as shown in server browsers
	
	serverpassword		- sets the game server password
	adminpassword		- set password for RCON & commentator
	proxypassword		- protects proxy against unwanted relay proxies
	spectatorpassword	- protects proxy against unwanted spectators
	
	clients			- lists all connected spectator clients with IDs (not players in game)
	maxclients <n>		- how many clients can be served by this HLTV proxy ( default 128 )
	proxies			- lists all known proxies for this game sorted by their load (clients/maxclients)
	kick <ID>		- kicks a spectator client from proxy
	say <string>		- sends a text message to game server (chat with players)
	msg <text> [<duration> <pos x> <pos y> <color hex rgba>]
				- sends a text message to all spectators as big HUD text
	localmsg <text> [<duration> <pos x> <pos y> <color hex rgba>]
				- same as msg, but only seen by local clients (not relay proxies)
	servercmd <string>	- forwards console command to server (eg "timeleft")
	clientcmd <group> <string> 
				- forwards a console command to all clients in given group:
				  1 = spectators, 2 = proxies, 3 = all
	loopcmd <id> <n> <string> 
				- loopcmd will execute <string> every <n> seconds. <id> is a  number
				  between 1 and 64 to identify this loopcmd. "loopcmd <id> none" will disable
				  a looping command again. loopcmd without any paramter will list any
				  command in list.
	offlinetext <string>	- info text clients will see as reject reason if HLTV isn't broadcasting yet
	allowjoingame <0|1>	- if enabled, spectators may join game with the 'joingame' command
	chatmode <0|1|2>	- if chatmode is 0, spectators can't chat. If set to 1, only
				  spectators connected to the same proxy can see their chat
				  messages. In chatmode 2 all spectators can chat between
				  each other (then Master and all Relay proxies must have
				  set chatmode 2). Multicast spectators can't chat at all,
				  since they don't have a real connection.
	decalfile <filename>	- all player spray logos will be substituted with this .wad file
	bannerfile <filename>	- specifies a TGA file (RGBA) that will be shown as logo in spectator GUI.
				  				  
	signoncommands <string> - console commands that will be executed by local spectator clients
				  after connection is established. Commands may be seperated by semicolons.
	
	ping <host:port>	- pings a HL server on the given port (default 27015)
	nomaster <0|1>		- if enabled, proxy won't register at WON master servers.
	heartbeat		- sends manually a status packet to registered WON master servers
	
	rcon <string>		- sends a remote control command to other server/proxy
	rconaddress <IP:port>	- sets the remote control target address
	rconpassword <string>	- sets the password for the remote controlled host
	
	rate <n>		- bandwidth rate the game server sends data to the proxy in bytes/second
	updaterate <n>		- updates per seconds send from game server to proxy
	maxclientrate <n>	- sets the maximum bandwidth rate for spectator clients
		
	delay <n>		- delays the game stream for n seconds on the Master Proxy. 
				  The default value is 30 seconds to avoid cheating. A minimum
				  of 10 seconds is needed for the director module.
	slowmotion <t> <p>	- t is the slow motion timescale, while p is the probability that it's used
	delayreconnect <0|1>    - if enabled, proxy will delay reconnect on levelchange until rest 
				  of game in buffer is broadcasted.	
	cheeringthreshold <n>	- number of cheering players must be above this threshold to play the cheering 
				  sound (by default 0.25).
	blockvoice <0|1>	- if set, all incoming voice data is blocked. This is useful to override incoming
				  voice commentators or player voice with own commentators voice 
	sendstatus <string>	- send a HLTV status message to all players on game server.
															
	multicast <0|1>		- starts or stops multicast on Master Proxy. ISP or LAN must support multicast.
	mcast_connectgroup <IP:Port>
				- sets the class D IP for the multicast connect group (default 234.5.5.1:27025)
	mcast_gamegroup <IP:Port>	
				- sets the class D IP for the multicast game group (default 234.5.5.2:27025)
	mcast_recoverinterval 	<n>	
				- all n frames an uncompressed packet is transmitted to allow multicast clients to recover
				  from packetloss in game group (default all 20 frames = 1 second)
	mcast_connectinterval <n>
				- every n seconds all necessary connection information is broadcasted in multicast
				  connect group (default  10 seconds). After gathering this signon data, clients will join
				  the multicast game group.
	
	cmdlist			- shows all registered proxy commands
	logfile <0|1>		- starts/stops console logging in hltv.log
	status			- shows proxy status information
	version			- shows proxy version
	serverversion		- default '1109', to play/re-record old 1108 demos, set to '1108' (experimental)
	exec <filename>		- executes a .cfg file
	developer <0|1>		- additional debug messages are shown in developer mode 
	fakeloss <n>		- simulates packet loss, n = probability of a missing unit (default 0.0)
	
	record <filename>	- records all following games to demo files like filename-1.dem to filename-nnn.dem
	autorecord <0|1>	- if enabled, any game will be recorded to (name scheme auto-<date>-<mod>-<map>.dem )
	stoprecord		- stops recording a demo file
	playdemo <filename> [<filename>] ...
				- starts broadcasting a list of demo files in a loop
	playnextdemo		- plays next demo in list
	
		
		
	The console tries to complete a command name by hitting 'TAB'. All 
	commands in the config file "hltv.cfg" are executed during startup.
	
	Some parameters can only be set in the command line:

	-bufferlength <n>	- sets proxy buffer size in seconds. The broadcasting delay must be smaller 
				  than this value. By default 120 seconds are buffered.
	-maxfps	<n>		- sets maximum system cycles per seconds (default 100)
	-cachesize <n>		- frame cache size (default 32 frames)
	-ip <IP>		- forces the proxy to use this IP on a multihomed host
	-port <n>		- sets the HLTV proxy port that spectators connect to (default 27020)
	-comm <filename>	- sets a master server info file other than woncomm.lst
	-multicastttl <n>	- sets the Time-To-Live value for multicast packets
	-highpriority		- starts the HLTV proxy as high priority process (Win32 only)
	-steam			- proxy enables special Steam support
	
	These parameters cannot be changed during runtime, thus they can't be
	used in the config file.
		
	All console commands can be used in the command line, if a "+" is prepended to them:
	
		hltv.exe +connect localhost:27015 -port 27021

	A Half-Life server can set sv_proxies <n>, to determine how many proxies
	are allowed to connect. If HLTV proxies should be forbidden, set it to 0,
	otherwise 1 to allow for a Master Proxy. Other values are experimental.

	
3. Commentator Section
	
	With the new Half-Life voice technology, some clients may comment the
	game for all other spectators. They can also insert replays, slow 
	motion or spray custom decals. To become a commentator, clients must
	enable this feature with "commentator 1" in the console (before 
	connecting). Also the proxy must have set an "adminpassword". The 
	commentator client must set this password with the "password" 
	command. 
	
	As commentator your voice speech will be broadcasted to all spectators,
	your 'say' messages will appear in large letters not as normal chat 
	message. As voice commentator make sure to speak slow and clear, 
	otherwise people will only hear some background noise.
	
	To spray a new custom decal (like player logos), bind the new "spec_decal"
	command to a unused key (eg "bind m spec_decal") and switch to Free Look
	Mode. You can spray custom decals at up to 32 different locations. This
	custom decals must be enabled on the proxy with the "decalfile" command.
	Each proxy may show it's own decal to connected spectators.
	
	To show the last scene again, the commentator can use the "drc_replay" 
	command. For example "drc_replay 5 0" will replay the last 5 seconds 
	again with normal speed, "drc_replay 3 0.5" will replay the last 3
	seconds in slow motion. 
	
	It's also possible to play any sound file using the "drc_sound" command.
	For example "drc_sound ambience/goal_1.wav 1.0" will play a cheering sound
	with full volume. Use this sound command that add more atmosphere to the 
	game.
	

	
	
	
	
Thanks to:
----------

www.gamer-tv.de		: for their constant support and excellent testing.
