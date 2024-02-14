﻿-- chunkname: @/modules/gamelib/protocol.lua

SERVER_OPCODE_ENTERGAME = 15
SERVER_OPCODE_CREATUREHEALTH = 10
SERVER_OPCODE_CLOSETRADE = 11
SERVER_OPCODE_PLAYERSKILLS = 12
SERVER_OPCODE_MARKETLEAVE = 13
SERVER_OPCODE_PLAYERDATABASIC = 14
SERVER_OPCODE_OWNTRADE = 16
SERVER_OPCODE_CHANNELS = 17
SERVER_OPCODE_DELETEONMAP = 18
SERVER_OPCODE_FULLMAP = 19
SERVER_OPCODE_CANCELWALK = 20
SERVER_OPCODE_TALK = 21
SERVER_OPCODE_MISSLEEFFECT = 22
SERVER_OPCODE_PVPSITUATIONS = 23
SERVER_OPCODE_CREATECONTAINER = 24
SERVER_OPCODE_BLESSINGS = 25
SERVER_OPCODE_PLAYERGOODS = 26
SERVER_OPCODE_EDITTEXT = 27
SERVER_OPCODE_PLAYERRESISTANCES = 28
SERVER_OPCODE_SPELLGROUPDELAY = 29
SERVER_OPCODE_PLAYERSTATE = 30
SERVER_OPCODE_TUTORIALHINT = 31
SERVER_OPCODE_CLOSECONTAINER = 32
SERVER_OPCODE_FLOORCHANGEDOWN = 33
SERVER_OPCODE_AMBIENT = 34
SERVER_OPCODE_CLOSENPCTRADE = 35
SERVER_OPCODE_SETINVENTORY = 36
SERVER_OPCODE_TEXTEFFECT = 38
SERVER_OPCODE_STOREERROR = 39
SERVER_OPCODE_LOGINWAIT = 40
SERVER_OPCODE_CREATUREOUTFIT = 41
SERVER_OPCODE_OPENPRIVATECHANNEL = 42
SERVER_OPCODE_LOGINERROR = 43
SERVER_OPCODE_UPDATETILE = 44
SERVER_OPCODE_OPENCHANNEL = 45
SERVER_OPCODE_LOGINORPENDINGSTATE = 46
SERVER_OPCODE_UNJUSTIFIEDSTATS = 47
SERVER_OPCODE_SPELLDELAY = 48
SERVER_OPCODE_CREATUREMANA = 49
SERVER_OPCODE_CREATEONMAP = 50
SERVER_OPCODE_PLAYERHELPERS = 51
SERVER_OPCODE_TEXTMESSAGE = 52
SERVER_OPCODE_DELETEINVENTORY = 54
SERVER_OPCODE_QUESTLOG = 56
SERVER_OPCODE_MODALDIALOG = 57
SERVER_OPCODE_DELETEINCONTAINER = 58
SERVER_OPCODE_CLEARTARGET = 59
SERVER_OPCODE_MARKETENTER = 60
SERVER_OPCODE_PLAYERINVENTORY = 61
SERVER_OPCODE_OPENCONTAINER = 62
SERVER_OPCODE_DEATH = 63
SERVER_OPCODE_CHANNELEVENT = 64
SERVER_OPCODE_CREATURESKULL = 66
SERVER_OPCODE_EXTENDEDOPCODE = 67
SERVER_OPCODE_CREATURENAME = 68
SERVER_OPCODE_QUESTLINE = 69
SERVER_OPCODE_CREATUREMARK = 70
SERVER_OPCODE_CREATUREEMBLEM = 71
SERVER_OPCODE_WALKWAIT = 72
SERVER_OPCODE_MARKETBROWSE = 73
SERVER_OPCODE_CLOSECHANNEL = 74
SERVER_OPCODE_STORECOMPLETEPURCHASE = 75
SERVER_OPCODE_MAPRIGHTROW = 76
SERVER_OPCODE_SPELLHIGHLIGHT = 77
SERVER_OPCODE_STORE = 78
SERVER_OPCODE_CREATURETYPE = 79
SERVER_OPCODE_MARKETDETAIL = 80
SERVER_OPCODE_CREATURESPEED = 81
SERVER_OPCODE_CREATURELIGHT = 82
SERVER_OPCODE_GRAPHICALEFFECT = 83
SERVER_OPCODE_ITEMINFO = 84
SERVER_OPCODE_PLAYERDATA = 85
SERVER_OPCODE_COUNTERTRADE = 86
SERVER_OPCODE_MAPBOTTOMROW = 87
SERVER_OPCODE_MAPLEFTROW = 88
SERVER_OPCODE_CREATUREUNPASS = 89
SERVER_OPCODE_OPENNPCTRADE = 90
SERVER_OPCODE_LOGINSUCCESS = 91
SERVER_OPCODE_OPENOWNCHANNEL = 92
SERVER_OPCODE_FLOORCHANGEUP = 93
SERVER_OPCODE_CHALLENGE = 94
SERVER_OPCODE_CHANGEONMAP = 95
SERVER_OPCODE_MOVECREATURE = 96
SERVER_OPCODE_MAPTOPROW = 97
SERVER_OPCODE_CHANGEINCONTAINER = 98
SERVER_OPCODE_SPELLLIST = 99
SERVER_OPCODE_CHOOSEOUTFIT = 101
SERVER_OPCODE_CREATUREPARTY = 102
SERVER_OPCODE_EDITLIST = 103
SERVER_OPCODE_AUTOMAPFLAG = 104
SERVER_OPCODE_COINBALANCE = 105
SERVER_OPCODE_PLAYERMODES = 106
SERVER_OPCODE_LOGINADVICE = 107
SERVER_OPCODE_PROCESSES = 108
SERVER_OPCODE_DLLS = 109
SERVER_OPCODE_SOUNDEFFECT = 110
SERVER_OPCODE_BACKPACK = 111
SERVER_OPCODE_TOOLTIP = 112
SERVER_OPCODE_SHAKE = 113
SERVER_OPCODE_MULTIUSEDELAY = 114
SERVER_OPCODE_PING = 121
SERVER_OPCODE_PINGBACK = 120
SERVER_OPCODE_NEWPING = 130
SERVER_OPCODE_AWARERANGE = 131
SERVER_OPCODE_NEWWALKING = 132
SERVER_OPCODE_PREDICTIVEWALKING = 133
SERVER_OPCODE_SCREENSHOT = 134
SERVER_OPCODE_MOUNTSTAMINA = 171
SERVER_OPCODE_SPELLIGNOREGLOBALCOOLDOWN = 172
CLIENT_OPCODE_LOGINPROTOCOL = 1
CLIENT_OPCODE_CHARACTERLIST = 2
CLIENT_OPCODE_CREATECHARACTER = 3
CLIENT_OPCODE_DELETECHARACTER = 4
CLIENT_OPCODE_CHARACTERNAME = 5
CLIENT_OPCODE_SELECTSPAWNPOINT = 6
CLIENT_OPCODE_REQUESTWORLDSLIST = 7
CLIENT_OPCODE_REQUESTCHANNELSLIST = 8
CLIENT_OPCODE_PLAYERAUTHREQUEST = 9
CLIENT_OPCODE_PENDINGGAME = 10
CLIENT_OPCODE_ENTERGAME = 15
CLIENT_OPCODE_INSPECTNPCTRADE = 16
CLIENT_OPCODE_MOVE = 17
CLIENT_OPCODE_WALKNORTHEAST = 18
CLIENT_OPCODE_REVOKEINVITATION = 19
CLIENT_OPCODE_CLOSENPCTRADE = 20
CLIENT_OPCODE_MOUNT = 21
CLIENT_OPCODE_WALKSOUTHEAST = 22
CLIENT_OPCODE_LEAVEGAME = 23
CLIENT_OPCODE_WALKNORTHWEST = 24
CLIENT_OPCODE_INVITETOOWNCHANNEL = 25
CLIENT_OPCODE_DEBUGREPORT = 26
CLIENT_OPCODE_REQUESTTRADE = 27
CLIENT_OPCODE_TALK = 28
CLIENT_OPCODE_EDITLIST = 29
CLIENT_OPCODE_EQUIPITEM = 30
CLIENT_OPCODE_CLOSECONTAINER = 31
CLIENT_OPCODE_FEEDBACK = 32
CLIENT_OPCODE_MARKETCREATE = 33
CLIENT_OPCODE_ACCEPTTRADE = 34
CLIENT_OPCODE_MARKETACCEPT = 35
CLIENT_OPCODE_MARKETCANCEL = 36
CLIENT_OPCODE_WRAPITEM = 37
CLIENT_OPCODE_INVITETOPARTY = 38
CLIENT_OPCODE_TURNEAST = 39
CLIENT_OPCODE_REMOVEPARTYMEMBER = 40
CLIENT_OPCODE_TURNNORTH = 41
CLIENT_OPCODE_PASSLEADERSHIP = 42
CLIENT_OPCODE_REQUESTCHANNELS = 43
CLIENT_OPCODE_REJECTTRADE = 44
CLIENT_OPCODE_CHANGEOUTFIT = 45
CLIENT_OPCODE_ANSWERMODALDIALOG = 47
CLIENT_OPCODE_REQUESTOUTFIT = 48
CLIENT_OPCODE_AUTOWALK = 49
CLIENT_OPCODE_BUYSTOREOFFER = 50
CLIENT_OPCODE_SEEKINCONTAINER = 51
CLIENT_OPCODE_CLOSENPCCHANNEL = 52
CLIENT_OPCODE_TRANSFERCOINS = 53
CLIENT_OPCODE_EXTENDEDOPCODE = 55
CLIENT_OPCODE_REFRESHCONTAINER = 57
CLIENT_OPCODE_STOP = 58
CLIENT_OPCODE_ROTATEITEM = 59
CLIENT_OPCODE_WALKEAST = 60
CLIENT_OPCODE_LOOKCREATURE = 62
CLIENT_OPCODE_LEAVEPARTY = 63
CLIENT_OPCODE_EDITTEXT = 65
CLIENT_OPCODE_WALKSOUTH = 66
CLIENT_OPCODE_TURNWEST = 67
CLIENT_OPCODE_INSPECTTRADE = 68
CLIENT_OPCODE_MARKETBROWSE = 69
CLIENT_OPCODE_JOINPARTY = 70
CLIENT_OPCODE_WALKSOUTHWEST = 71
CLIENT_OPCODE_AURA = 72
CLIENT_OPCODE_MARKETLEAVE = 73
CLIENT_OPCODE_WALKNORTH = 74
CLIENT_OPCODE_FOLLOW = 75
CLIENT_OPCODE_REQUESTQUESTLOG = 76
CLIENT_OPCODE_OPENOWNCHANNEL = 77
CLIENT_OPCODE_EXCLUDEFROMOWNCHANNEL = 78
CLIENT_OPCODE_LEAVECHANNEL = 80
CLIENT_OPCODE_BUYITEM = 81
CLIENT_OPCODE_CANCELATTACKANDFOLLOW = 82
CLIENT_OPCODE_USEONCREATURE = 84
CLIENT_OPCODE_TURNSOUTH = 85
CLIENT_OPCODE_JOINCHANNEL = 86
CLIENT_OPCODE_REQUESTCOINBALANCE = 87
CLIENT_OPCODE_OPENPRIVATECHANNEL = 88
CLIENT_OPCODE_ATTACK = 89
CLIENT_OPCODE_REQUESTQUESTLINE = 90
CLIENT_OPCODE_WING = 91
CLIENT_OPCODE_WALKWEST = 92
CLIENT_OPCODE_UPCONTAINER = 93
CLIENT_OPCODE_SELLITEM = 94
CLIENT_OPCODE_SHAREEXPERIENCE = 95
CLIENT_OPCODE_CHANGEFIGHTMODES = 96
CLIENT_OPCODE_USEITEM = 97
CLIENT_OPCODE_LOOK = 98
CLIENT_OPCODE_USEITEMWITH = 100
CLIENT_OPCODE_PROCESSES = 101
CLIENT_OPCODE_DLLS = 102
CLIENT_OPCODE_UUIDTOOLTIP = 103
CLIENT_OPCODE_PINGBACK = 121
CLIENT_OPCODE_PING = 120
CLIENT_OPCODE_NEWPING = 130
CLIENT_OPCODE_AWARERANGE = 131
CLIENT_OPCODE_NEWWALKING = 132