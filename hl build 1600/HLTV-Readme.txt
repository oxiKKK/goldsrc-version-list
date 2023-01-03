				
				HLTV Readme			Version 1.1.0.8
	
	
1. Spectator Section
	
	HLTV offers the ability to have thousands of spectators watch online games.
	To watch a game, start Half-Life, open the Multiplayer menu and
	select 'Spectate Games'. Half-Life will search for currently broadcasted
	games and show them in a list like normal game servers. You recognize
	HLTV games by the little eye icon (and the green text). Select the game in
	the list that you would like to spectate and click on 'Spectate' to watch
	the game. 
	
	You can spectate the game in different modes: Chase Cam, First Person,
	Free Look and Map Overview. To change modes press JUMP (by default SPACE
	key). Each time you enter a new mode, HLTV automatically chooses the 
	most interesting player to follow. If you want to chase a particular player 
	press FIRE to choose next player. You can also enable a small inset 
	window by pressing DUCK (by default the CTRL key), showing a different
	view then the main view. A brown view cone shows you your position
	in the overview map. The overview map can be rotated with mouse, zoomed
	in/out with FORWARD/BACK or moved with MOVELEFT/MOVERIGHT keys. Player
	names under their icons can be disabled with 'cl_drawnames 0'.
	
	If important games are announced to be broadcasted via HLTV, they often
	provide IP:Port addresses of HLTV proxies. Instead of searching them via
	the internal server browser, you can also lower the console and
	use the 'connect' command to connect to a certain game. For example:
		
		]connect 192.168.130.42:27020
	
	Don't forget to add the given HLTV port, most commonly 27020. 
	
	While spectating a game using HLTV, you can join the game by entering 
	the 'joingame' command. But this feature must be enabled by the HLTV
	proxy administator. Anyway, spectators can see the game server IP and
	other information using the 'status' command.

	
	
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
		
	Or if multicast is available, the Master Proxy broadcasts into the 
	multicast network and spectators just listen to these data streams:
	
		Master Proxy -> Multicast Network -> Spectators
	
	In all configurations, only one HLTV proxy is connected to the game server.
	This HLTV proxy is called the Master Proxy. This Master Proxy sets the
	game delay and analyzes the game data to position the camera in directed
	spectator mode. All other HLTV proxies that are connected to the Master
	Proxy as described above (called Relay Proxies) form a chain, or tree.
	Each Relay Proxy transmits the game only to spectator clients that are
	connected to itself. The Relay Proxies can not delay the game or alter
	how the game is viewed; this is done by the Master Proxy. Only the Master
	Proxy is allowed to send to a multicast group (Class D IP). It is very 
	important that each proxy uses its own multicast group, otherwise the
	different game streams interfere with each other. 
	
	The HLTV proxy tells the WON master servers about its broadcasted game.
	Thus, users can spectate a game simply by using the built-in Half-Life
	server browser, connecting to a HLTV proxy the same way as connecting to
	a normal game. Users also can use the console to connect to a HLTV proxy
	with the 'connect' command, the same way as connecting to a normal game.
	If the HLTV proxy broadcasts the game via multicast, the client
	automatically tries to join the multicast stream, if possible. 
	 
	 
	The HLTV proxy's console accepts the following commands:
	
	connect <host:port>	- connect to server/proxy on the given port (default 27015)
	disconnect		- disconnects the proxy from server/proxy
	quit			- quits the HLTV appliaction
	exit			- same as quit
	retry			- reconnects to last server/proxy
	autoretry <n>		- if n > 0 the proxy retries last connection every n seconds
	name <string>		- set the proxy's client name
	password		- sets the server password
	
	clients			- lists all connected spectator clients with IDs (not players in game)
	kick <ID>		- kicks a spectator client from proxy
	say <string>		- sends a text message to all spectators
	infotext <string>	- set game info text
	allowjoingame <0|1>	- if enabled, spectators may join game easily with the 'joingame' command
	chatmode <0|1|2>	- if chatmode is 0, spectators can't chat. If set to 1, only
				  spectators connected to the same proxy can see their chat
				  messages. In chatmode 2 all spectators can chat between
				  each other (then Master and all Relay proxies must have
				  set chatmode 2). Multicast spectators can't chat at all,
				  since they don't have a real connection.
	
	ping <host:port>	- pings a HL server on the given port (default 27015)
	heartbeat		- sends a status packet to registerd WON master servers
	
	rcon <string>		- sends a remote control command to other server/proxy
	rcon_address <IP:port>  - sets the remote control target address
	rcon_password <string>	- sets the password for the remote controlled host
	proxypassword <string>	- the proxy's rcon password
	clientpassword		- set the client password for this proxy
		
	rate <n>		- bandwith rate the server sends data to the proxy in bytes/second
	updaterate <n>		- updates per seconds send from server to proxy
	maxclientrate <n>	- sets the maximum bandwith rate for spectator clients
		
	delay <n>		- delays the game stream for n seconds on the Master Proxy. 
				  The default value is 30 seconds to avoid cheating. A minimum
				  of 10 seconds is needed for the director module.
	delayreconnect <0|1>    - if enabled, proxy will delay reconnect on levelchange until rest 
				  of game in buffer is broadcasted.	
	loop <0|1>		- if loop is 1 and the proxy disconnects or the demo file
				  is over, all clients are kept connected and the last game
				  is replayed.
		
	multicast <0|1>		- starts or stops multicast on Master Proxy. ISP or LAN must support multicast.
	connectip <IP:Port>	- sets the class D IP for the multicast connect group (default 234.5.5.1:27025)
	gameip <IP:Port>	- sets the class D IP for the multicast game group (default 234.5.5.2:27025)
	fullupdateinterval <n>	- all n frames an uncompressed packet is transmitted to allow clients to recover
				  from packetloss in multicast (default all 20 frames)
	
	cmdlist			- shows all registered proxy commands
	logfile <0|1>		- starts/stops console logging in hltv.log
	status			- prints status informations about all active modules
	exec <filename>		- executes a .cfg file
	developer <0|1>		- additional status messages are shown in developer mode 
	fakeloss <n>		- simulates packet loss, n = probability of a missing unit (default 0.0)
	
	record <filename>	- records all following games into files like filename1.dm to filename99.dem
	playback <filename>	- starts broadcasting a previously recorded demo (endless if loop is 1)
	stop			- stops demo file playback
		
		
	The console tries to complete a command name by hitting 'TAB'. All 
	commands in the config file "hltv.cfg" are executed during startup.
	
	Some parameters can only be set in the command line:

	-maxframes <n>		- sets the minimum buffered frames (default 2400)
	-cachesize <n>		- frame cache size (default 32 frames)
	-port <n>		- sets the HLTV proxy port that spectators connect to (default 27020)
	-maxclients <n>		- how many clients can be served by this HLTV proxy ( default 128 )
	-comm <filename>	- sets a master server info file other than woncomm.lst
	-multicastttl <n>	- sets the Time-To-Live value for multicast packets
	-highpriority		- starts the HLTV proxy as high priority process
	-nomaster		- the HLTV proxy doesn't report to WON master servers at all
	-ip <IP>		- forces the proxy to use this IP on a multihomed host
	
	These parameters cannot be changed during runtime, thus they can't be
	used in the config file.
		
	All console commands can be used in the command line, if a "+" is prepended to them:
	
		hltv.exe +connect localhost:27015 -port 27021 +rate 7000

	A Half-Life server can set sv_proxies <n>, to determine how many proxies
	are allowed to connect. If HLTV proxies should be forbidden, set it to 0,
	otherwise 1 to allow for a Master Proxy. Other values are experimental.
	
	With the new Half-Life voice technology, one client can comment the game
	for all other spectators. This commentator has to connect to the 
	Master Proxy as a normal spectator and then enter:
	
		commentator <password>
		
	The password is the same as the proxy's RCON password. The commentator
	then can speak as in a normal game and all other spectators will hear the
	commentary at the same time. Also the commentator text chat will be shown
	as center text. If a spectator records this game, the speech is stored
	within the demo file. 

	
	
	