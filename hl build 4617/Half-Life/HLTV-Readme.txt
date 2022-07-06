
                           HLTV Documentation           Version 3.1.1.1/4.1.1.1
                          
         
                          
    Content
-------------------------------------------------------------------------------

    1. Overview
    2. Spectating Games
    3. HLTV Basics
    4. Broadcasting Games
    5. Recording HLTV demos
    6. Larger Broadcasts
    7. HLTV Configuration



1. Overview
-------------------------------------------------------------------------------

    Half-Life TV offers the ability to have an unlimited number of spectators
    watching online games. They can follow the game just like they would as
    a spectator on the game server. Spectators are invisible to players and 
    can't interact with the running game in any way. Each spectator can choose
    any view position or choose any player to track individually. To have the
    most enjoyable spectating experience, spectators can enable the 
    Auto-Director mode. Then the camera is changed automatically so that only
    interesting scenes are shown from a suitable viewpoint. Thus the spectator
    can lean back and won't miss any relevant action. All the time, spectators
    may communicate between each other using the standard HL chat system.
   
    Most popular Half-Life MODs are supported like Counter-Strike, Team 
    Fortress Classic, Day of Defeat and many others. HLTV providers have full
    control over their HLTV system, may change number of spectator slots, add
    text messages or change the HLTV logo. The broadcast is delayed by a
    customizable amount of time, by default 30 seconds. This ensures that the
    playing teams can't use HLTV to get any usable information about their
    opponents. Providing a single HLTV server for up to 100 spectators is an
    easy task and doesn't need any changes in default configurations.
   
    Installing a larger HLTV network for thousands of spectators needs some
    more planning time and experience about required bandwidth and CPU/RAM
    demands (see chapter 6).



2. Spectating Games
-------------------------------------------------------------------------------

    To watch a HLTV game, start Half-Life, open the Multiplayer menu and select
    'Find Servers'. To search for currently broadcasted games, choose the
    'Spectate' section and hit 'Refresh All'. After the list has been updated,
    double click on the server you want to spectate and you'll be connected.

    If computer game leagues announce important matches to be broadcasted via
    HLTV, they often provide IP:Port addresses of their HLTV servers. Instead
    of searching them via the server browser, you can also go to the 
    'Favorites' folder and add the HLTV address to your server list by pressing
    the right mouse button. Otherwise, you can also open the console window and
    use the 'connect' command to spectate a certain game.
    
    For example:

        connect 192.168.130.42:27020

    The default HLTV port number is 27020, but may be changed. It should always
    be included in the given address, since commonly this port number is 
    different from the default port number 27015.

    You can spectate the game in different modes: Chase Cam, First Person, Free
    Look, Map Overview and Map Chase. The easiest way to change modes is to
    press the JUMP key (default SPACE). Alternatively you can use the spectator
    menu, which can be enabled by pressing the DUCK key (default CTRL). Here
    you can customize your personal view style and enable the Auto-Director
    Mode. Press USE (default E) to cycle through the different 
    Picture-In-Picture modes.
   
    The following HL console commands can be used to customize spectator 
    settings:

    spec_autodirector <0|1> - turns Auto Director mode on or off
    spec_drawcone <0|1>     - shows your view cone in map overview mode
    spec_drawnames <0|1>    - shows player names under their icons
    spec_drawstatus <0|1>   - shows game information (time, map etc)
    spec_pip <0|1>          - turns Picture-In-Picture mode on or off
    spec_menu               - opens the spectator menu
    spec_help               - shows a help screen
    spec_mode <1-6> [<0-4>] - set the main view mode, seconds parameter is
                              the PIP mode. Not all combinations are valid.
                              Main modes are:
                                1 : Locked Chase        2 : Free Chase
                                3 : Free Roaming        4 : First Person
                                5 : Map Overview        6 : Chase Map Overview
                              PIP modes are:
                                0 : PIP off             1 : Free Chase
                                2 : First Person        3 : Map Overview
                                4 : Chase Map Overview



3. HLTV Basics
-------------------------------------------------------------------------------
                                         
    The core of the HLTV broadcasting system is the HLTV server, also called 
    HLTV proxy. The HLTV executable is a console application that works much 
    like a HL dedicated server. To broadcast a game running on a certain game 
    server, the HLTV proxy connects to this server just like a normal player.
    Spectators connect themselves to the HLTV proxy and the game data stream is
    relayed through the HLTV proxy to all connected spectator clients. The next
    figure shows a basic HLTV configuration:
   
        HL Game Server -> HLTV Proxy => Spectator Clients
   
    The number of clients that one HLTV proxy can serve depends on available
    hardware and network resources. Theoretically, a single proxy can hold a
    maximum of 255 spectator clients. But be careful, even a proxy with 100
    spectator clients needs a full 2 MBit line to run smoothly. If more
    spectator slots are needed, the required network load must be distributed
    over multiple HLTV proxies.
       
    The first HLTV proxy connected to the game server is called the Master
    proxy, which sets the general broadcast settings like game stream delay or
    packet rate. All other HLTV proxies linked to this proxy are the Relay 
    proxies. Their total number and link order is not restricted, they may form
    a chain or tree of proxies. Most important is that their location is in
    different networks to ensure a balanced bandwidth usage.
   
                                   -> HLTV Relay Proxy 1 => Spectator Clients
     HL Game Server -> HLTV Master -> HLTV Relay Proxy 2 => Spectator Clients
                                   -> HLTV Relay Proxy 3 => Spectator Clients


         
4. Broadcasting Games
-------------------------------------------------------------------------------

    Let's assume the most simple configuration, a single HLTV proxy in a LAN
    environment. This is a very common situation and the default HLTV settings
    doesn't need to be changed. Choose a dedicated computer as your HLTV proxy
    and install the Half-Life Dedicated Server, which also includes all files
    needed by a HLTV proxy. This isn't needed if Half-Life is already
    installed.
   
    Start the HLTV application (HL icon with a small camera) and the HLTV
    console will open, showing some initialization messages (if that takes a
    long time, HLTV maybe can't resolve some IP addresses, then start HLTV
    with the '-nodns' command line option). Then the console is ready to accept
    your commands, here we use '>' as the console prompt. First give your HLTV
    proxy an unique name:
   
    >name "My HLTV Proxy"
   
    Let's assume you have started the proxy on host 192.168.1.2 and the game
    server, you want to spectate is running on host 192.168.1.3:27015. Then
    connect the HLTV proxy to this game server by typing:
   
    >connect 192.168.1.3:27015
   
    After a few seconds HLTV will be fully connected and ready to serve
    spectator clients. Use the 'status' command to verify that the HLTV proxy
    has connected properly :
   
    >status
     --- HLTV Status ---
     Online 00:23, FPS 79.0, Version 2435 (Win32)
     Local IP 192.168.1.2:27020, Network In 1.7, Out 1.0, Loss 0.00
     Local Slots 128, Spectators 0, Proxies 0
     Total Slots 128, Spectators 0, Proxies 1
     Source Game Server 192.168.1.3:27015, Delay 30
     Server Name "Half-Life dedicated server"
     Time 01:35, Game "valve", Map "maps/rapidcore.bsp", Players 1
   
    The 'status' command shows your own IP address, HLTV system cycles per
    second, total incoming and outgoing network traffic in kB/sec. Local slot
    and spectator numbers your HLTV proxy is providing, total numbers are the
    sum of all slots & spectators on all proxies broadcasting this game. The
    game source can be a game server, another HLTV proxy or a demo file.



5. Recording HLTV demos
-------------------------------------------------------------------------------
   
    HLTV demo files are like normal recorded games in Half-Life, but you can
    choose any view point, view mode or player to chase during replay. To play
    back a HLTV demo, a HLTV proxy is not needed. Just start Half-Life and type
    in console "playdemo <demoname>" or "viewdemo <demoname>" (viewdemo offers
    more options during playback like fast forward/backward, pause & 
    slowmotion). To record a HLTV demo, connect the proxy to a game server (see
    last chapter) and type in console:
       
    >record <name>
  
    All games will be recorded after issuing this command. The demo files will
    be saved in the current Mod directory, e.g. \cstrike. All demo files have a
    special naming convention <name>-<YYMMDDhhmm>-<map>.dem, including the 
    given name, date/time and map name. Demo files record the same data as send
    to spectator clients. That means also, the demo file records the game with
    the same delay as used for spectators. To verify, that a demo file is
    recorded use the "status" command. The recording may be stopped with 
    "stoprecording".
   
    Sometimes a HLTV broadcast is not wanted and the HLTV proxy is only used
    to record a demo file. In this case, some HLTV settings should be made to
    gain optimal recording results:
   
    >maxclients 0   // don't allow any spectator clients
    >delay 0        // no game stream delay
    >rate 10000     // maximum data rate
    >updaterate 20  // standard update rate
    >nomaster 1     // don't register at master servers



6. Larger broadcasts
-------------------------------------------------------------------------------
   
    Setting up a HLTV network that can handle a larger number of spectators
    (>1000) is a difficult and time consuming task. The following guide should
    help to configure and run such a HLTV network. One of the most important
    rule should be "Quality, not Quantity". It's better to offer a smaller
    number of spectator slots, than operating at the maximum bandwidth limit,
    thus all spectators would suffer from lags and timeouts. Check carefully
    your available bandwidth capacity and calculate how many spectators can
    be handled by your HLTV servers. The average bandwidth demand per spectator
    is between 2 and 3 KB/sec and depends on the current mod, map and number of
    players. CPU and RAM shouldn't be a bottleneck on modern PC systems.
    
    This list for common Internet connection types gives a feeling, how 
    bandwidth demanding HLTV can be:
           
        -   ISDN         64 Kbps            :      2 spectators
        -   DSL         128 Kbps (upstream) :      5 spectators
        -   T1          1.5 Mbps            :     75 spectators
        -   LAN          10 Mbps            :    500 spectators
        -   T3           75 Mbps            :   4000 spectators

    Use the "maxclients" command to set how many clients should be accepted by
    a HLTV proxy. Make sure that the "maxrate" variable is set too a reasonable
    value, e.g. 3500 kB/sec. Lower values are possible, but make sure spectators
    don't get too much "choke" during a running game. The "maxrate" command
    doesn't effect the bandwidth limit between HLTV proxies, only for spectator
    clients. To lower the general bandwidth demand, you can turn off the 
    internal HLTV chat ("chatmode 0") or decrease the game update rate from the
    default value 20 to 10 ("updaterate 10"). A lower update rate may save up
    to 25% network traffic and is an acceptable tradeoff in this case since
    spectators doesn't need a high update rate like real players does.
       
    A very common setup for large broadcasts is to use 2 dedicated HLTV servers
    to create a private and a public HLTV segment. Let's assume the game server
    is in a closed LAN and not accessible from outside. This ensures a maximum
    security against attacks (DOS etc) from outside. The HLTV master server is
    started within the LAN and it's IP address should be kept secret. The 
    second HLTV server is started outside the LAN with a global IP and is
    connected to the HLTV master server. This second HLTV server is the public
    HLTV dispatcher, which IP address is given to the audience. Any relay
    proxies are connected to this HLTV dispatcher. Thus the HLTV master server
    is in a secure LAN environment and can be used for demo recording or for
    HL clients serving video projectors. Spectators connect to the HLTV 
    dispatcher and are relayed through the HLTV network to a relay proxy with
    a low usage. Thus the total network load is balanced between all connected
    HLTV proxies.
   
    +----   Private LAN -----+  +------ Public Internet --------+
                                                 -> HLTV Proxy 1 
     HL Server -> HLTV Master -> HLTV Dispatcher -> HLTV Proxy 2 
                                                 -> HLTV Proxy 3
   
    The configuration files of HLTV master and HLTV dispatcher are different:
   
    master.cfg:
   
     nomaster      1        // don't register at WON master servers
     proxypassword MyPWD    // protect HLTV server
     publicgame    0        // don't show game server IP
     dispatchmode  0        // don't dispatch spectators
    
    dispatcher.cfg:
   
     forcemaster  1         // register at WON master servers
     publicgame   0         // don't show game server IP
     dispatchmode 2         // dispatch all clients to other proxies
     hostname     MyGame    // public HLTV server name
    
   
    If you're running 3 or more HLTV servers in total, it's a good idea to
    use RCON to manage them via a single server admin tool. To enable RCON
    on a HLTV server an "adminpassword" must been set. Also "proxypassword"
    should be set to ensure only known HLTV providers can connect to your
    HLTV network. Otherwise anybody can connect with slow HLTV proxies and
    disturb your network load balancing.
                      

   
7. HLTV Configuration
-------------------------------------------------------------------------------
    
    A short note about console command syntax. A command description follows
    the following notation:
   
        command <parameter> [<parameter>] - description
   
    A command may have one or more parameters. Parameters in brackets [] are
    optional. Common used parameters are :
   
        <string>  : text, must be in quotes if text contains spaces "My Name"
        <n>       : a whole number, e.g. 42
        <f>       : a floating point number, e.g. 4.2
        <IP:Port> : an IP address, e.g. 192.168.130.42:27020
        <a|b|c>   : a set of options, a or b or c
   
    Note, any of these special characters <, >, |, [ or ] are not part of the
    final command as typed in the console. Lots of these commands are boolean
    switches, were 1 is meaning ON and 0 is respectively OFF.
    
         
    connect <IP:Port> - connect HLTV proxy to game server (default port 27015)
    disconnect        - disconnects proxy from server, but doesn't stop the
                        broadcast. All spectator clients stay connected.
    stop [<text>]     - disconnects from server, disconnects all clients and
    			stops demo recording. Optional goodbye message.
    quit              - quits the HLTV process
    retry             - retries the last server connection
    autoretry <0|1>   - if enabled, proxy will retry connection to server if
                        connection was interrupted for any reason
                             
    name <text>       - sets the HLTV proxy scoreboard name
    hostname <text>   - sets the HLTV host name for game browser list
   
    serverpassword <text>     - sets the game server password
    adminpassword <text>      - sets password for RCON & commentator
    proxypassword <text>      - sets password for other relay proxies
    spectatorpassword <text>  - sets spectator password. Will also exclude
                                proxy from global load balancing
                                       
    clients         - lists connected spectator clients
    proxies         - lists connected relay proxies
    players         - lists players on game server
    kick <ID>       - kicks a spectator client from proxy
    bann <IP>       - banns an IP address (completely ignored)
    clearbanns      - removes all IPs from bann list
    say <text>      - sends a text message to game server (chat with players)
    msg <text> [<duration> <pos x> <pos y> <color hex rgba>]
                    - sends a text message to all spectators as big HUD text
    localmsg <text> [<duration> <pos x> <pos y> <color hex rgba>]
                    - same as msg, but only seen by local clients
   
    servercmd <string>         - forwards console command to game server
    clientcmd <group> <string> - forwards a console command to all clients of
                                 given group: 1=spectators, 2=proxies, 3=all
                                 
    loopcmd <id> <n> <string>  - loopcmd will execute <string> every <n>
                                 seconds. <id> is a number between 1 and 64 to
                                 identify this loopcmd. "loopcmd <id> none"
                                 will disable a looping command again. loopcmd
                                 without any parameter will list any command
                                 currently in the list.
                                 
    signoncommands <string>    - console commands that will be executed by
                                 local spectator clients after connection is
                                 established. Commands may be separated by
                                 semicolons.
                                
    maxclients <n> - set spectator number limit for this proxy (default 128)
    delay <n>      - delays the game stream for n seconds on the Master Proxy.
                     The default value is 30 seconds to avoid cheating. If the
                     delay is set to a value below 10 seconds (e.g. 0), the
                     auto director function will be disabled.
    rate <n>       - bandwidth rate the game server sends data to the proxy
    updaterate <n> - game updates per seconds send from server to proxy
    maxrate <n>    - sets the maximum bandwidth rate for spectator clients
    maxloss <f>    - sets the acceptable packet loss rate, default
                     value is 0.05 (5%). If packet loss is higher, new
                     spectator clients will be rejected.
    maxqueries <n> - maximum of status queries per second requested by server
                     browsers
                                
    dispatchmode <0|1|2> - Dispatch mode 1 (AUTO) will redirect connecting         
                           clients to other proxies balancing work load between
                           all proxies. In dispatch mode 2 (ALWAYS) any
                           spectator clients will be redirected, so this proxy
                           serves only as dispatcher. Dispatch mode 0 (OFF)
                           won't redirect any clients.
 
    publicgame <0|1>     - if public is 1, game server IP will be visible to
                           spectators and 'joingame' is allowed.
    offlinetext <string> - info text clients will see as reject reason if HLTV
                           isn't broadcasting yet
    chatmode <0|1|2>     - if chatmode is 0, spectators can't chat. If set to 1,
                           only spectators connected to the same proxy can see
                           their chat messages. In chatmode 2 all spectators
                           can chat between each other (then Master and all
                           Relay proxies must have set chatmode 2). 
                          
    bannerfile <file>    - specifies a TGA file (RGBA) that will be shown as
                           logo in spectator GUI.
    
    ping <host:port>     - pings a HL server on the given port (default 27015)
    nomaster <0|1>       - if enabled, proxy won't register at WON master
                           servers
    forcemaster <0|1>    - if enabled, proxy will register at WON master server
    heartbeat            - sends manually a status packet to WON master servers
    region <n>		 - set the region your HLTV proxy is located in
   
    rcon <string>         - sends a remote control command to other servers
    rconaddress <IP:Port> - sets the remote control target address
    rconpassword <string> - sets the password for the remote controlled host
  
    cheeringthreshold <f> - number of cheering players must be above this
                            threshold to play the cheering sound (by default 0.25).
                              
    blockvoice <0|1>      - if set, all incoming voice data is blocked. This is
                            useful to override incoming voice commentators or
                            player voice with own commentators voice.
  
    cmdlist         - shows all registered proxy commands
    logfile <0|1>   - starts/stops console logging in "logfile<date>.log"
    status          - shows proxy status information
    modules         - shows all loaded HLTV modules and versions
    exec <filename> - executes a .cfg file
    echo <string>   - prints a text to HLTV console
    developer <0|1> - additional debug messages are shown in developer mode
       
    record <filename>   - records all following games to demo files using name
                          syntax "filename-<date>-<map>.dem"
    stoprecording       - stops recording a demo file
    playdemo <filename> - starts broadcasting a demo file
   
          
    The console does auto-completion by hitting 'TAB'. All commands in the
    config file "hltv.cfg" are executed during startup.
   
    Some parameters can only be set in the command line:

    -port <n>        - sets the HLTV proxy port that spectators connect to
                       (default 27020)
    -ip <IP>         - forces the proxy to use this IP on a multihomed host                
    -comm <filename> - sets a master server info file other than woncomm.lst
    -nodns           - disables any DNS resolving (useful for LAN proxies)
    -maxfps <n>      - sets maximum system cycles per seconds (default 100)
    -highpriority    - starts the HLTV proxy as high priority process
    -steam           - proxy enables special Steam support
    -dev             - developer mode
   
   
    These parameters cannot be changed during runtime, thus they can't be used
    in config files.
       
    All console commands can be used in the command line, if a "+" is prepended
    to them, for example:
   
        hltv.exe +connect localhost:27015 -port 27021

    A Half-Life server can set sv_proxies <n>, to determine how many proxies
    are allowed to connect. If HLTV proxies should be forbidden, set it to 0,
    otherwise 1 to allow for a Master Proxy. Other values are experimental.
  
   
-------------------------------------------------------------------------------

For HLTV news, updates and help visit http://hltv.valve-erc.com

Copyright (2003 Valve LLC.)
