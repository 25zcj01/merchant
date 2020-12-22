   10  IF WIDTH < 80 THEN PRINT "Terminal too small to play the game. Set your terminal width to 80 or more." : END
   20  CLS
   30  RANDOMIZE TIMER
   40  PRINT CHR$(27) + "[48;5;232m" + "Loading.";
   50  DEF FND(X) = INT(RND(X))+1
   60  DIM GOODS(12)
   70  DIM GOODSNAME$(12)
   80  DIM GOODSWEIGHT(12)
   90  DIM MINPRICE(12)
  100  DIM MAXPRICE(12)
  110  GOODS(0) = 0 : GOODSNAME$(0) = "beer" : GOODSWEIGHT(0) = 10 : MINPRICE(0) = 7 : MAXPRICE(0) = 15
  120  GOODS(1) = 0 : GOODSNAME$(1) = "furs" : GOODSWEIGHT(1) = 8 : MINPRICE(1) = 10 : MAXPRICE(1) = 22
  130  GOODS(2) = 0 : GOODSNAME$(2) = "spices" : GOODSWEIGHT(2) = 2 : MINPRICE(2) = 50 : MAXPRICE(2) = 75
  140  GOODS(3) = 0 : GOODSNAME$(3) = "elixirs" : GOODSWEIGHT(3) = 3 : MINPRICE(3) = 60 : MAXPRICE(3) = 90
  150  GOODS(4) = 0 : GOODSNAME$(4) = "toods" : GOODSWEIGHT(4) = 3 : MINPRICE(4) = 20 : MAXPRICE(4) = 30
  160  GOODS(5) = 0 : GOODSNAME$(5) = "cotton" : GOODSWEIGHT(5) = 5 : MINPRICE(5) = 15 : MAXPRICE(5) = 28
  170  GOODS(6) = 0 : GOODSNAME$(6) = "gems" : GOODSWEIGHT(6) = 2 : MINPRICE(6) = 90 : MAXPRICE(6) = 115
  180  GOODS(7) = 0 : GOODSNAME$(7) = "marble" : GOODSWEIGHT(7) = 15 : MINPRICE(7) = 70 : MAXPRICE(7) = 120
  190  GOODS(8) = 0 : GOODSNAME$(8) = "wine" : GOODSWEIGHT(8) = 8 : MINPRICE(8) = 15 : MAXPRICE(8) = 30
  200  GOODS(9) = 0 : GOODSNAME$(9) = "fish" : GOODSWEIGHT(9) = 10 : MINPRICE(9) = 5 : MAXPRICE(9) = 12
  210  GOODS(10) = 0 : GOODSNAME$(10) = "iron ore" : GOODSWEIGHT(10) = 15 : MINPRICE(10) = 23 : MAXPRICE(10) = 55
  220  GOODS(11) = 0 : GOODSNAME$(11) = "copper ore" : GOODSWEIGHT(11) = 15 : MINPRICE(11) = 17 : MAXPRICE(11) = 40
  230  DIM BEER(17)
  240  DIM FURS(17)
  250  DIM SPICES(17)
  260  DIM ELIXIRS(17)
  270  DIM TOODS(17)
  280  DIM COTTON(17)
  290  DIM GEMS(17)
  300  DIM MARBLE(17)
  310  DIM WINE(17)
  320  DIM FISH(17)
  330  DIM IRONORE(17)
  340  DIM COPPERORE(17)
  350  REM Randomizing prices
  360  FOR I = 0 TO 16
  370  BEER(I) = FND(MAXPRICE(0)-MINPRICE(0))+MINPRICE(0)
  380  FURS(I) = FND(MAXPRICE(1)-MINPRICE(1))+MINPRICE(1)
  390  SPICES(I) = FND(MAXPRICE(2)-MINPRICE(2))+MINPRICE(2)
  400  ELIXIRS(I) = FND(MAXPRICE(3)-MINPRICE(3))+MINPRICE(3)
  410  TOODS(I) = FND(MAXPRICE(4)-MINPRICE(4))+MINPRICE(4)
  420  COTTON(I) = FND(MAXPRICE(5)-MINPRICE(5))+MINPRICE(5)
  430  GEMS(I) = FND(MAXPRICE(6)-MINPRICE(6))+MINPRICE(6)
  440  MARBLE(I) = FND(MAXPRICE(7)-MINPRICE(7))+MINPRICE(7)
  450  WINE(I) = FND(MAXPRICE(8)-MINPRICE(8))+MINPRICE(8)
  460  FISH(I) = FND(MAXPRICE(9)-MINPRICE(9))+MINPRICE(9)
  470  IRONORE(I) = FND(MAXPRICE(10)-MINPRICE(10))+MINPRICE(10)
  480  COPPERORE(I) = FND(MAXPRICE(11)-MINPRICE(11))+MINPRICE(11)
  490  NEXT I
  500  WINE(15) = 15
  510  IRONORE(1) = 18
  520  FISH(6) = 5
  530  GOLD = 250
  540  STRENGTH = 8
  550  DEXTERITY = 8
  560  ENDURANCE = 8
  570  CHARISMA = 8
  580  PLAYERX = 34
  590  PLAYERY = 21
  600  CURRENTCITY = 5
  610  LASTCITY$ = "Germont"
  620  ENEMY$ = "" : ENEMYHP = 0 : ENEMYATTACK = 0 : ENEMYGOLD = 0 : ENEMYEXPERIENCE = 0
  630  REM Monster stats
  640  DIM MONSTERNAME$(20)
  650  DIM MONSTERHP(20)
  660  DIM MONSTERATTACK(20)
  670  DIM MONSTERGOLD(20)
  680  DIM MONSTEREXPERIENCE(20)
  690  MONSTERNAME$(0) = "goblin" : MONSTERHP(0) = 10 : MONSTERATTACK(0) = 3 : MONSTERGOLD(0) = 0 : MONSTEREXPERIENCE(0) = 30
  700  MONSTERNAME$(1) = "hobgoblin" : MONSTERHP(1) = 15 : MONSTERATTACK(1) = 5 : MONSTERGOLD(1) = 10 : MONSTEREXPERIENCE(1) = 50
  710  MONSTERNAME$(2) = "rabid dog" : MONSTERHP(2) = 5 : MONSTERATTACK(2) = 2 : MONSTERGOLD(2) = 0 : MONSTEREXPERIENCE(2) = 20
  720  MONSTERNAME$(3) = "wolf" : MONSTERHP(3) = 25 : MONSTERATTACK(3) = 5 : MONSTERGOLD(3) = 0 : MONSTEREXPERIENCE(3) = 70
  730  MONSTERNAME$(4) = "dire wolf" : MONSTERHP(4) = 40 : MONSTERATTACK(4) = 10 : MONSTERGOLD(4) = 0 : MONSTEREXPERIENCE(4) = 150
  740  MONSTERNAME$(5) = "warewolf" : MONSTERHP(5) = 60 : MONSTERATTACK(5) = 15 : MONSTERGOLD(5) = 0 : MONSTEREXPERIENCE(5) = 250
  750  MONSTERNAME$(6) = "kobold" : MONSTERHP(6) = 8 : MONSTERATTACK(6) = 2 : MONSTERGOLD(6) = 0 : MONSTEREXPERIENCE(6) = 25
  760  MONSTERNAME$(7) = "bandit" : MONSTERHP(7) = 20 : MONSTERATTACK(7) = 5 : MONSTERGOLD(7) = 30 : MONSTEREXPERIENCE(7) = 60
  770  MONSTERNAME$(8) = "barbarian" : MONSTERHP(8) = 30 : MONSTERATTACK(8) = 7 : MONSTERGOLD(8) = 50 : MONSTEREXPERIENCE(8) = 100
  780  MONSTERNAME$(9) = "skeleton" : MONSTERHP(9) = 15 : MONSTERATTACK(9) = 3 : MONSTERGOLD(9) = 0 : MONSTEREXPERIENCE(9) = 40
  790  MONSTERNAME$(10) = "zombie" : MONSTERHP(10) = 25 : MONSTERATTACK(10) = 5 : MONSTERGOLD(10) = 0 : MONSTEREXPERIENCE(10) = 75
  800  MONSTERNAME$(11) = "dire bear" : MONSTERHP(11) = 40 : MONSTERATTACK(11) = 15 : MONSTERGOLD(11) = 0 : MONSTEREXPERIENCE(11) = 200
  810  MONSTERNAME$(12) = "forest troll" : MONSTERHP(12) = 80 : MONSTERATTACK(12) = 20 : MONSTERGOLD(12) = 0 : MONSTEREXPERIENCE(12) = 400
  820  MONSTERNAME$(13) = "half-ogre" : MONSTERHP(13) = 40 : MONSTERATTACK(13) = 10 : MONSTERGOLD(13) = 100 : MONSTEREXPERIENCE(13) = 150
  830  MONSTERNAME$(14) = "dwarven outlaw" : MONSTERHP(14) = 30 : MONSTERATTACK(14) = 7 : MONSTERGOLD(14) = 40 : MONSTEREXPERIENCE(14) = 110
  840  MONSTERNAME$(15) = "young vampire" : MONSTERHP(15) = 70 : MONSTERATTACK(15) = 20 : MONSTERGOLD(15) = 150 : MONSTEREXPERIENCE(15) = 350
  850  MONSTERNAME$(16) = "ghul" : MONSTERHP(16) = 30 : MONSTERATTACK(16) = 8 : MONSTERGOLD(16) = 0 : MONSTEREXPERIENCE(16) = 125
  860  MONSTERNAME$(17) = "harpy" : MONSTERHP(17) = 40 : MONSTERATTACK(17) = 10 : MONSTERGOLD(17) = 0 : MONSTEREXPERIENCE(17) = 160
  870  MONSTERNAME$(18) = "cannibal" : MONSTERHP(18) = 20 : MONSTERATTACK(18) = 5 : MONSTERGOLD(18) = 0 : MONSTEREXPERIENCE(18) = 60
  880  MONSTERNAME$(19) = "giant rat" : MONSTERHP(19) = 8 : MONSTERATTACK(19) = 2 : MONSTERGOLD(19) = 0 : MONSTEREXPERIENCE(19) = 30
  890  DEFENSE = 0
  900  CLS
  910  PRINT CHR$(27) + "[48;5;232m" + "Loading..";
  920  DIM CITYNAME$(17)
  930  CITYNAME$(0) = "Garren's Well"
  940  CITYNAME$(1) = "Whitewick"
  950  CITYNAME$(2) = "Grimstall"
  960  CITYNAME$(3) = "Thronmouth"
  970  CITYNAME$(4) = "Deerford"
  980  CITYNAME$(5) = "Germont"
  990  CITYNAME$(6) = "Sleekfalls"
 1000  CITYNAME$(7) = "Arrowhaven"
 1010  CITYNAME$(8) = "Nightshield"
 1020  CITYNAME$(9) = "Deervein"
 1030  CITYNAME$(10) = "Rustmere"
 1040  CITYNAME$(11) = "Summerhelm"
 1050  CITYNAME$(12) = "Borroux"
 1060  CITYNAME$(13) = "Bellogne"
 1070  CITYNAME$(14) = "Toodsburg"
 1080  CITYNAME$(15) = "Sarris"
 1090  CITYNAME$(16) = "Oakenshire"
 1100  DIM CITYLOCATION$(17)
 1110  CITYLOCATION$(0) = "17:12"
 1120  CITYLOCATION$(1) = "40:10"
 1130  CITYLOCATION$(2) = "58:13"
 1140  CITYLOCATION$(3) = "28:15"
 1150  CITYLOCATION$(4) = "42:17"
 1160  CITYLOCATION$(5) = "34:21"
 1170  CITYLOCATION$(6) = "60:23"
 1180  CITYLOCATION$(7) = "19:25"
 1190  CITYLOCATION$(8) = "32:27"
 1200  CITYLOCATION$(9) = "43:27"
 1210  CITYLOCATION$(10) = "61:30"
 1220  CITYLOCATION$(11) = "44:32"
 1230  CITYLOCATION$(12) = "33:35"
 1240  CITYLOCATION$(13) = "17:39"
 1250  CITYLOCATION$(14) = "38:41"
 1260  CITYLOCATION$(15) = "49:38"
 1270  CITYLOCATION$(16) = "62:40"
 1280  DIM MERCPRICE(17)
 1290  DIM WORKERSPRICE(17)
 1300  DIM MAGEPRICE(17)
 1310  FOR I = 0 TO 16
 1320  MERCPRICE(I) = FND(40) + 30
 1330  WORKERSPRICE(I) = FND(20) + 10
 1340  MAGEPRICE(I) = FND(400) + 300
 1350  NEXT I
 1360  MAGEPRICE(8) = 410
 1370  WEAPON$ = "no weapon"
 1380  ARMOR$ = "no armor"
 1390  ATTACK = 0
 1400  DEFENSE = 0
 1410  DIM DAGGERPRICE(17)
 1420  DIM SHORTSPRICE(17)
 1430  DIM LONGSPRICE(17)
 1440  DIM BASTARDSPRICE(17)
 1450  DIM TWOHSPRICE(17)
 1460  DIM MAGICSPRICE(17)
 1470  DIM LEATHERAPRICE(17)
 1480  DIM CHAINMAILPRICE(17)
 1490  DIM PLATEARMORPRICE(17)
 1500  DIM MAGICAPRICE(17)
 1510  FOR I = 0 TO 16
 1520  DAGGERPRICE(I) = FND(10) + 5
 1530  SHORTSPRICE(I) = FND(30) + 15
 1540  LONGSPRICE(I) = FND(50) + 100
 1550  BASTARDSPRICE(I) = FND(100) + 200
 1560  TWOHSPRICE(I) = FND(200) + 300
 1570  MAGICSPRICE(I)= FND(500) + 1000
 1580  LEATHERAPRICE(I) = FND(20) + 20
 1590  CHAINMAILPRICE(I) = FND(100) + 150
 1600  PLATEARMORPRICE(I) = FND(400) + 400
 1610  MAGICAPRICE(I) = FND(1000) + 1500
 1620  NEXT I
 1630  EXPERIENCE = 0
 1640  LEVEL = 1
 1650  MAXCAPACITY = 0
 1660  CAPACITY = 0
 1670  PEOPLE = 0
 1680  WORKERS = 0
 1690  MAGES = 0
 1700  MERCENARIES = 0
 1710  BUMMAP = 0
 1720  BUMTREASURE = 0
 1730  DEATHCAUSE$ = ""
 1740  DIM CITYDESC$(17)
 1750  CITYDESC$(0) = ", a small town located near the forest."
 1760  CITYDESC$(1) = ", a small mining town in the northern mountains."
 1770  CITYDESC$(2) = ", a large and noisy port city."
 1780  CITYDESC$(3) = ", a city famous for its 450-years old stone castle."
 1790  CITYDESC$(4) = ", a large city located at the crossroads of trade routes."
 1800  CITYDESC$(5) = ", a big, crowded city full of shops and taverns."
 1810  CITYDESC$(6) = ", a small fishing village."
 1820  CITYDESC$(7) = ", a small city still recovering after dragon attack."
 1830  CITYDESC$(8) = ", a large city famous for its mages' academy."
 1840  CITYDESC$(9) = ", the capital city of Voteron Kingdom."
 1850  CITYDESC$(10) = ", a seaside town with large port and shipyard."
 1860  CITYDESC$(11) = ", an infamous city where the thieves' guild is located."
 1870  CITYDESC$(12) = ", an old city with the largest temple in the country."
 1880  CITYDESC$(13) = ", a small town, inhabited mostly by elves."
 1890  CITYDESC$(14) = ", a large city known for the best toods in the kingdom."
 1900  CITYDESC$(15) = ", a small city famous for its winery."
 1910  CITYDESC$(16) = ", a large, wealthy seaside city."
 1920  CLS
 1930  PRINT CHR$(27) + "[48;5;232m" + "Loading...";
 1940  KEK$ = CHR$(27) + "[48;5;088m" + " " + CHR$(27) + "[48;5;232m"
 1950  DIM MMAP$(48)
 1960  DIM MAP$(48)
 1970  MAP$(0) = ".......................................~~~....................................,~"
 1980  MAP$(1) = ".........................................~~..................................,~~"
 1990  MAP$(2) = ".............^^^^^^^^^^^^^^^..............~~.................................,~~"
 2000  MAP$(3) = "...........^^^^^^^^^^^^^^^^^^^~~~~~~~......~~.......^^^^^^^^................,~~~"
 2010  MAP$(4) = ".........^^^^^^^^^^^^^^^^^^^^^^^^...~~~~~...~....^^^^^^^^^^^^^^^...........,~~~~"
 2020  MAP$(5) = "...........^^^^^^^^^^^^^^^^^^^..........~~~~~~.^^^^^^^^^^^^^^^^^^^.........,~~~~"
 2030  MAP$(6) = ".......ttt...................................~~~~~^^^^^^^^^^D^^^^^^......,~~~~~~"
 2040  MAP$(7) = "......ttttttt......................^^^^^^^^^^^^^.~~~......^^#^^^^^^....,~~~~~~~~"
 2050  MAP$(8) = ".......ttttttt..................^^^^^^^^^^^^^^^^^^..~~......#.........,~~~~~~~~~"
 2060  MAP$(9) = "........ttttttt..............^^^^^^^^^^O^^^^^^^^^^^..~,..####........,~~~~~~~~~~"
 2070  MAP$(10)= "..........ttttt......................^^#^^^^^^^^^....~~~.#......,,,,,~~~~~~~~~~~"
 2080  MAP$(11)= "............tt..O##....................#...............~~#~,,,,,~~~,~~~~~~~~~~~~"
 2090  MAP$(12)= "..................#####................#.................O~~~~~~~~~~~~~~~~~~~~~~"
 2100  MAP$(13)= "......................####.............###...............#.,~~~~~~~~~~~~~~~~~~~~"
 2110  MAP$(14)= ".........................##O####.........#.............###.,~~~~~~~~~~~~~~~~~~~~"
 2120  MAP$(15)= "...............tttttt..........######....#.............#....,,~~~~~~~~~~~~~~~~~~"
 2130  MAP$(16)= ".............tttttttttt........#....#####O####......####......,,~~~~~~~~~~~~~~~~"
 2140  MAP$(17)= "...........ttttttttttt.........#.........#...########..........,~~~~~~~~~~~~~~~~"
 2150  MAP$(18)= "..........tttttttttttttt.......###.......#.......#............,~~~~~~~~~~~~~~~~~"
 2160  MAP$(19)= "..............ttttttttttt........#...#####.......####........,~~~~~~~~~~~~~~~~~~"
 2170  MAP$(20)= "..............tttttttttttt.......O####...#..........#.......,~~~~~~~~~~~~~~~~~~~"
 2180  MAP$(21)= "...tttt........tttttttttt........#.......#..........####...,~~~~~~~~~~~~~~~~~~~~"
 2190  MAP$(22)= "..ttttttt........tttt............#.......#.............####O~~~~~~~~~~~~~,,,,~~~"
 2200  MAP$(23)= "..ttttttt......................###.ttt...#..............#..,~~~~~~~~~~~~,....,~~"
 2210  MAP$(24)= "..ttttttttt.......O###.........#..tttttt.##.............##,~~~~~~~~~~~~,.....,~~"
 2220  MAP$(25)= "...ttttttt...........###.......#...ttttt..#..............#.,~~~~~~~~~~~~,O,,,~~~"
 2230  MAP$(26)= ".....tttt..............########O....ttttt.O#####.........#.,~~~~~~~~~~~~~~~~~~~~"
 2240  MAP$(27)= "...............................#.....ttt..#....#####.....##.,~~~~~~~~~~~~~~~~~~~"
 2250  MAP$(28)= "...............................##.........##.......#####..#.,~~~~~~~~~~~~~~~~~~~"
 2260  MAP$(29)= ".......ttt......................#..........#...........#####O~~~~~~~~~~~~~~~~~~~"
 2270  MAP$(30)= "......ttttt........tttt.........####.......#...........#....,~~~~~~~~~~~~~~~~~~~"
 2280  MAP$(31)= "........tttt......ttttt.........#..########O...........#.....,~~~~~~~~~~~~~~~~~~"
 2290  MAP$(32)= "..........ttt.....tttttt........#..........#.........###....,~~~~~~~~~~~~~~~~~~~"
 2300  MAP$(33)= "....................tttttt......#..........##........#.....,~~~~~~~~~~~~~~~~~~~~"
 2310  MAP$(34)= "......................ttt.....##O...........#.......##.....,~~~~~~~~~~~~~~~~~~~~"
 2320  MAP$(35)= "............................###.............#.......#.....,~~~~~~~~~~~~~~~~~~~~~"
 2330  MAP$(36)= "..........tttt............###...............##....###......,~~~~~~~~~~~~~~~~~~~~"
 2340  MAP$(37)= "........ttttttt....########..................###O##.........,~~~~~~~~~~~~~~~~~~~"
 2350  MAP$(38)= ".......ttttttt..O###......###.............####....######....,~~~~~~~~~~~~~~~~~~~"
 2360  MAP$(39)= ".........tttt...............####......#####............######O~~~~~~~~~~~~~~~~~~"
 2370  MAP$(40)= "...............................######O#....................~~~~~~~~~~~~~~~~~~~~~"
 2380  MAP$(41)= ".......................ttt.....................~~~~~......~~.,~~~~~~~~~~~~~~~~~~"
 2390  MAP$(42)= ".....................tttttt..............~~~~~~~...~~~.,,~~..,~~~~~~~~~~~~~~~~~~"
 2400  MAP$(43)= ".......ttt..........tttttttt..........~~~~.ttttttt...~~~~~....,~~~~~~~~~~~~~~~~~"
 2410  MAP$(44)= "......ttttt..........tttttt....~~~~~~~~..tttttttttt............,~~~~~~~~~~~~~~~~"
 2420  MAP$(45)= "....ttttttttt..........ttt..~~~~ttt.......ttttttt............,~~~~~~~~~~~~~~~~~~"
 2430  MAP$(46)= ".....tttttt...............~~...ttttt.........................,~~~~~~~~~~~~~~~~~~"
 2440  MAP$(47)= "......tttttt............~~~...ttttttt........................,~~~~~~~~~~~~~~~~~~"
 3020  REM Adding colors
 3030  FOR I = 0 TO 47
 3040  FOR J = 1 TO 80
 3050  X$ = MID$(MAP$(I),J,1)
 3060  IF X$ = "." THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;076m" + X$
 3070  IF X$ = "t" THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;023m" + X$
 3080  IF X$ = "#" THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;094m" + X$
 3090  IF X$ = "~" THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;051m" + X$
 3100  IF X$ = "O" THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;088m" + X$
 3110  IF X$ = "^" THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;240m" + X$
 3120  IF X$ = "D" THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;142m" + X$
 3130  IF X$ = "," THEN MMAP$(I) = MMAP$(I) + CHR$(27) + "[38;5;222m" + "."
 3140  NEXT J
 3150  NEXT I
 3160  CLS
 3170  PRINT CHR$(27) + "[38;5;28m" + TAB$(3) + "                     Programmed in TeleBASIC by Keks                  "
 3175  PRINT CHR$(27) + "[38;5;28m" + TAB$(3) + "                     Minor   Improvements   by   ZCJ                  "
 3180  PRINT CHR$(27) + "[38;5;142m"
 3190  PRINT ""
 3200  PRINT ""
 3210  PRINT TAB$(3) + " ____    ____                       __                       _    _       "
 3220  PRINT TAB$(3) + "|_   \  /   _|                     [  |                     / |_ | |      "
 3230  PRINT TAB$(3) + "  |   \/   |  .---.  _ .--.  .---.  | |--.   ,--.   _ .--. `| |-'\_|.--.  "
 3240  PRINT TAB$(3) + "  | |\  /| | / /__\\[ `/'`\]/ /'`\] | .-. | `'_\ : [ `.-. | | |    ( (`\] "
 3250  PRINT TAB$(3) + " _| |_\/_| |_| \__., | |    | \__.  | | | | // | |, | | | | | |,    `'.'. "
 3260  PRINT TAB$(3) + "|_____||_____|'.__.'[___]   '.___.'[___]|__]\'-;__/[___||__]\__/   [\__) )"
 3270  PRINT TAB$(3) + "                    ___                            _                      "
 3280  PRINT TAB$(3) + "                  .'   `.                         / |_                    "
 3290  PRINT TAB$(3) + "                 /  .-.  \  __   _   .---.  .--. `| |-'                   "
 3300  PRINT TAB$(3) + "                 | |   | | [  | | | / /__\\( (`\] | |                     "
 3310  PRINT TAB$(3) + "                 \  `-'  \_ | \_/ |,| \__., `'.'. | |,                    "
 3320  PRINT TAB$(3) + "                  `.___.\__|'.__.'_/ '.__.'[\__) )\__/                    "
 3330  PRINT TAB$(3) + "                                                                          "
 3340  PRINT TAB$(3) + "                                                                          "
 3350  PRINT TAB$(3) + "                                                                          "
 3360  PRINT CHR$(27) + "[38;5;28m" + TAB$(3) + "                              Press Enter                           "
 3370  INPUT " ", DUMPP$
 3380  PRINT CHR$(27) + "[38;5;214m"
 3390  PRINT "  After over 400 years of peace, the Voteron Kingdom was attacked by a dragon.  "
 3400  PRINT "The dreadful beast destroyed a few cities and flee to mountains in northeastern"
 3410  PRINT "  part of country. Several warriors, wizards and other heroes tried to kill    "
 3420  PRINT "the dragon in its lair, but failed. The king of Voteron offered half a million "
 3430  PRINT "  gold pieces for slaying the dragon. You never considered yourself a hero,    "
 3440  PRINT "but you always loved money, so you decided to do it. You aren't powerful enough"
 3450  PRINT "  to become a monster-hunter, but you plan to hire a group of mercenaries to   "
 3460  PRINT "  help you with this task. All you need is make enough good deals to afford    "
 3470  PRINT "                            a small private army.                              "
 3480  PRINT CHR$(27) + "[38;5;252m" + ""
 3490  REM Creating new character
 3500  INPUT "What is your name? ", NAME$
 3510  IF NAME$ = "" THEN NAME$ = USER$
 3520  IF LEN(NAME$) > 10 THEN NAME$ = LEFT$(NAME$, 10)
 3530  PRINT "Are you a " + CHR$(27) + "[38;5;051m[h]" + CHR$(27) + "[38;5;252muman, a " + CHR$(27) + "[38;5;051m[d]";
 3540  PRINT CHR$(27) + "[38;5;252mwarf, an " + CHR$(27) + "[38;5;051m[o]" + CHR$(27) + "[38;5;252mrc or an " + CHR$(27) + "[38;5;051m[e]" + CHR$(27) + "[38;5;252mlf?"
 3550  INPUT "", RACE$
 3560  IF RACE$ = "" THEN RACE$ = " "
 3570  RACE$ = LEFT$(RACE$,1)
 3580  RACE$ = UPS$(RACE$)
 3590  IF (RACE$ <> "H") AND (RACE$ <> "D") AND (RACE$ <> "O") AND (RACE$ <> "E") THEN GOTO 3530
 3600  IF RACE$ = "H" THEN CHARISMA = 12
 3610  IF RACE$ = "D" THEN ENDURANCE = 12
 3620  IF RACE$ = "O" THEN STRENGTH = 12
 3630  IF RACE$ = "E" THEN DEXTERITY = 12
 3640  MAXHP = 10 + ENDURANCE
 3650  HP = MAXHP
 3660  MAXCAPACITY = STRENGTH * 5
 3670  REM
 3680  REM Drawing an automap
 3690  CLS
 3700  PRINT STRING$(80,KEK$)
 3710  FOR I = 0 TO 12
 3720  PRINT KEK$;
 3730  IF I = 6 THEN PRINT MID$(MMAP$(PLAYERY-1),(PLAYERX-16)*12+1,15*12) + CHR$(27) + "[48;5;247m" + MID$(MMAP$(PLAYERY-1),(PLAYERX-1)*12+1,12) + CHR$(27) + "[48;5;232m" + MID$(MMAP$(PLAYERY-1),(PLAYERX)*12+1,15*12) + KEK$;
 3740  IF I <> 6 THEN PRINT MID$(MMAP$(I + PLAYERY - 7),(PLAYERX-16)*12+1,31*12) + KEK$;
 3750  IF I > 0 AND GOODS(I-1) = 0 THEN PRINT CHR$(27) + "[38;5;252m" + TAB$(4) + GOODSNAME$(I-1) + ": " + STR$(GOODS(I-1))
 3760  IF I > 0 AND GOODS(I-1) > 0 THEN PRINT CHR$(27) + "[38;5;214m" + TAB$(4) + GOODSNAME$(I-1) + ": " + STR$(GOODS(I-1))
 3770  IF I = 0 THEN PRINT CHR$(27) + "[38;5;28m" + TAB$(4) + "GOODS:"
 3780  NEXT I
 3790  PRINT STRING$(80,KEK$)
 3800  FOR I = 2 to 14
 3810  LOCATE I,80
 3820  PRINT KEK$;
 3830  LOCATE I, 55
 3840  PRINT KEK$
 3850  NEXT I
 3860  LOCATE 2,58
 3870  PRINT CHR$(27) + "[38;5;214m" + NAME$
 3880  LOCATE 3,58
 3890  PRINT "Level: " + STR$(LEVEL)
 3900  LOCATE 4,58
 3910  PRINT "Experience: " + STR$(EXPERIENCE)
 3920  LOCATE 5,58
 3930  PRINT "HP: " + STR$(HP) + "/" + STR$(MAXHP)
 3940  LOCATE 6,58
 3950  PRINT "Strength: " + STR$(STRENGTH)
 3960  LOCATE 7,58
 3970  PRINT "Dexterity: " + STR$(DEXTERITY)
 3980  LOCATE 8,58
 3990  PRINT "Endurance: " + STR$(ENDURANCE)
 4000  LOCATE 9,58
 4010  PRINT "Charisma: " + STR$(CHARISMA)
 4020  LOCATE 11,58
 4030  PRINT "Gold: " + STR$(GOLD)
 4040  LOCATE 12,58
 4050  PRINT "W: " + WEAPON$
 4060  LOCATE 13, 58
 4070  PRINT "A: " + ARMOR$
 4080  LOCATE 16,1
 4090  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "#" THEN GOTO 4560
 4100  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "D" THEN GOTO 4560
 4110  FOR I = 0 to 16
 4120  IF STR$(PLAYERX) + ":" + STR$(PLAYERY) = CITYLOCATION$(I) THEN CURRENTCITY = I
 4130  NEXT I
 4140  IF CITYNAME$(CURRENTCITY) = LASTCITY$ THEN GOTO 4560 : REM Skip the lines below
 4150  REM Random price fluctuations
 4160  REM
 4170  FOR I = 0 TO 16
 4180  BEER(I) = BEER(I) + (FND(2) * (FND(3) - 2))
 4190  IF BEER(I) > MAXPRICE(0) THEN BEER(I) = MAXPRICE(0)
 4200  IF BEER(I) < MINPRICE(0) THEN BEER(I) = MINPRICE(0)
 4210  FURS(I) = FURS(I)  + (FND(3) * (FND(3) - 2))
 4220  IF FURS(I) > MAXPRICE(1) THEN FURS(I) = MAXPRICE(1)
 4230  IF FURS(I) < MINPRICE(1) THEN FURS(I) = MINPRICE(1)
 4240  SPICES(I) = SPICES(I) + (FND(6) * (FND(3) - 2))
 4250  IF SPICES(I) > MAXPRICE(2) THEN SPICES(I) = MAXPRICE(2)
 4260  IF SPICES(I) < MINPRICE(2) THEN SPICES(I) = MINPRICE(2)
 4270  ELIXIRS(I) = ELIXIRS(I) + (FND(7) * (FND(3) - 2))
 4280  IF ELIXIRS(I) > MAXPRICE(3) THEN ELIXIRS(I) = MAXPRICE(3)
 4290  IF ELIXIRS(I) < MINPRICE(3) THEN ELIXIRS(I) = MINPRICE(3)
 4300  TOODS(I) = TOODS(I) + (FND(3) * (FND(3) - 2))
 4310  IF TOODS(I) > MAXPRICE(4) THEN TOODS(I) = MAXPRICE(4)
 4320  IF TOODS(I) < MINPRICE(4) THEN TOODS(I) = MINPRICE(4)
 4330  COTTON(I) = COTTON(I) + (FND(3) * (FND(3) - 2))
 4340  IF COTTON(I) > MAXPRICE(5) THEN COTTON(I) = MAXPRICE(5)
 4350  IF COTTON(I) < MINPRICE(5) THEN COTTON(I) = MINPRICE(5)
 4360  GEMS(I) = GEMS(I) + (FND(10) * (FND(3) - 2))
 4370  IF GEMS(I) > MAXPRICE(6) THEN GEMS(I) = MAXPRICE(6)
 4380  IF GEMS(I) < MINPRICE(6) THEN GEMS(I) = MINPRICE(6)
 4390  MARBLE(I) = MARBLE(I) + (FND(9) * (FND(3) - 2))
 4400  IF MARBLE(I) > MAXPRICE(7) THEN MARBLE(I) = MAXPRICE(7)
 4410  IF MARBLE(I) < MINPRICE(7) THEN MARBLE(I) = MINPRICE(7)
 4420  WINE(I) = WINE(I) + (FND(3) * (FND(3) - 2))
 4430  IF WINE(I) > MAXPRICE(8) THEN WINE(I) = MAXPRICE(8)
 4440  IF WINE(I) < MINPRICE(8) THEN WINE(I) = MINPRICE(8)
 4450  FISH(I) = FISH(I) + (FND(2) * (FND(3) - 2))
 4460  IF FISH(I) > MAXPRICE(9) THEN FISH(I) = MAXPRICE(9)
 4470  IF FISH(I) < MINPRICE(9) THEN FISH(I) = MINPRICE(9)
 4480  IRONORE(I) = IRONORE(I) + (FND(4) * (FND(3) - 2))
 4490  IF IRONORE(I) > MAXPRICE(10) THEN IRONORE(I) = MAXPRICE(10)
 4500  IF IRONORE(I) < MINPRICE(10) THEN IRONORE(I) = MINPRICE(10)
 4510  COPPERORE(I) = COPPERORE(I) + (FND(3) * (FND(3) - 2))
 4520  IF COPPERORE(I) > MAXPRICE(11) THEN COPPERORE(I) = MAXPRICE(11)
 4530  IF COPPERORE(I) < MINPRICE(11) THEN COPPERORE(I) = MINPRICE(11)
 4540  NEXT I
 4550  LASTCITY$=CITYNAME$(CURRENTCITY)
 4560  IF HEIGHT > 25 THEN PRINT ""
 4570  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" THEN PRINT CHR$(27) + "[38;5;252m" + "You are in " + CITYNAME$(CURRENTCITY) + CITYDESC$(CURRENTCITY)
 4580  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "#" THEN PRINT CHR$(27) + "[38;5;252m" + "You are on a road."
 4590  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "D" THEN PRINT CHR$(27) + "[38;5;252m" + "You are at the entrance to the dragon's cave."
 4600  PEOPLE = MERCENARIES + WORKERS + MAGES
 4610  IF PEOPLE = 0 THEN PRINT "You are alone."
 4620  IF PEOPLE = 1 THEN PRINT "There is one person with you: ";
 4630  IF PEOPLE = 1 AND MAGES = 1 THEN PRINT "a mage."
 4640  IF PEOPLE = 1 AND MERCENARIES = 1 THEN PRINT "a mercenary."
 4650  IF PEOPLE = 1 AND WORKERS = 1 THEN PRINT "a worker."
 4660  IF PEOPLE > 1 THEN PRINT "There are " + STR$(PEOPLE) " people with you: ";
 4670  IF PEOPLE > 1 AND WORKERS = 0 AND MERCENARIES = 1 AND MAGES = 1 THEN PRINT "one mercenary and one mage."
 4680  IF PEOPLE > 1 AND WORKERS = 1 AND MERCENARIES = 0 AND MAGES = 1 THEN PRINT "one laborer and one mage."
 4690  IF PEOPLE > 1 AND WORKERS = 1 AND MERCENARIES = 1 AND MAGES = 0 THEN PRINT "one worker and one mercenary."
 4700  IF PEOPLE > 1 AND WORKERS = 1 AND MERCENARIES = 1 AND MAGES = 1 THEN PRINT "one worker, one mercenary and one mage."
 4710  IF PEOPLE > 1 AND WORKERS > 1 AND MERCENARIES = 1 AND MAGES = 1 THEN PRINT STR$(WORKERS) + " workers, one mercenary and one mage."
 4720  IF PEOPLE > 1 AND WORKERS > 1 AND MERCENARIES = 1 AND MAGES = 0 THEN PRINT STR$(WORKERS) + " workers and one mercenary."
 4730  IF PEOPLE > 1 AND WORKERS > 1 AND MERCENARIES = 0 AND MAGES = 0 THEN PRINT "all of them are workers."
 4740  IF PEOPLE > 1 AND WORKERS > 1 AND MERCENARIES = 0 AND MAGES = 1 THEN PRINT STR$(WORKERS) + " workers and one mage."
 4750  IF PEOPLE > 1 AND WORKERS = 1 AND MERCENARIES > 1 AND MAGES = 1 THEN PRINT "one worker, " + STR$(MERCENARIES) + " mercenaries and one mage."
 4760  IF PEOPLE > 1 AND WORKERS = 1 AND MERCENARIES > 1 AND MAGES = 0 THEN PRINT "one worker and " + STR$(MERCENARIES) + " mercenaries."
 4770  IF PEOPLE > 1 AND WORKERS > 1 AND MERCENARIES > 1 AND MAGES = 1 THEN PRINT STR$(WORKERS) + " workers, " + STR$(MERCENARIES) + " mercenaries and one mage."
 4780  IF PEOPLE > 1 AND WORKERS > 1 AND MERCENARIES > 1 AND MAGES = 0 THEN PRINT STR$(WORKERS) + " workers and " + STR$(MERCENARIES) + " mercenaries."
 4790  IF PEOPLE > 1 AND WORKERS = 0 AND MERCENARIES > 1 AND MAGES = 0 THEN PRINT "all of them are mercenaries."
 4800  IF PEOPLE > 1 AND WORKERS = 0 AND MERCENARIES > 1 AND MAGES = 1 THEN PRINT STR$(MERCENARIES) + " mercenaries and one mage."
 4810  IF MAGES > 1 THEN PRINT "Software failure. Press enter to continue." : PRINT "Guru Meditation #0000009,0000AB71" : INPUT DUMPP$ : END
 4820  MAXCAPACITY = STRENGTH * 5 + WORKERS * 30
 4830  CAPACITY = 0
 4840  FOR I = 0 TO 11
 4850  CAPACITY = CAPACITY + GOODS(I)*GOODSWEIGHT(I)
 4860  NEXT I
 4870  IF WORKERS = 0 THEN PRINT "You carry " + STR$(CAPACITY) + " kg.";
 4880  IF WORKERS = 1 THEN PRINT "You and your worker carry " + STR$(CAPACITY) + " kg.";
 4890  IF WORKERS > 1 THEN PRINT "You and your workers carry " + STR$(CAPACITY) + " kg.";
 4900  PRINT " Your maximum carrying capacity is " + STR$(MAXCAPACITY) + " kg."
 4910  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "D" THEN GOSUB 9970
 4920  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "#" THEN GOSUB 8250
 4930  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" THEN PRINT "You can visit:"
 4940  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" THEN PRINT CHR$(27) + "[38;5;051m[1]" + CHR$(27) + "[38;5;252m a market"
 4950  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" THEN PRINT CHR$(27) + "[38;5;051m[2]" + CHR$(27) + "[38;5;252m an inn"
 4960  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" THEN PRINT CHR$(27) + "[38;5;051m[3]" + CHR$(27) + "[38;5;252m a blacksmith"
 4970  REM
 4980  REM
 4990  IF HEIGHT > 25 THEN PRINT ""
 5000  REM Travel options
 5010  PRINT "You can go: ";
 5020  NORTH = 0 : SOUTH = 0 : EAST = 0 : WEST = 0
 5030  IF MID$(MAP$(PLAYERY-2),PLAYERX,1) = "#" OR MID$(MAP$(PLAYERY-2),PLAYERX,1) = "O" OR MID$(MAP$(PLAYERY-2),PLAYERX,1) = "D" THEN NORTH = 1 : PRINT CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252morth ";
 5040  IF MID$(MAP$(PLAYERY),PLAYERX,1) = "#" OR MID$(MAP$(PLAYERY),PLAYERX,1) = "O" OR MID$(MAP$(PLAYERY),PLAYERX,1) = "D" THEN SOUTH = 1 : PRINT CHR$(27) + "[38;5;051m[s]" + CHR$(27) + "[38;5;252mouth ";
 5050  IF MID$(MAP$(PLAYERY-1),PLAYERX-1,1) = "#" OR MID$(MAP$(PLAYERY-1),PLAYERX-1,1) = "O" OR MID$(MAP$(PLAYERY-1),PLAYERX-1,1) = "D" THEN WEST = 1 : PRINT CHR$(27) + "[38;5;051m[w]" + CHR$(27) + "[38;5;252mest ";
 5060  IF MID$(MAP$(PLAYERY-1),PLAYERX+1,1) = "#" OR MID$(MAP$(PLAYERY-1),PLAYERX+1,1) = "O" OR MID$(MAP$(PLAYERY-1),PLAYERX+1,1) = "D" THEN EAST = 1 : PRINT CHR$(27) + "[38;5;051m[e]" + CHR$(27) + "[38;5;252mest ";
 5070  PRINT "or look at the " + CHR$(27) + "[38;5;051m[m]" + CHR$(27) + "[38;5;252map.";
 5080  PRINT ""
 5090  INPUT "Your choice: ", CHOICE$
 5100  CHOICE$ = UPS$(CHOICE$)
 5110  IF NORTH = 1 AND (CHOICE$ = "N" OR CHOICE$ = "GO NORTH" OR CHOICE$ = "NORTH") THEN PLAYERY = PLAYERY - 1 : GOTO 3680
 5120  IF SOUTH = 1 AND (CHOICE$ = "S" OR CHOICE$ = "GO SOUTH" OR CHOICE$ = "SOUTH") THEN PLAYERY = PLAYERY + 1 : GOTO 3680
 5130  IF WEST = 1 AND (CHOICE$ = "W" OR CHOICE$ = "GO WEST" OR CHOICE$ = "WEST") THEN PLAYERX = PLAYERX - 1 : GOTO 3680
 5140  IF EAST = 1 AND (CHOICE$ = "E" OR CHOICE$ = "GO EAST" OR CHOICE$ = "EAST") THEN PLAYERX = PLAYERX + 1 : GOTO 3680
 5150  IF NORTH = 0 AND (CHOICE$ = "N" OR CHOICE$ = "GO NORTH" OR CHOICE$ = "NORTH") THEN PRINT "You can't go north." : GOTO 4930
 5160  IF SOUTH = 0 AND (CHOICE$ = "S" OR CHOICE$ = "GO SOUTH" OR CHOICE$ = "SOUTH") THEN PRINT "You can't go south." : GOTO 4930
 5170  IF WEST = 0 AND (CHOICE$ = "W" OR CHOICE$ = "GO WEST" OR CHOICE$ = "WEST") THEN PRINT "You can't go west." : GOTO 4930
 5180  IF EAST = 0 AND (CHOICE$ = "E" OR CHOICE$ = "GO EAST" OR CHOICE$ = "EAST") THEN PRINT "You can't go east." : GOTO 4930
 5190  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" AND CHOICE$ = "1" THEN GOTO 5250
 5200  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" AND CHOICE$ = "2" THEN GOTO 6710
 5210  IF MID$(MAP$(PLAYERY-1),PLAYERX,1) = "O" AND CHOICE$ = "3" THEN GOTO 7410
 5220  IF CHOICE$ = "M" OR CHOICE$ = "MAP" THEN GOTO 8130
 5230  PRINT "Wrong choice." : GOTO 4930
 5240  REM
 5250  REM Bazaar
 5260  PRINT "You enter a crowdy market. There are dozens of merchants here trying to sell their goods."
 5270  PRINT TAB$(19) + "Buying price:" + TAB$(7) + "Selling price:"
 5280  FOR I = 0 TO 11
 5290  PRINT " " + STR$(I+1) + ". ";
 5300  PRINT GOODSNAME$(I);
 5310  IF I < 9 THEN PRINT " ";
 5320  PRINT TAB$(19-LEN(GOODSNAME$(I)));
 5330  IF I = 0 THEN PRINT BEER(CURRENTCITY);
 5340  IF I = 0 AND BEER(CURRENTCITY) < 10 THEN PRINT " ";
 5350  IF I = 0 THEN PRINT " ";
 5360  IF I = 1 THEN PRINT FURS(CURRENTCITY);
 5370  IF I = 1 THEN PRINT " ";
 5380  IF I = 2 THEN PRINT SPICES(CURRENTCITY);
 5390  IF I = 2 THEN PRINT " ";
 5400  IF I = 3 THEN PRINT ELIXIRS(CURRENTCITY);
 5410  IF I = 3 THEN PRINT " ";
 5420  IF I = 4 THEN PRINT TOODS(CURRENTCITY);
 5430  IF I = 4 THEN PRINT " ";
 5440  IF I = 5 THEN PRINT COTTON(CURRENTCITY);
 5450  IF I = 5 THEN PRINT " ";
 5460  IF I = 6 THEN PRINT GEMS(CURRENTCITY);
 5470  IF I = 6 AND GEMS(CURRENTCITY) < 100 THEN PRINT " ";
 5480  IF I = 7 THEN PRINT MARBLE(CURRENTCITY);
 5490  IF I = 7 AND MARBLE(CURRENTCITY) < 100 THEN PRINT " ";
 5500  IF I = 8 THEN PRINT WINE(CURRENTCITY);
 5510  IF I = 8 THEN PRINT " ";
 5520  IF I = 9 THEN PRINT FISH(CURRENTCITY);
 5530  IF I = 9 AND FISH(CURRENTCITY) < 10 THEN PRINT " ";
 5540  IF I = 9 THEN PRINT " ";
 5550  IF I = 10 THEN PRINT IRONORE(CURRENTCITY);
 5560  IF I = 10 THEN PRINT " ";
 5570  IF I = 11 THEN PRINT COPPERORE(CURRENTCITY);
 5580  IF I = 11 THEN PRINT " ";
 5590  PRINT TAB$(15);
 5600  REM
 5610  IF I = 0 THEN PRINT BEER(CURRENTCITY) - INT(BEER(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
 5620  IF I = 1 THEN PRINT FURS(CURRENTCITY) - INT(FURS(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
 5630  IF I = 2 THEN PRINT SPICES(CURRENTCITY) - INT(SPICES(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
 5640  IF I = 3 THEN PRINT ELIXIRS(CURRENTCITY)- INT(ELIXIRS(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
 5650  IF I = 4 THEN PRINT TOODS(CURRENTCITY) - INT(TOODS(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
 5660  IF I = 5 THEN PRINT COTTON(CURRENTCITY)- INT(COTTON(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
 5670  IF I = 6 THEN PRINT GEMS(CURRENTCITY) - INT(GEMS(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
 5680  IF I = 7 THEN PRINT MARBLE(CURRENTCITY) - INT(MARBLE(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
 5690  IF I = 8 THEN PRINT WINE(CURRENTCITY) - INT(WINE(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
 5700  IF I = 9 THEN PRINT FISH(CURRENTCITY) - INT(FISH(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
 5710  IF I = 10 THEN PRINT IRONORE(CURRENTCITY) - INT(IRONORE(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
 5720  IF I = 11 THEN PRINT COPPERORE(CURRENTCITY) - INT(COPPERORE(CURRENTCITY)*(0.2 - CHARISMA/100)) - 1
 5730  NEXT I
 5740  PRINT "Do you want to " + CHR$(27) + "[38;5;051m[b]" + CHR$(27) + "[38;5;252muy, " + CHR$(27) + "[38;5;051m[s]" + CHR$(27) + "[38;5;252mell or " + CHR$(27) + "[38;5;051m[e]" + CHR$(27) + "[38;5;252mxit? "
 5750  INPUT "", MARKETCHOICE$
 5760  MARKETCHOICE$ = UPS$(MARKETCHOICE$)
 5770  IF MARKETCHOICE$ = "B" OR MARKETCHOICE$ = "BUY" THEN GOTO 5820
 5780  IF MARKETCHOICE$ = "S" OR MARKETCHOICE$ = "SELL" THEN GOTO 6340
 5790  IF MARKETCHOICE$ = "E" OR MARKETCHOICE$ = "EXIT" THEN GOTO 3680
 5800  PRINT "Wrong choice." : GOTO 5740
 5810  REM
 5820  REM Buying goods
 5830  INPUT "Which goods do you want to buy? ", GOODSCHOICE$
 5840  GOODSCHOICE$ = UPS$(GOODSCHOICE$)
 5850  GOODSCHOICENR = 13
 5860  IF GOODSCHOICE$ = "" THEN GOTO 5950
 5870  FOR I = 0 TO 12
 5880  IF VAL(GOODSCHOICE$) = I+1 THEN GOODSCHOICENR = I
 5890  IF I <> 9 AND I <> 1 AND I <> 5 AND I <> 11 AND LEFT$(GOODSCHOICE$, 1) = LEFT$(UPS$(GOODSNAME$(I)),1) THEN GOODSCHOICENR = I
 5900  IF (I = 1 OR I = 9) AND LEFT$(GOODSCHOICE$, 2) = LEFT$(UPS$(GOODSNAME$(I)),2) THEN GOODSCHOICENR = I
 5910  IF (I = 5 OR I = 11) AND LEFT$(GOODSCHOICE$, 3) = LEFT$(UPS$(GOODSNAME$(I)),3) THEN GOODSCHOICENR = I
 5920  IF GOODSCHOICE$ = "CO" OR GOODSCHOICE$ = "C" THEN PRINT "A merchant asks you: cotton or copper ore, dear sir?" : GOTO 5950
 5930  IF GOODSCHOICE$ = "F" THEN PRINT "A merchant asks you: fish or furs, dear sir?" : GOTO 5950
 5940  NEXT I
 5950  IF GOODSCHOICENR = 13 THEN PRINT "Please enter a valid good's name or number." : GOTO 5830
 5960  IF GOLD = 0 THEN PRINT "You don't have money to buy anything!" : GOTO 5740
 5970  AFFORDGOODS = 0
 5980  IF GOODSCHOICENR = 0 THEN AFFORDGOODS = INT(GOLD / BEER(CURRENTCITY))
 5990  IF GOODSCHOICENR = 1 THEN AFFORDGOODS = INT(GOLD / FURS(CURRENTCITY))
 6000  IF GOODSCHOICENR = 2 THEN AFFORDGOODS = INT(GOLD / SPICES(CURRENTCITY))
 6010  IF GOODSCHOICENR = 3 THEN AFFORDGOODS = INT(GOLD / ELIXIRS(CURRENTCITY))
 6020  IF GOODSCHOICENR = 4 THEN AFFORDGOODS = INT(GOLD / TOODS(CURRENTCITY))
 6030  IF GOODSCHOICENR = 5 THEN AFFORDGOODS = INT(GOLD / COTTON(CURRENTCITY))
 6040  IF GOODSCHOICENR = 6 THEN AFFORDGOODS = INT(GOLD / GEMS(CURRENTCITY))
 6050  IF GOODSCHOICENR = 7 THEN AFFORDGOODS = INT(GOLD / MARBLE(CURRENTCITY))
 6060  IF GOODSCHOICENR = 8 THEN AFFORDGOODS = INT(GOLD / WINE(CURRENTCITY))
 6070  IF GOODSCHOICENR = 9 THEN AFFORDGOODS = INT(GOLD / FISH(CURRENTCITY))
 6080  IF GOODSCHOICENR = 10 THEN AFFORDGOODS = INT(GOLD / IRONORE(CURRENTCITY))
 6090  IF GOODSCHOICENR = 11 THEN AFFORDGOODS = INT(GOLD / COPPERORE(CURRENTCITY))
 6100  IF AFFORDGOODS = 0 THEN PRINT "You can't afford to buy it" : GOTO 5740
 6110  PRINT "How many units? You can afford up to " + STR$(AFFORDGOODS) + "."
 6120  INPUT "", UNITSCHOICE$
 6130  IF VAL(UNITSCHOICE$) < 0 THEN PRINT "No, that's a dumb idea. You can't buy a negative number of goods." : GOTO 6110
 6140  IF VAL(UNITSCHOICE$) = 0 THEN PRINT "You decide against buying anything for the time being." : GOTO 5740
 6150  IF VAL(UNITSCHOICE$) > AFFORDGOODS THEN PRINT "You don't have enough gold to buy " + UNITSCHOICE$ + " units." : GOTO 6110
 6160  IF VAL(UNITSCHOICE$)*GOODSWEIGHT(GOODSCHOICENR) + CAPACITY > MAXCAPACITY THEN PRINT "That's too heavy! You need to hire more workers to carry the goods." : GOTO 6110
 6170  IF VAL(UNITSCHOICE$) > 1 THEN PRINT "You buy " + UNITSCHOICE$ + " units." : GOTO 6200
 6180  IF VAL(UNITSCHOICE$) = 1 THEN PRINT "You buy one unit." : GOTO 6200
 6190  PRINT "Please enter a valid number." : GOTO 6110
 6200  IF GOODSCHOICENR = 0 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * BEER(CURRENTCITY) : GOODS(0) = GOODS(0) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(0)
 6210  IF GOODSCHOICENR = 1 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * FURS(CURRENTCITY) : GOODS(1) = GOODS(1) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(1)
 6220  IF GOODSCHOICENR = 2 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * SPICES(CURRENTCITY) : GOODS(2) = GOODS(2) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(2)
 6230  IF GOODSCHOICENR = 3 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * ELIXIRS(CURRENTCITY) : GOODS(3) = GOODS(3) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(3)
 6240  IF GOODSCHOICENR = 4 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * TOODS(CURRENTCITY) : GOODS(4) = GOODS(4) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(4)
 6250  IF GOODSCHOICENR = 5 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * COTTON(CURRENTCITY) : GOODS(5) = GOODS(5) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(5)
 6260  IF GOODSCHOICENR = 6 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * GEMS(CURRENTCITY) : GOODS(6) = GOODS(6) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(6)
 6270  IF GOODSCHOICENR = 7 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * MARBLE(CURRENTCITY) : GOODS(7) = GOODS(7) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(7)
 6280  IF GOODSCHOICENR = 8 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * WINE(CURRENTCITY) : GOODS(8) = GOODS(8) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(8)
 6290  IF GOODSCHOICENR = 9 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * FISH(CURRENTCITY) : GOODS(9) = GOODS(9) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(9)
 6300  IF GOODSCHOICENR = 10 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * IRONORE(CURRENTCITY) : GOODS(10) = GOODS(10) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(10)
 6310  IF GOODSCHOICENR = 11 THEN GOLD = GOLD - VAL(UNITSCHOICE$) * COPPERORE(CURRENTCITY) : GOODS(11) = GOODS(11) + VAL(UNITSCHOICE$) : CAPACITY = CAPACITY + VAL(UNITSCHOICE$) * GOODSWEIGHT(11)
 6320  PRINT "Now you have " + STR$(GOLD) + " gold pieces." : GOTO 5740
 6330  REM
 6340  REM Selling goods
 6350  INPUT "Which goods do you want to sell? ", GOODSCHOICE$
 6360  GOODSCHOICE$ = UPS$(GOODSCHOICE$)
 6370  GOODSCHOICENR = 13
 6380  IF GOODSCHOICE$ = "" THEN GOTO 6470
 6390  FOR I = 0 TO 12
 6400  IF VAL(GOODSCHOICE$) = I+1 THEN GOODSCHOICENR = I
 6410  IF I <> 9 AND I <> 1 AND I <> 5 AND I <> 11 AND LEFT$(GOODSCHOICE$, 1) = LEFT$(UPS$(GOODSNAME$(I)),1) THEN GOODSCHOICENR = I
 6420  IF (I = 1 OR I = 9) AND LEFT$(GOODSCHOICE$, 2) = LEFT$(UPS$(GOODSNAME$(I)),2) THEN GOODSCHOICENR = I
 6430  IF (I = 5 OR I = 11) AND LEFT$(GOODSCHOICE$, 3) = LEFT$(UPS$(GOODSNAME$(I)),3) THEN GOODSCHOICENR = I
 6440  IF GOODSCHOICE$ = "CO" OR GOODSCHOICE$ = "C" THEN PRINT "A merchant asks you: cotton or copper ore, dear sir?" : GOTO 6470
 6450  IF GOODSCHOICE$ = "F" THEN PRINT "A merchant asks you: fish or furs, dear sir?" : GOTO 6470
 6460  NEXT I
 6470  IF GOODSCHOICENR = 13 THEN PRINT "Please enter a valid good's name or number." : GOTO 6350
 6480  IF GOODS(GOODSCHOICENR) = 0 THEN PRINT "You don't have any " + GOODSNAME$(GOODSCHOICENR) + "!": GOTO 5740
 6490  PRINT "How many units you want to sell? You have " + STR$(GOODS(GOODSCHOICENR)) + "."
 6500  INPUT "", UNITSCHOICE$
 6510  IF VAL(UNITSCHOICE$) < 0 THEN PRINT "No, that's a dumb idea. You can't sell a negative number of goods." : GOTO 6490
 6520  IF VAL(UNITSCHOICE$) = 0 THEN PRINT "You decide to not sell." : GOTO 5740
 6530  IF VAL(UNITSCHOICE$) > GOODS(GOODSCHOICENR) THEN PRINT "That's more than you have!" : GOTO 6490
 6540  IF VAL(UNITSCHOICE$) > 1 THEN PRINT "You sell " + UNITSCHOICE$ + " units." : GOTO 6570
 6550  IF VAL(UNITSCHOICE$) = 1 THEN PRINT "You sell one unit." : GOTO 6570
 6560  PRINT "Please enter a valid number." : GOTO 6490
 6570  IF GOODSCHOICENR = 0 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (BEER(CURRENTCITY) - (INT(BEER(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(0) = GOODS(0) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(0)
 6580  IF GOODSCHOICENR = 1 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (FURS(CURRENTCITY) - (INT(FURS(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(1) = GOODS(1) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(1)
 6590  IF GOODSCHOICENR = 2 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (SPICES(CURRENTCITY) - (INT(SPICES(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(2) = GOODS(2) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(2)
 6600  IF GOODSCHOICENR = 3 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (ELIXIRS(CURRENTCITY) - (INT(ELIXIRS(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(3) = GOODS(3) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(3)
 6610  IF GOODSCHOICENR = 4 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (TOODS(CURRENTCITY) - (INT(TOODS(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(4) = GOODS(4) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(4)
 6620  IF GOODSCHOICENR = 5 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (COTTON(CURRENTCITY) - (INT(COTTON(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(5) = GOODS(5) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(5)
 6630  IF GOODSCHOICENR = 6 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (GEMS(CURRENTCITY) - (INT(GEMS(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(6) = GOODS(6) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(6)
 6640  IF GOODSCHOICENR = 7 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (MARBLE(CURRENTCITY) - (INT(MARBLE(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(7) = GOODS(7) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(7)
 6650  IF GOODSCHOICENR = 8 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (WINE(CURRENTCITY) - (INT(WINE(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1)) : GOODS(8) = GOODS(8) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(8)
 6660  IF GOODSCHOICENR = 9 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (FISH(CURRENTCITY) - (INT(FISH(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1))  : GOODS(9) = GOODS(9) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(9)
 6670  IF GOODSCHOICENR = 10 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (IRONORE(CURRENTCITY) - (INT(IRONORE(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1))  : GOODS(10) = GOODS(10) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(10)
 6680  IF GOODSCHOICENR = 11 THEN GOLD = GOLD + VAL(UNITSCHOICE$) * (COPPERORE(CURRENTCITY) - (INT(COPPERORE(CURRENTCITY)*(0.2 - CHARISMA/100)) + 1))  : GOODS(11) = GOODS(11) - VAL(UNITSCHOICE$) : CAPACITY = CAPACITY - VAL(UNITSCHOICE$) * GOODSWEIGHT(11)
 6690  PRINT "Now you have " + STR$(GOLD) + " gold pieces." : GOTO 5740
 6700  REM
 6710  REM Inn
 6720  PRINT "As you enter the inn through the heavily used, wooden door, you're welcomed by joyful music and the smile of a waitress."
 6730  PRINT "You can " + CHR$(27) + "[38;5;051m[1]" + CHR$(27) + "[38;5;252m rent a room, " + CHR$(27) + "[38;5;051m[2]" + CHR$(27) + "[38;5;252m hire laborers, " + CHR$(27) + "[38;5;051m[3]";
 6740  PRINT CHR$(27) + "[38;5;252m hire mercenaries, " + CHR$(27) + "[38;5;051m[4]" + CHR$(27) + "[38;5;252m hire a mage or " + CHR$(27) + "[38;5;051m[e]" + CHR$(27) + "[38;5;252mxit."
 6750  INPUT "What is your choice? ", INNCHOICE$
 6760  INNCHOICE$ = UPS$(INNCHOICE$)
 6770  IF INNCHOICE$ = "1" OR INNCHOICE$= "RENT" OR INNCHOICE$ = "RENT A ROOM" THEN GOTO 6840
 6780  IF INNCHOICE$ = "2" OR INNCHOICE$= "HIRE LABORERS" OR INNCHOICE$ = "HIRE WORKERS" THEN GOTO 6940
 6790  IF INNCHOICE$ = "3" OR INNCHOICE$= "HIRE MERCENARIES" THEN GOTO 7120
 6800  IF INNCHOICE$ = "4" OR INNCHOICE$= "HIRE MAGE" OR INNCHOICE$ = "HIRE A MAGE" THEN GOTO 7290
 6810  IF INNCHOICE$ = "E" OR INNCHOICE$= "EXIT" THEN PRINT "You leave the inn." : GOTO 3680
 6820  PRINT "Invalid choice." : GOTO 6730
 6830  REM
 6840  REM Renting a room
 6850  IF GOLD < 20 + 2*PEOPLE THEN Print "You can't afford to rent a room." : GOTO 6730
 6860  IF PEOPLE = O THEN PRINT "You rent a room and pay 20 gold pieces."
 6870  IF PEOPLE = 1 THEN PRINT "You rent a room for you and your employee and pay 22 gold pieces."
 6880  IF PEOPLE > 5 THEN PRINT "You rent rooms for you and your " + STR$(PEOPLE) + " people, and you pay " + STR$(20+2*PEOPLE) + " gold pieces."
 6890  IF PEOPLE > 1 AND PEOPLE < 6 THEN PRINT "You rent a room for you and your " + STR$(PEOPLE) + " people, paying " + STR$(20+2*PEOPLE) + " gold pieces."
 6900  GOLD = GOLD - (20+PEOPLE*2)
 6910  HP = MAXHP
 6920  PRINT "You wake up refreshed." : GOTO 6730
 6930  REM
 6940  REM Hiring workers
 6950  IF GOLD < WORKERSPRICE(CURRENTCITY) THEN PRINT "You don't have enough money to hire even one worker!" : GOTO 6730
 6960  IF WORKERS = 50 THEN PRINT "You already employ the maximum number of workers one can employ." : GOTO 6730
 6970  PRINT "The cost is " + STR$(WORKERSPRICE(CURRENTCITY)) + " gold pieces per employee. How many workers would you like to hire?"
 6980  INPUT "", HOWMANYWORKERS$
 6990  IF VAL(HOWMANYWORKERS$) = 0 THEN PRINT "You decide to not hire anybody." : GOTO 6730
 7000  IF VAL(HOWMANYWORKERS$) < 0 THEN PRINT "Please enter a positive number." : GOTO 6970
 7010  IF VAL(HOWMANYWORKERS$)*WORKERSPRICE(CURRENTCITY) = 0 THEN PRINT "You decide to not hire anyone." : GOTO 6730
 7020  IF VAL(HOWMANYWORKERS$) + WORKERS > 50 THEN PRINT "That's too many, you can employ maximally 50 workers. Please enter a lower number." : GOTO 6970
 7030  IF VAL(HOWMANYWORKERS$)*WORKERSPRICE(CURRENTCITY) > GOLD THEN PRINT "You don't have enough money. You can hire maximally " + STR$(INT(GOLD/WORKERSPRICE(CURRENTCITY))) + " workers." : GOTO 6970
 7040  IF VAL(HOWMANYWORKERS$) = 1 THEN PRINT "You hired one worker. "
 7050  IF VAL(HOWMANYWORKERS$) > 1 THEN PRINT "You hired " + HOWMANYWORKERS$ + " workers. "
 7060  WORKERS = WORKERS + VAL(HOWMANYWORKERS$) : PRINT "The total number of employed workers is " + STR$(WORKERS)
 7070  PEOPLE = PEOPLE + VAL(HOWMANYWORKERS$)
 7080  MAXCAPACITY = MAXCAPACITY + VAL(HOWMANYWORKERS$)*30
 7090  GOLD = GOLD - VAL(HOWMANYWORKERS$)*WORKERSPRICE(CURRENTCITY)
 7100  GOTO 6730
 7110  REM
 7120  REM Hiring mercenaries
 7130  IF GOLD < MERCPRICE(CURRENTCITY) THEN PRINT "You don't have enough money to hire even one mercenary!" : GOTO 6730
 7140  IF MERCENARIES = 50 THEN PRINT "You already employ the maximum number of mercenaries." : GOTO 6730
 7150  PRINT "The cost is " + STR$(MERCPRICE(CURRENTCITY)) + " gold pieces per employee. How many mercenaries would you like to hire?"
 7160  INPUT "", HOWMANYWORKERS$
 7170  IF VAL(HOWMANYWORKERS$) = 0 THEN PRINT "You decide to not hire anybody." : GOTO 6730
 7180  IF VAL(HOWMANYWORKERS$) < 0 THEN PRINT "Please enter a positive number." : GOTO 7150
 7190  IF VAL(HOWMANYWORKERS$) * MERCPRICE(CURRENTCITY) = 0 THEN PRINT "You decide to not hire anyone." : GOTO 6730
 7200  IF VAL(HOWMANYWORKERS$) + MERCENARIES > 50 THEN PRINT "That's too many, you can employ maximally 50 mercenaries. Please enter a lower number." : GOTO 7150
 7210  IF VAL(HOWMANYWORKERS$) * MERCPRICE(CURRENTCITY) > GOLD THEN PRINT "You don't have enough money. You can hire maximally " + STR$(INT(GOLD/MERCPRICE(CURRENTCITY))) + " mercenaries." : GOTO 7150
 7220  IF VAL(HOWMANYWORKERS$) = 1 THEN PRINT "You hired one mercenary."
 7230  IF VAL(HOWMANYWORKERS$) > 1 THEN PRINT "You hired " + HOWMANYWORKERS$ + " mercenaries. "
 7240  MERCENARIES = MERCENARIES + VAL(HOWMANYWORKERS$) : PRINT "The total number of employed mercenaries is " + STR$(MERCENARIES)
 7250  PEOPLE = PEOPLE + VAL(HOWMANYWORKERS$)
 7260  GOLD = GOLD - VAL(HOWMANYWORKERS$)*MERCPRICE(CURRENTCITY)
 7270  GOTO 6730
 7280  REM
 7290  REM Hiring a mage
 7300  IF MAGES = 1 THEN PRINT "You already have a mage in your party. " : GOTO 6730
 7310  IF GOLD < MAGEPRICE(CURRENTCITY) THEN PRINT "You don't have " + STR$(MAGEPRICE(CURRENTCITY)) + " gold pieces to hire a mage." : GOTO 6730
 7320  PRINT "The cost is " + STR$(MAGEPRICE(CURRENTCITY)) + " gold pieces. Do you want to hire a mage?"
 7330  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
 7340  INPUT "", HIREAMAGE$
 7350  IF UPS$(HIREAMAGE$) <> "Y" AND UPS$(HIREAMAGE$) <> "YES" THEN PRINT "You decide to not hire a mage." : GOTO 6730
 7360  GOLD = GOLD - MAGEPRICE(CURRENTCITY)
 7370  MAGES = 1 : PRINT "You hire a mage. You pay " + STR$(MAGEPRICE(CURRENTCITY)) + " gold pieces."
 7380  PEOPLE = PEOPLE + 1
 7390  GOTO 6730
 7400  REM
 7410  REM Blacksmith's shop
 7420  PRINT "You enter a small blacksmith shop. There are several weapons and armors available for sale."
 7430  PRINT CHR$(27) + "[38;5;051m[1]" + CHR$(27) + "[38;5;252m Buy a dagger for " + STR$(DAGGERPRICE(CURRENTCITY)) + " gold pieces"
 7440  PRINT CHR$(27) + "[38;5;051m[2]" + CHR$(27) + "[38;5;252m Buy a short sword for " + STR$(SHORTSPRICE(CURRENTCITY)) + " gold pieces"
 7450  PRINT CHR$(27) + "[38;5;051m[3]" + CHR$(27) + "[38;5;252m Buy a long sword for " + STR$(LONGSPRICE(CURRENTCITY)) + " gold pieces"
 7460  PRINT CHR$(27) + "[38;5;051m[4]" + CHR$(27) + "[38;5;252m Buy a bastard sword for " + STR$(BASTARDSPRICE(CURRENTCITY)) + " gold pieces"
 7470  PRINT CHR$(27) + "[38;5;051m[5]" + CHR$(27) + "[38;5;252m Buy a two-handed sword for " + STR$(TWOHSPRICE(CURRENTCITY)) + " gold pieces"
 7480  PRINT CHR$(27) + "[38;5;051m[6]" + CHR$(27) + "[38;5;252m Buy a magic sword for " + STR$(MAGICSPRICE(CURRENTCITY)) + " gold pieces"
 7490  PRINT CHR$(27) + "[38;5;051m[7]" + CHR$(27) + "[38;5;252m Buy a leather armor for " + STR$(LEATHERAPRICE(CURRENTCITY)) + " gold pieces"
 7500  PRINT CHR$(27) + "[38;5;051m[8]" + CHR$(27) + "[38;5;252m Buy a chainmail for " + STR$(CHAINMAILPRICE(CURRENTCITY)) + " gold pieces"
 7510  PRINT CHR$(27) + "[38;5;051m[9]" + CHR$(27) + "[38;5;252m Buy a plate armor for " + STR$(PLATEARMORPRICE(CURRENTCITY)) + " gold pieces"
 7520  PRINT CHR$(27) + "[38;5;051m[10]" + CHR$(27) + "[38;5;252m Buy a magic armor for " + STR$(MAGICAPRICE(CURRENTCITY)) + " gold pieces"
 7530  IF WEAPON$ <> "no weapon" THEN PRINT CHR$(27) + "[38;5;051m[11]" + CHR$(27) + "[38;5;252m Sell your " + WEAPON$
 7540  IF ARMOR$ <> "no armor" THEN PRINT CHR$(27) + "[38;5;051m[12]" + CHR$(27) + "[38;5;252m Sell your " + ARMOR$
 7550  PRINT CHR$(27) + "[38;5;051m[e]" + CHR$(27) + "[38;5;252mxit"
 7560  INPUT "", BLACKSMITHCHOICE$
 7570  BLACKSMITHCHOICE$ = UPS$(BLACKSMITHCHOICE$)
 7580  PRICE = 0
 7590  IF (BLACKSMITHCHOICE$ = "1" OR BLACKSMITHCHOICE$="2" OR BLACKSMITHCHOICE$="3" OR BLACKSMITHCHOICE$="4" OR BLACKSMITHCHOICE$="5" OR BLACKSMITHCHOICE$="6") AND WEAPON$ <> "no weapon" THEN PRINT "You need to sell you current weapon first." : GOTO 7430
 7600  IF (BLACKSMITHCHOICE$ = "7" OR BLACKSMITHCHOICE$="8" OR BLACKSMITHCHOICE$="9" OR BLACKSMITHCHOICE$="10") AND ARMOR$ <> "no armor" THEN PRINT "You need to sell you current armor first. " : GOTO 7430
 7610  IF BLACKSMITHCHOICE$ = "E" OR BLACKSMITHCHOICE$ = "EXIT" THEN PRINT "You leave the blacksmith shop." : GOTO 3680
 7620  IF BLACKSMITHCHOICE$ = "1" THEN PRICE = DAGGERPRICE(CURRENTCITY)
 7630  IF BLACKSMITHCHOICE$ = "2" THEN PRICE = SHORTSPRICE(CURRENTCITY)
 7640  IF BLACKSMITHCHOICE$ = "3" THEN PRICE = LONGSPRICE(CURRENTCITY)
 7650  IF BLACKSMITHCHOICE$ = "4" THEN PRICE = BASTARDSPRICE(CURRENTCITY)
 7660  IF BLACKSMITHCHOICE$ = "5" THEN PRICE = TWOHSPRICE(CURRENTCITY)
 7670  IF BLACKSMITHCHOICE$ = "6" THEN PRICE = MAGICSPRICE(CURRENTCITY)
 7680  IF BLACKSMITHCHOICE$ = "7" THEN PRICE = LEATHERAPRICE(CURRENTCITY)
 7690  IF BLACKSMITHCHOICE$ = "8" THEN PRICE = CHAINMAILPRICE(CURRENTCITY)
 7700  IF BLACKSMITHCHOICE$ = "9" THEN PRICE = PLATEARMORPRICE(CURRENTCITY)
 7710  IF BLACKSMITHCHOICE$ = "10" THEN PRICE = MAGICAPRICE(CURRENTCITY)
 7720  IF BLACKSMITHCHOICE$ = "11" AND WEAPON$ <> "no weapon" THEN GOTO 7910
 7730  IF BLACKSMITHCHOICE$ = "12" AND ARMOR$ <> "no armor" THEN GOTO 8030
 7740  IF PRICE = 0 THEN PRINT "Enter a valid number or " + CHR$(27) + "[38;5;051m[e]" + CHR$(27) + "[38;5;252mxit." : GOTO 7560
 7750  REM
 7760  REM Buying a weapon or an armor
 7770  IF PRICE > GOLD THEN PRINT "You can't afford it." : PRINT "" : GOTO 7430
 7780  IF BLACKSMITHCHOICE$ = "1" THEN PRINT "You bought a steel dagger." : WEAPON$ = "dagger"
 7790  IF BLACKSMITHCHOICE$ = "2" THEN PRINT "You bought a short sword." : WEAPON$ = "short sword"
 7800  IF BLACKSMITHCHOICE$ = "3" THEN PRINT "You bought a long sword." : WEAPON$ = "long sword"
 7810  IF BLACKSMITHCHOICE$ = "4" THEN PRINT "You bought a bastard sword." : WEAPON$ = "bastard sword"
 7820  IF BLACKSMITHCHOICE$ = "5" THEN PRINT "You bought a two-handed sword." : WEAPON$ = "2-handed sword"
 7830  IF BLACKSMITHCHOICE$ = "6" THEN PRINT "You bought a super-expensive magic sword." : WEAPON$ = "magic sword"
 7840  IF BLACKSMITHCHOICE$ = "7" THEN PRINT "You bought a leather armor." : ARMOR$ = "leather armor"
 7850  IF BLACKSMITHCHOICE$ = "8" THEN PRINT "You bought a chainmail." : ARMOR$ = "chainmail"
 7860  IF BLACKSMITHCHOICE$ = "9" THEN PRINT "You bought a plate armor." : ARMOR$ = "plate armor"
 7870  IF BLACKSMITHCHOICE$ = "10" THEN PRINT "You bought a magic armor. You hope the armor is really worth its price." : ARMOR$ = "magic armor"
 7880  GOLD = GOLD - PRICE : PRINT "Now you have " + STR$(GOLD) + " gold pieces." : PRINT ""
 7890  GOTO 7430
 7900  REM
 7910  REM Sell your weapon
 7920  IF WEAPON$ = "dagger" THEN SELLPRICE = 5
 7930  IF WEAPON$ = "short sword" THEN SELLPRICE = 15
 7940  IF WEAPON$ = "long sword" THEN SELLPRICE = 100
 7950  IF WEAPON$ = "bastard sword" THEN SELLPRICE = 200
 7960  IF WEAPON$ = "2-handed sword" THEN SELLPRICE = 300
 7970  IF WEAPON$ = "magic sword" THEN SELLPRICE = 1000
 7980  PRINT "You sold your " + WEAPON$ + " for " + STR$(SELLPRICE) + " gold pieces."
 7990  GOLD = GOLD + SELLPRICE
 8000  WEAPON$ = "no weapon" : PRINT "Now you have " + STR$(GOLD) + " gold pieces." : PRINT ""
 8010  GOTO 7430
 8020  REM
 8030  REM Sell you armor
 8040  IF ARMOR$ = "leather armor" THEN SELLPRICE = 20
 8050  IF ARMOR$ = "chainmail" THEN SELLPRICE = 150
 8060  IF ARMOR$ = "plate armor" THEN SELLPRICE = 400
 8070  IF ARMOR$ = "magic armor" THEN SELLPRICE = 1500
 8080  PRINT "You sold your " + ARMOR$ + " for " + STR$(SELLPRICE) + " gold pieces."
 8090  GOLD = GOLD + SELLPRICE
 8100  ARMOR$ = "no armor" : PRINT "Now you have " + STR$(GOLD) + " gold pieces." : PRINT ""
 8110  GOTO 7430
 8120  REM
 8130  REM Display the map
 8140  CLS
 8150  FOR I = 0 to 47
 8160  IF (HEIGHT<48) AND (I=HEIGHT) THEN INPUT "Press enter...", DUMPP$
 8170  IF (HEIGHT<24) AND (I=HEIGHT*2) THEN INPUT "Press enter...", DUMPP$
 8180  IF I <> (PLAYERY-1) THEN PRINT MMAP$(I)
 8190  IF I = (PLAYERY-1) THEN PRINT MID$(MMAP$(PLAYERY-1),1,(PLAYERX-1)*12) + CHR$(27) + "[48;5;247m" + MID$(MMAP$(PLAYERY-1),(PLAYERX-1)*12+1,12) + CHR$(27) + "[48;5;232m" + MID$(MMAP$(PLAYERY-1),(PLAYERX)*12+1,(80-PLAYERX)*12)
 8200  NEXT I
 8210  PRINT CHR$(27) + "[38;5;252m" + ""
 8220  INPUT "Press enter", DUMPP$
 8230  GOTO 4930
 8240  REM
 8250  REM Random fights and events
 8260  REM
 8270  DICEROLL = FND(100)
 8280  IF DICEROLL < 80 THEN RETURN
 8290  IF DICEROLL < 96 AND DICEROLL > 79 THEN GOSUB 8330
 8300  IF DICEROLL > 95 THEN GOSUB 10090
 8310  RETURN
 8320  REM
 8330  DICEROLL2 = FND(20) - 1
 8340  ENEMY$ = MONSTERNAME$(DICEROLL2)
 8350  ENEMYATTACK = MONSTERATTACK(DICEROLL2)
 8360  ENEMYHP = MONSTERHP(DICEROLL2)
 8370  ENEMYGOLD = MONSTERGOLD(DICEROLL2)
 8380  ENEMYEXPERIENCE = MONSTEREXPERIENCE(DICEROLL2)
 8390  PRINT "" : PRINT "You see a " + ENEMY$ + "."
 8400  PRINT "The " + ENEMY$ + " is hostile!"
 8410  GOSUB 8440
 8420  RETURN
 8430  REM
 8440  REM Fight!
 8450  ENEMYMAXHP = ENEMYHP
 8460  HPCOLOR$ = ""
 8470  IF HP > MAXHP-4 THEN HPCOLOR$ = "" + CHR$(27) + "[38;5;076m"
 8480  IF HP < MAXHP-3 AND HP > INT(MAXHP/2)-1 THEN HPCOLOR$ = "" + CHR$(27) + "[38;5;220m"
 8490  IF HP < INT(MAXHP/2) THEN HPCOLOR$ = "" + CHR$(27) + "[38;5;160m"
 8500  IF HP < INT(MAXHP/4) THEN HPCOLOR$ = "" + CHR$(27) + "[38;5;124m"
 8510  PRINT "Your HP: " + HPCOLOR$ + STR$(HP) + "/" + STR$(MAXHP) + TAB$(5) + "" + CHR$(27) + "[38;5;252mEnemy's HP: " + STR$(ENEMYHP) + "/" + STR$(ENEMYMAXHP)
 8520  PRINT "You can " + CHR$(27) + "[38;5;051m[a]" + CHR$(27) + "[38;5;252mttack the " + ENEMY$ + " or " + CHR$(27) + "[38;5;051m[r]" + CHR$(27) + "[38;5;252mun."
 8530  INPUT "", FIGHTCHOICE$
 8540  FIGHTCHOICE$ = UPS$(FIGHTCHOICE$)
 8550  IF FIGHTCHOICE$ <> "A" AND FIGHTCHOICE$ <> "ATTACK" AND FIGHTCHOICE$ <> "R" AND FIGHTCHOICE$ <> "RUN" THEN PRINT "Invalid choice." : GOTO 8520
 8560  IF FIGHTCHOICE$ = "A" OR FIGHTCHOICE$ = "ATTACK" THEN GOTO 8810
 8570  IF FIGHTCHOICE$ = "R" OR FIGHTCHOICE$ = "RUN" THEN PRINT "You flee from the enemy."
 8580  REM RUN
 8590  IF WORKERS = 1 THEN PRINT "Your worker tries to run, but gets killed by the " + ENEMY$ + "!"
 8600  IF WORKERS > 1 AND CAPACITY = 0 THEN PRINT "Your workers fly in panic."
 8610  IF WORKERS > 1 AND CAPACITY > 0 THEN PRINT "Your workers fly in panic and drop the goods."
 8620  IF WORKERS > 1 THEN PRINT "Some of your workers get killed by the " + ENEMY$ + "!"
 8630  IF WORKERS > 1 THEN PRINT "The survivors are too afraid to travel with you and leave you."
 8640  IF WORKERS > 0 AND CAPACITY > 0 THEN PRINT "You lost all of your workers and all goods."
 8650  IF WORKERS > 0 AND CAPACITY = 0 THEN PRINT "You lost all of your workers."
 8660  FOR I = 0 TO 11
 8670  IF WORKERS > 0 THEN GOODS(I) = 0
 8680  NEXT I
 8690  WORKERS = 0
 8700  CAPACITY = 0
 8710  IF MAGES = 1 THEN PRINT "Your mage looks at you with disfavor."
 8720  DICEROLL3 = FND(10)
 8730  IF DICEROLL3 = 10 AND MAGES = 1 THEN PRINT "Your mage says 'I don't wanna travel with such coward as you' and leaves you." : MAGES = 0
 8740  IF MERCENARIES > 1 THEN PRINT "Your mercenaries are upset with you for your decision."
 8750  DICEROLL4 = FND(10)
 8760  DICEROLL5 = FND(MERCENARIES)
 8770  IF DICEROLL4 = 10 AND MERCENARIES > 1 THEN PRINT "They decide to leave you." : MERCENARIES = 0
 8780  IF DICEROLL4 = 9 AND MERCENARIES > 1 THEN PRINT "After a short dispute " + STR$(DICEROLL5) + " of them decided to leave you." : MERCENARIES = MERCENARIES - DICEROLL5
 8790  RETURN
 8800  REM
 8810  REM
 8820  IF WEAPON$ = "no weapon" THEN ATTACK = 0
 8830  IF WEAPON$ = "dagger" THEN ATTACK = 1
 8840  IF WEAPON$ = "short sword" THEN ATTACK = 2
 8850  IF WEAPON$ = "long sword" THEN ATTACK = 3
 8860  IF WEAPON$ = "bastard sword" THEN ATTACK = 4
 8870  IF WEAPON$ = "2-handed sword" THEN ATTACK = 6
 8880  IF WEAPON$ = "magic sword" THEN ATTACK = 10
 8890  DAMAGE = 0
 8900  IF ATTACK + STRENGTH + LEVEL + FND(20) > 20 THEN DAMAGE = INT((STRENGTH+LEVEL)/2)+ATTACK+FND(10) : PRINT "You hit the " + ENEMY$ + " (" + STR$(DAMAGE) + " damage points)." : ENEMYHP = ENEMYHP - DAMAGE : GOTO 8930
 8910  IF WEAPON$ = "no weapon" THEN PRINT "You try to hit the " + ENEMY$ + " with your bare hands, but you miss."
 8920  IF WEAPON$ <> "no weapon" THEN PRINT "You try to slash the " + ENEMY$ + " with your " + WEAPON$ + ", but you miss."
 8930  IF ENEMYHP < 1 THEN GOTO 9300
 8940  DAMAGE = 0
 8950  IF ARMOR$ = "no armor" THEN DEFENSE = 0
 8960  IF ARMOR$ = "leather armor" THEN DEFENSE = 1
 8970  IF ARMOR$ = "chainmail" THEN DEFENSE = 3
 8980  IF ARMOR$ = "plate armor" THEN DEFENSE = 6
 8990  IF ARMOR$ = "magic armor" THEN DEFENSE = 10
 9000  EDAMAGE = 0
 9010  EHIT = 0
 9020  IF ENEMYATTACK + FND(20) > DEXTERITY + DEFENSE THEN EHIT = 1 : EDAMAGE = FND(ENEMYATTACK)+FND(ENEMYATTACK) - DEFENSE
 9030  IF EHIT = 1 AND EDAMAGE > 0 THEN PRINT "The " + ENEMY$ + " hits you (" + STR$(EDAMAGE) + " damage points)." : HP = HP - EDAMAGE
 9040  IF EHIT = 0 THEN PRINT "The " + ENEMY$ + " misses you."
 9050  IF EHIT = 1 AND EDAMAGE < 1 THEN PRINT "The " + ENEMY$ + " hits you, but your " + ARMOR$ + " protects you well and you don't get any damage."
 9060  DICEROLL9 = FND(100)
 9070  IF EHIT = 1 AND EDAMAGE > 9 AND DICEROLL9 = 100 AND ARMOR$ <> "no armor" AND ARMOR$ <> "magic armor" THEN PRINT "The " + ENEMY$ + "'s mighty attack destroys your " + ARMOR$ + "!" : ARMOR$ = "no armor"
 9080  IF (ENEMYATTACK + FND(30)) > 35 AND MERCENARIES > 0 THEN PRINT "Oh no, the " + ENEMY$ + " kills one of your mercenaries!" : MERCENARIES = MERCENARIES - 1
 9090  DICEROLL8 = FND(100)
 9100  IF (ENEMYATTACK + FND(30)) > 35 AND MAGES = 1 AND DICEROLL8 = 100 THEN PRINT "The " + ENEMY$ + " attacks your mage and kills him!" : MAGES = 0
 9110  IF HP < 1 THEN DEATHCAUSE$ = ENEMY$ : GOTO 9800
 9120  IF MERCENARIES > 1 AND (MERCENARIES+FND(100) > 60) THEN DAMAGE = INT(MERCENARIES/3 + 1)+FND(INT(MERCENARIES/2)) : PRINT "Your mercenaries hit the " + ENEMY$ + " (" + STR$(DAMAGE) + " damage points)." : ENEMYHP = ENEMYHP - DAMAGE : GOTO 9160
 9130  IF MERCENARIES = 1 AND (MERCENARIES+FND(100) > 60) THEN DAMAGE = INT(MERCENARIES/3 + 1)+FND(INT(MERCENARIES/2)) : PRINT "Your mercenary hits the " + ENEMY$ + " (" + STR$(DAMAGE) + " damage points)." : ENEMYHP = ENEMYHP - DAMAGE : GOTO 9160
 9140  IF MERCENARIES = 1 THEN PRINT "Your mercenary miss the " + ENEMY$ + "."
 9150  IF MERCENARIES > 1 THEN PRINT "Your mercenaries miss the " + ENEMY$ + "."
 9160  IF ENEMYHP < 1 THEN GOTO 9300
 9170  DAMAGE = 0
 9180  HEALING = 0
 9190  IF MAGES = 1 THEN DICEROLL6 = FND(5)
 9200  IF MAGES = 1 AND DICEROLL6 = 1 THEN PRINT "Your mage tries to cast a spell, but fails."
 9210  IF MAGES = 1 AND DICEROLL6 = 2 THEN PRINT "Your mage throws a fireball, but misses."
 9220  IF MAGES = 1 AND DICEROLL6 = 3 THEN DAMAGE = FND(20) : PRINT "Your mage throws a fireball, the " + ENEMY$ + " loses " + STR$(DAMAGE) + " HP." : ENEMYHP = ENEMYHP - DAMAGE
 9230  IF MAGES = 1 AND DICEROLL6 = 4 AND HP < MAXHP THEN HEALING = FND(MAXHP-HP) : PRINT "Your mage casts a healing spell, you recover " + STR$(HEALING) + " HP." : HP = HP + HEALING
 9240  IF MAGES = 1 AND DICEROLL6 = 4 AND HP = MAXHP AND MERCENARIES > 0 THEN PRINT "Your mage casts a spell and the wounds of one of your mercenaries are healed."
 9250  IF MAGES = 1 AND DICEROLL6 = 4 AND HP = MAXHP AND MERCENARIES = 0 THEN PRINT "Your mage casts a protection spell and his aura starts to glow."
 9260  IF MAGES = 1 AND DICEROLL6 = 5 THEN DAMAGE = 5+FND(10) : PRINT "Your mage casts a magic missle, the " + ENEMY$ + " loses " + STR$(DAMAGE) + " HP." : ENEMYHP = ENEMYHP - DAMAGE
 9270  IF ENEMYHP < 1 THEN GOTO 9300
 9280  PRINT "" : GOTO 8470
 9290  REM
 9300  REM Winning the fight
 9310  PRINT "You kill the " + ENEMY$ + "!"
 9320  IF MERCENARIES=1 THEN PRINT "Your mercenary checks the corpse to be sure the " + ENEMY$ + " is really dead."
 9330  IF MERCENARIES>1 THEN PRINT "Your mercenaries celebrate the victory."
 9340  DICEROLL7 = FND(2)
 9350  IF DICEROLL7 = 1 AND MAGES = 1 AND HP < MAXHP THEN HEALING = FND(MAXHP-HP) : PRINT "Your mage looks at your wounds and casts a healing spell. You recover " + STR$(HEALING) + " HP." : HP = HP + HEALING
 9360  IF DICEROLL7 = 2 AND MAGES = 1 THEN PRINT "Your mage congratulates you for winning the fight."
 9370  LOOT = FND(ENEMYGOLD) + 1
 9380  IF ENEMYGOLD > 0 THEN PRINT "You search the " + ENEMY$ + "'s corpse and find " + STR$(LOOT) + " gold pieces." : GOLD = GOLD + LOOT
 9390  PRINT "For winning the fight you gain " + STR$(ENEMYEXPERIENCE) + " experience points. "
 9400  EXPERIENCE = EXPERIENCE + ENEMYEXPERIENCE
 9410  ADVANCE = 0
 9420  IF EXPERIENCE > 100 AND LEVEL = 1 THEN ADVANCE = 1
 9430  IF EXPERIENCE > 300 AND LEVEL = 2 THEN ADVANCE = 1
 9440  IF EXPERIENCE > 500 AND LEVEL = 3 THEN ADVANCE = 1
 9450  IF EXPERIENCE > 800 AND LEVEL = 4 THEN ADVANCE = 1
 9460  IF EXPERIENCE > 1200 AND LEVEL = 5 THEN ADVANCE = 1
 9470  IF EXPERIENCE > 1600 AND LEVEL = 6 THEN ADVANCE = 1
 9480  IF EXPERIENCE > 2400 AND LEVEL = 7 THEN ADVANCE = 1
 9490  IF EXPERIENCE > 3400 AND LEVEL = 8 THEN ADVANCE = 1
 9500  IF EXPERIENCE > 4500 AND LEVEL = 9 THEN ADVANCE = 1
 9510  IF EXPERIENCE > 5700 AND LEVEL = 10 THEN ADVANCE = 1
 9520  FOR I = 11 TO 100
 9530  IF LEVEL = I AND EXPERIENCE > 5700 + (LEVEL-10)*1500 THEN ADVANCE = 1
 9540  NEXT I
 9550  IF ADVANCE = 1 THEN LEVEL = LEVEL + 1
 9560  IF ADVANCE = 1 THEN PRINT "You advance to level " + STR$(LEVEL) + "!"
 9570  IF ADVANCE = 1 AND STRENGTH > 19 AND DEXTERITY > 19 AND ENDURANCE > 19 AND CHARISMA > 19 THEN GOTO 9760
 9580  IF ADVANCE = 1 THEN PRINT "You can increase one of your stats: ";
 9590  IF ADVANCE = 1 AND STRENGTH < 20 THEN PRINT CHR$(27) + "[38;5;051m[s]" + CHR$(27) + "[38;5;252mtrength " ;
 9600  IF ADVANCE = 1 AND DEXTERITY < 20 THEN PRINT CHR$(27) + "[38;5;051m[d]" + CHR$(27) + "[38;5;252mexterity ";
 9610  IF ADVANCE = 1 AND ENDURANCE < 20 THEN PRINT CHR$(27) + "[38;5;051m[e]" + CHR$(27) + "[38;5;252mndurance ";
 9620  IF ADVANCE = 1 AND CHARISMA < 20 THEN PRINT CHR$(27) + "[38;5;051m[c]" + CHR$(27) + "[38;5;252mharisma " ;
 9630  IF ADVANCE = 1 THEN PRINT ""
 9640  STATCHOICE$ = ""
 9650  IF ADVANCE = 1 THEN INPUT "Which one do you want to increase? ", STATCHOICE$
 9660  IF ADVANCE = 1 THEN STATCHOICE$ = UPS$(STATCHOICE$)
 9670  IF ADVANCE = 1 AND (STATCHOICE$ = "S" OR STATCHOICE$ = "STRENGTH") AND STRENGTH < 20 THEN PRINT "Your strength is now " + STR$(STRENGTH+1) : STRENGTH = STRENGTH + 1
 9680  IF ADVANCE = 1 AND (STATCHOICE$ = "D" OR STATCHOICE$ = "DEXTERITY") AND DEXTERITY < 20 THEN PRINT "Your dexterity is now " + STR$(DEXTERITY+1) : DEXTERITY = DEXTERITY + 1
 9690  IF ADVANCE = 1 AND (STATCHOICE$ = "E" OR STATCHOICE$ = "ENDURANCE") AND ENDURANCE < 20 THEN PRINT "Your endurance is now " + STR$(ENDURANCE+1) : ENDURANCE = ENDURANCE + 1
 9700  IF ADVANCE = 1 AND (STATCHOICE$ = "C" OR STATCHOICE$ = "CHARISMA") AND CHARISMA < 20 THEN PRINT "Your charisma is now " + STR$(CHARISMA+1) : CHARISMA = CHARISMA + 1
 9710  IF ADVANCE = 1 AND (STATCHOICE$ = "S" OR STATCHOICE$ = "STRENGTH") AND STRENGTH > 19 THEN GOTO 9580
 9720  IF ADVANCE = 1 AND (STATCHOICE$ = "D" OR STATCHOICE$ = "DEXTERITY") AND DEXTERITY > 19 THEN GOTO 9580
 9730  IF ADVANCE = 1 AND (STATCHOICE$ = "E" OR STATCHOICE$ = "ENDURANCE") AND ENDURANCE > 19 THEN GOTO 9580
 9740  IF ADVANCE = 1 AND (STATCHOICE$ = "C" OR STATCHOICE$ = "CHARISMA") AND CHARISMA > 19 THEN GOTO 9580
 9750  IF ADVANCE = 1 AND STATCHOICE$ <> "C" AND STATCHOICE$ <> "CHARISMA" AND STATCHOICE$ <> "S" AND STATCHOICE$ <> "STRENGTH" AND STATCHOICE$ <> "D" AND STATCHOICE$ <> "DEXTERITY" AND STATCHOICE$ <> "E" AND STATCHOICE$ <> "ENDURANCE" THEN GOTO 9580
 9760  IF ADVANCE = 1 THEN MAXHP = 10 + LEVEL * ENDURANCE : HP = HP + ENDURANCE
 9770  IF ENEMY$ = "red dragon" THEN GOTO 10070
 9780  RETURN
 9790  REM
 9800  REM Death
 9810  PRINT "The " + ENEMY$ + " kills you!"
 9820  SLEEP 1
 9830  PRINT CHR$(27) + "[38;5;246m                                         "
 9840  PRINT "            .-------------.              "
 9850  PRINT "           /               \             "
 9860  PRINT "          |                 |            "
 9870  PRINT "          |       RIP       |            "
 9880  PRINT "          |                 |            "
 9890  PRINT "          |" + CHR$(27) + "[38;5;252m" + TAB$(NINT((17-LEN(NAME$))/2)) + NAME$ + TAB$(NINT((18-LEN(NAME$))/2)) + "" + CHR$(27) + "[38;5;246m|            "
 9900  PRINT "          |                 |            "
 9910  PRINT "          |                 |            "
 9920  PRINT CHR$(27) + "[38;5;040m.........." + CHR$(27) + "[38;5;246m|" + CHR$(27) + "[38;5;040m................." + CHR$(27) + "[38;5;246m|" + CHR$(27) + "[38;5;040m............"
 9930  PRINT CHR$(27) + "[0mPress enter"
 9940  INPUT "", DUMPP$
 9950  END
 9960  REM
 9970  REM Fight with the dragon
 9980  PRINT "Do you really want to enter the cave?"
 9990  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
10000  INPUT "", DRAGONCHOICE$
10010  DRAGONCHOICE$ = UPS$(DRAGONCHOICE$)
10020  IF DRAGONCHOICE$ = "N" OR DRAGONCHOICE$ = "NO" THEN PRINT "You decide to not take a risk." : RETURN
10030  IF DRAGONCHOICE$ <> "Y" AND DRAGONCHOICE$ <> "YES" THEN GOTO 9990
10040  PRINT "You enter the cave. The dragon notices you! The dragon is hostile!"
10050  ENEMY$ = "red dragon" : ENEMYHP = 300 : ENEMYATTACK = 25 : ENEMYEXPERIENCE = 4000 : ENEMYGOLD = 10000
10060  GOTO 8440
10070  PRINT "You have defeated the dragon. The Voteron Kingdom is now safe."
10080  END
10090  REM Random events
10100  REM
10110  DICEROLL10 = FND(30)
10120  IF DICEROLL10 = 1 THEN GOTO 10430
10130  IF DICEROLL10 = 2 THEN GOTO 10580
10140  IF DICEROLL10 = 3 THEN GOTO 10650
10150  IF DICEROLL10 = 4 THEN GOTO 10800
10160  IF DICEROLL10 = 5 THEN GOTO 10880
10170  IF DICEROLL10 = 6 THEN GOTO 10950
10180  IF DICEROLL10 = 7 THEN GOTO 11000
10190  IF DICEROLL10 = 8 THEN GOTO 11050
10200  IF DICEROLL10 = 9 THEN GOTO 11150
10210  IF DICEROLL10 = 10 THEN GOTO 11220
10220  IF DICEROLL10 = 11 THEN GOTO 11370
10230  IF DICEROLL10 = 12 THEN GOTO 11640
10240  IF DICEROLL10 = 13 THEN GOTO 11840
10250  IF DICEROLL10 = 14 THEN GOTO 11960
10260  IF DICEROLL10 = 15 THEN GOTO 12030
10270  IF DICEROLL10 = 16 THEN GOTO 12180
10280  IF DICEROLL10 = 17 THEN GOTO 12390
10290  IF DICEROLL10 = 18 THEN GOTO 12550
10300  IF DICEROLL10 = 19 THEN GOTO 12600
10310  IF DICEROLL10 = 20 THEN GOTO 12640
10320  IF DICEROLL10 = 21 THEN GOTO 12680
10330  IF DICEROLL10 = 22 THEN GOTO 12720
10340  IF DICEROLL10 = 23 THEN GOTO 12770
10350  IF DICEROLL10 = 24 THEN GOTO 12810
10360  IF DICEROLL10 = 25 THEN GOTO 12850
10370  IF DICEROLL10 = 26 THEN GOTO 12910
10380  IF DICEROLL10 = 27 THEN GOTO 13090
10390  IF DICEROLL10 = 28 THEN GOTO 13160
10400  IF DICEROLL10 = 29 THEN GOTO 13400
10410  IF DICEROLL10 = 30 THEN GOTO 13610
10420  REM
10430  REM Dice roll 1
10440  IF WEAPON$ <> "no weapon" THEN RETURN
10450  IF PEOPLE > 0 THEN RETURN
10460  PRINT "You find an enterance to a small cave. Do you want to enter?"
10470  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
10480  INPUT "", CAVECHOICE$
10490  CAVECHOICE$ = UPS$(CAVECHOICE$)
10500  IF CAVECHOICE$ = "NO" OR CAVECHOICE$ = "N" THEN PRINT "You return to the main road. " : RETURN
10510  IF CAVECHOICE$ <> "N" AND CAVECHOICE$ <> "NO" AND CAVECHOICE$ <> "Y" AND CAVECHOICE$ <> "YES" THEN GOTO 10470
10520  IF CAVECHOICE$ = "Y" OR CAVECHOICE$ = "YES" THEN PRINT "You decide to enter. Inside the cave you meet an old man in red robes. He says:"
10530  PRINT "'It's dangerous to go alone! Take this.'"
10540  PRINT "The old man gives you a short sword."
10550  WEAPON$ = "short sword"
10560  RETURN
10570  REM
10580  REM Dice roll 2
10590  IF MAXCAPACITY-CAPACITY < 15 THEN RETURN
10600  TOODSROLL = FND(4) + 1
10610  PRINT "You find " + STR$(TOODSROLL) + " fresh toods."
10620  GOODS(4) = GOODS(4) + TOODSROLL
10630  RETURN
10640  REM
10650  REM Dice roll 3
10660  IF STRENGTH > 19 THEN RETURN
10670  PRINT "You meet a caravan of gnome merchants."
10680  PRINT "One of them offers you a potion of strength for 500 gold pieces."
10690  PRINT "Do you want to buy?"
10700  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
10710  INPUT "", GNOMECHOICE$
10720  GNOMECHOICE$ = UPS$(GNOMECHOICE$)
10730  IF GNOMECHOICE$ <> "Y" AND GNOMECHOICE$ <> "YES" AND GNOMECHOICE$ <> "NO" AND GNOMECHOICE$ <> "N" THEN GOTO 10700
10740  IF GNOMECHOICE$ = "N" OR GNOMECHOICE$ = "NO" THEN PRINT "You decide to not buy" : RETURN
10750  IF (GNOMECHOICE$ = "Y" OR GNOMECHOICE$ = "YES") AND GOLD < 500 THEN PRINT "You want to buy it, but you don't have enough money." : RETURN
10760  PRINT "You buy a potion and immediately drink it. You feel slightly stronger."
10770  STRENGTH = STRENGTH + 1
10780  RETURN
10790  REM
10800  REM Dice roll 4
10810  IF MERCENARIES < 5 THEN RETURN
10820  IF GOODS(0) < 5 THEN RETURN
10830  BEERROLL = FND(4)+1
10840  PRINT "Your mercenaries started a party and got drunk. They took your " + STR$(BEERROLL) + " barrels of beer."
10850  GOODS(0) = GOODS(0) - BEERROLL
10860  RETURN
10870  REM
10880  REM Dice roll 5
10890  IF WORKERS < 2 THEN RETURN
10900  IF MAXCAPACITY-CAPACITY < 30 THEN RETURN
10910  PRINT "One of your workers died of dysentery. "
10920  WORKERS = WORKERS - 1
10930  RETURN
10940  REM
10950  REM Dice roll 6
10960  PRINT "You meet a group of guards patrolling the road. One of them says to you:"
10970  PRINT "'I used to be a merchant like you. Then I took an arrow in the knee...'"
10980  RETURN
10990  REM
11000  REM Dice roll 7
11010  PRINT "You find a gold coin on the road. Well, it may be your lucky day."
11020  GOLD = GOLD + 1
11030  RETURN
11040  REM
11050  REM Dice roll 8
11060  IF GOLD < 1000 THEN RETURN
11070  IF MERCENARIES < 10 THEN RETURN
11080  MERCENARYROLL = FND(4) + 1
11090  GOLDROLL = FND(150)+10
11100  PRINT STR$(MERCENARYROLL) + " of your mercenaries stole your money and flee. You lost " + STR$(GOLDROLL) + " gold pieces."
11110  GOLD = GOLD - GOLDROLL
11120  MERCENARIES = MERCENARIES - MERCENARYROLL
11130  RETURN
11140  REM
11150  REM Dice roll 9
11160  IF GOLD < 10000 THEN RETURN
11170  PRINT "You meet a tax inspector. He asks you about taxes you didn't pay."
11180  PRINT "The tax inspector is hostile!"
11190  ENEMY$ = "tax inspector" : ENEMYATTACK = 10 : ENEMYHP = 60 : ENEMYEXPERIENCE = 200 : ENEMYGOLD = 1000
11200  GOTO 8440
11210  REM
11220  REM Dice roll 10
11230  IF CHARISMA > 19 THEN RETURN
11240  IF GOLD < 50 THEN RETURN
11250  PRINT "You meet a bard in a crossroads inn. The bard tells you he's broke."
11260  PRINT "Do you want to give him 50 gold pieces?"
11270  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
11280  INPUT "", BARDCHOICE$
11290  BARDCHOICE$ = UPS$(BARDCHOICE$)
11300  IF BARDCHOICE$ = "N" OR BARDCHOICE$ = "NO" THEN PRINT "You leave the inn. The bard is very unhappy." : RETURN
11310  IF BARDCHOICE$ <> "Y" AND BARDCHOICE$ <> "YES" THEN GOTO 11270
11320  PRINT "The young bard thanks you and gives you a few tips on art of persuasion."
11330  PRINT "You feel your charisma increased by one point!"
11340  CHARISMA = CHARISMA + 1 : GOLD = GOLD - 50
11350  RETURN
11360  REM
11370  REM Dice roll 11
11380  IF BUMMAP = 1 THEN RETURN
11390  IF GOODS(8) < 6 THEN RETURN
11400  PRINT "You meet a dwarven bum. He challenges you to a drinking duel."
11410  PRINT "Do you want to drink wine with the dwarven bum?"
11420  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
11430  INPUT "", BUMCHOICE$
11440  BUMCHOICE$ = UPS$(BUMCHOICE$)
11450  IF BUMCHOICE$ = "N" OR BUMCHOICE$ = "NO" THEN PRINT "You refuse to drink. The dwarven bum is very upset." : PRINT "The dwarven bum draws a weapon and starts a fight!"
11460  IF BUMCHOICE$ = "N" OR BUMCHOICE$ = "NO" THEN ENEMY$ = "dwarven bum" : ENEMYATTACK = 5 : ENEMYEXPERIENCE = 100 : ENEMYHP = 20 : ENEMYGOLD = 0 : GOTO 8440
11470  IF BUMCHOICE$ <> "Y" AND BUMCHOICE$ <> "YES" THEN GOTO 11420
11480  PRINT "You start drinking wine with the dwarven bum."
11490  PRINT "You and the dwarven bum drink the first bottle of wine. He looks sober."
11500  PRINT "You start drinking second bottle of wine. The dwarven bum is still sober."
11510  PRINT "You have a vertigo, but continue drinking. The dwarven bum burps."
11520  GOODS(8) = GOODS(8) - 6
11530  BUMROLL = FND(10) + ENDURANCE
11540  IF BUMROLL < 18 THEN PRINT "After the third bottle you black out. You wake up next morning with terrible headache." : PRINT "The dwarven bum is gone. There are six empty bottle lying around." : RETURN
11550  PRINT "After the third bottle the dwarf blacks out. You win the drinking duel!"
11560  PRINT "You wake up next morning with annoying headache. The dwarven bum vomits."
11570  PRINT "After eating a very spicy breakfast the dwarven bum tells you his story."
11580  PRINT "He says he used to be a bandit, but was too scared to kill people and resigned."
11590  PRINT "He tels you about small cave where his comrades used to store stolen gold."
11600  PRINT "The dwarven bum quickly draws a map to the cave and leaves you."
11610  BUMMAP = 1
11620  RETURN
11630  REM
11640  REM Dice roll 12
11650  IF BUMMAP = 0 THEN RETURN
11660  IF BUMTREASURE = 1 THEN RETURN
11670  PRINT "You find a small cave marked on dwarven bum's map. "
11680  PRINT "You feel excited. Do you want do enter the cave?"
11690  BUMTREASURE = 1
11700  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
11710  INPUT "", BUMCAVECHOICE$
11720  BUMCAVECHOICE$ = UPS$(BUMCAVECHOICE$)
11730  IF BUMCAVECHOICE$ = "N" OR BUMCAVECHOICE$ = "NO" THEN PRINT "You return on the main road. You feel you missed some big opportunity." : RETURN
11740  IF BUMCAVECHOICE$ <> "Y" AND BUMCAVECHOICE$ <> "YES" THEN GOTO 11700
11750  IF MAXCAPACITY-CAPACITY < 10 THEN PRINT "You enter the cave and find a wooden chest with 5000 pieces of gold inside."
11760  IF MAXCAPACITY-CAPACITY > 9 THEN PRINT "You enter the cave and find a wooden chest with 5000 pieces of gold inside." : PRINT "You also find a few diamonds and rubies." : GOODS(6) = GOODS(6) + 5
11770  GOLD = GOLD + 5000
11780  PRINT "When you leave the cave a bandit's chieftain notices you from the distance."
11790  PRINT "The bandit's chieftain runs in your direction!"
11800  PRINT "The bandit's chieftain is hostile!"
11810  ENEMY$ = "bandit's chieftain" : ENEMYHP = 40 : ENEMYATTACK = 10 : ENEMYEXPERIENCE = 150 : ENEMYGOLD = 100
11820  GOTO 8440
11830  REM
11840  REM Dice roll 13
11850  PRINT "You notice a sleeping mountain troll. "
11860  PRINT "Do you want to " + CHR$(27) + "[38;5;051m[a]" + CHR$(27) + "[38;5;252mttack the troll or " + CHR$(27) + "[38;5;051m[l]" + CHR$(27) + "[38;5;252meave him alone? ";
11870  INPUT "", TROLLCHOICE$
11880  TROLLCHOICE$ = UPS$(TROLLCHOICE$)
11890  IF TROLLCHOICE$ = "L" OR TROLLCHOICE$ = "LEAVE" THEN PRINT "You leave the troll alone and return on the road." : RETURN
11900  IF TROLLCHOICE$ <> "A" AND TROLLCHOICE$ <> "ATTACK" THEN GOTO 11860
11910  PRINT "The mountain troll wakes up and is very angry."
11920  PRINT "You start a fight with the mountain troll."
11930  ENEMY$ = "mountain troll" : ENEMYHP = 100 : ENEMYATTACK = 20 : ENEMYEXPERIENCE = 500 : ENEMYGOLD = 0
11940  GOTO 8440
11950  REM
11960  REM Dice roll 14
11970  IF HP = MAXHP THEN RETURN
11980  PRINT "You meet an elven priestess. She casts a spell and cure your wounds."
11990  PRINT "You are fully healed."
12000  HP = MAXHP
12010  RETURN
12020  REM
12030  REM Dice roll 15
12040  IF GOLD = 0 THEN RETURN
12050  PRINT "You encounter a group of bandits."
12060  PRINT "They say they will let you live if you give them all your money."
12070  PRINT "Do you want to " + CHR$(27) + "[38;5;051m[f]" + CHR$(27) + "[38;5;252might with them or " + CHR$(27) + "[38;5;051m[p]" + CHR$(27) + "[38;5;252may? ";
12080  INPUT "", BANDITSCHOICE$
12090  BANDITSCHOICE$ = UPS$(BANDITSCHOICE$)
12100  IF BANDITSCHOICE$ = "P" OR BANDITSCHOICE$ = "PAY" THEN GOLD = 0 : PRINT "You decided to give bandits all of your gold. " : PRINT "They laugh loudly and leave you alive. " : RETURN
12110  IF BANDITSCHOICE$ <> "F" AND BANDITSCHOICE$ <> "FIGHT" THEN GOTO 12070
12120  IF MERCENARIES > 1 THEN PRINT "Your mercenaries easily kill most of the bandits, but not the bandit's chief."
12130  IF MERCENARIES = 1 THEN PRINT "You and your mercenary easily kill most of the bandits, but not their chief."
12140  IF MERCENARIES = 0 THEN PRINT "You easily kill most of the bandits, but not their chief."
12150  ENEMY$ = "bandit chief" : ENEMYHP = 30 : ENEMYATTACK = 10 : ENEMYEXPERIENCE = 100 : ENEMYGOLD = 100
12160  GOTO 8440
12170  REM
12180  REM Dice roll 16
12190  PRINT "You meet an alchemist who is traveling to the city. "
12200  PRINT "He proposes you to make a potion of dexterity using 3 of your elixirs."
12210  PRINT "Do you want to give him three elixirs?"
12220  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
12230  INPUT "", ALCHEMISTCHOICE$
12240  ALCHEMISTCHOICE$ = UPS$(ALCHEMISTCHOICE$)
12250  IF ALCHEMISTCHOICE$ = "N" OR ALCHEMISTCHOICE$ = "NO" THEN PRINT "You refuse the alchemist's proposal." : RETURN
12260  IF ALCHEMISTCHOICE$ <> "Y" AND ALCHEMISTCHOICE$ <> "YES" THEN GOTO 12220
12270  IF GOODS(3) < 3 THEN PRINT "You don't have that many elixirs! Such a bad luck." : RETURN
12280  PRINT "The old alchemist carefully mixes your exlixirs. "
12290  PRINT "He adds a drop of some strange, fluorescent liquid to the mixture."
12300  PRINT "The potion of dexterity is ready!"
12310  PRINT "The alchemist takes part of the potion as a payment for his work."
12320  PRINT "You drink the potion, it tastes like strawberries."
12330  GOODS(3) = GOODS(3) - 3
12340  IF DEXTERITY > 19 THEN PRINT "You don't feel any difference. Your dexterity is already very high." : RETURN
12350  PRINT "Your dexterity is now " + STR$(DEXTERITY+1) + "!"
12360  DEXTERITY = DEXTERITY + 1
12370  RETURN
12380  REM
12390  REM Dice roll 17
12400  PRINT "You meet a village healer who offers to cure your wounds for 50 gold pieces."
12410  PRINT "Do you want to pay for healing?"
12420  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
12430  INPUT "", HEALERCHOICE$
12440  HEALERCHOICE$ = UPS$(HEALERCHOICE$)
12450  IF HEALERCHOICE$ = "N" OR HEALERCHOICE$ = "NO" THEN PRINT "You decide to not pay and the village healer leaves." : RETURN
12460  IF HEALERCHOICE$ <> "Y" AND HEALERCHOICE$ <> "YES" THEN GOTO 12420
12470  IF GOLD < 50 THEN PRINT "You don't have enough gold!" : RETURN
12480  GOLD = GOLD - 50
12490  IF HP = MAXHP THEN PRINT "The healer takes your money and starts examining you." : PRINT "The village healer says you're completely healthy." : RETURN
12500  PRINT "The village healer looks at your wounds and gives you a health potion."
12510  PRINT "It tastes awful, but after a few minutes you feel much better."
12520  HP = MAXHP
12530  RETURN
12540  REM
12550  REM Dice roll 18
12560  PRINT "You pass a carriage with an old man with grey beard and pointed hat."
12570  PRINT "The old man is smoking a pipe. You wonder where is he going."
12580  RETURN
12590  REM
12600  REM Dice roll 19
12610  PRINT "You pass a group of farmers, returning from cabbage fields."
12620  RETURN
12630  REM
12640  REM Dice roll 20
12650  PRINT "You see a stone castle in the distance."
12660  RETURN
12670  REM
12680  REM Dice roll 21
12690  PRINT "It starts raining. You hope you will soon find an inn."
12700  RETURN
12710  REM
12720  REM Dice roll 22
12730  PRINT "You pass a shepherd and tens of sheep."
12740  PRINT "You wonder how would look your life if you choose a different profession."
12750  RETURN
12760  REM
12770  REM Dice roll 23
12780  PRINT "You hear wolves howling in a distance."
12790  RETURN
12800  REM
12810  REM Dice roll 24
12820  PRINT "You hear an owl hooting."
12830  RETURN
12840  REM
12850  REM Dice roll 25
12860  PRINT "You pass a white-haired (but not old) man in black, leather jacket."
12870  PRINT "He's carrying a corpse of some nasty monster."
12880  PRINT "You wonder how rich would you be if you get paid for every monster you slayed."
12890  RETURN
12900  REM
12910  REM Dice roll 26
12920  PRINT "You meet a beggar who asks you for one gold piece."
12930  PRINT "Do you want to give him money?"
12940  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
12950  INPUT "", BEGGARCHOICE$
12960  BEGGARCHOICE$ = UPS$(BEGGARCHOICE$)
12970  IF (BEGGARCHOICE$ = "N" OR BEGGARCHOICE$ = "NO") AND PEOPLE = 0 THEN PRINT "You refuse to give him a gold piece. Maybe it's a better choice." : RETURN
12980  IF (BEGGARCHOICE$ = "N" OR BEGGARCHOICE$ = "NO") AND PEOPLE > 0 THEN PRINT "You refuse go give him a gold piece." : PRINT "One of your employees gives him a loaf of bread."
12990  IF (BEGGARCHOICE$ = "N" OR BEGGARCHOICE$ = "NO") AND PEOPLE > 0 THEN PRINT "The beggar seems disappointed and throws the bread away when you leave him." : RETURN
13000  IF BEGGARCHOICE$ <> "Y" AND BEGGARCHOICE$ <> "YES" THEN GOTO 12940
13010  IF GOLD = 0 THEN PRINT "You want to give the beggar a coin, but you realize you are completely broke." : PRINT "The beggar smiles at you, you notice he's almost toothless."
13020  IF GOLD = 0 THEN PRINT "The beggar opens his pouch which is full of money and gives you 5 gold pieces." : GOLD = GOLD + 5 : RETURN
13030  GOLD = GOLD - 1
13040  PRINT "You give the beggar one gold piece."
13050  PRINT "He thanks you and tells you he used to be a spice merchant,"
13060  PRINT "but lost all his wealth because of bandits and tax inspectors."
13070  RETURN
13080  REM
13090  REM Dice roll 27
13100  IF RACE$ <> "O" THEN RETURN
13110  PRINT "You enter a crossroads inn, but the innkeeper shows you a sign:"
13120  PRINT "'NO ORCS ALLOWED!'"
13130  PRINT "You leave the inn in a bad mood. You think it's such an injustice."
13140  RETURN
13150  REM
13160  REM Dice roll 28
13170  PRINT "You meet an orc shamaness. She wants to sell you a weird potion that enhances "
13180  PRINT "one's strength, but lowers charisma. The price is 300 gold pieces."
13190  PRINT "Do you want to buy a potion?"
13200  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
13210  INPUT "", SHAMANESSCHOICE$
13220  SHAMANESSCHOICE$ = UPS$(SHAMANESSCHOICE$)
13230  IF SHAMANESSCHOICE$ = "N" OR SHAMANESSCHOICE$ = "NO" THEN PRINT "You refuse to buy a potion and leave." : RETURN
13240  IF SHAMANESSCHOICE$ <> "Y" AND SHAMANESSCHOICE$ <> "YES" THEN GOTO 13200
13250  IF GOLD < 300 THEN PRINT "You want to buy the potion, but you don't have enough gold." : RETURN
13260  GOLD = GOLD - 300
13270  PRINT "You buy the potion and drink it. It doesn't taste good and it's quite intoxicating."
13280  PRINT "The orc shamaness tells you she used a moonshine to soak the magic herbs. "
13290  IF STRENGTH > 19 THEN PRINT "You don't feel any difference. Your strengh is already very high."
13300  IF STRENGTH = 19 THEN PRINT "You feel slightly stronger." : STRENGTH = STRENGTH + 1
13310  IF STRENGTH < 19 THEN PRINT "You feel your muscles grow instantly." : STRENGTH = STRENGTH + 2
13320  IF CHARISMA < 3 THEN PRINT "The charisma-lowering side effect is deadly for you!" : DEATHCAUSE$ = "magic potion poisoning" : GOTO 9830
13330  CHARISMA = CHARISMA - 2
13340  PRINT "The side effect of the potion is a change of your apperance."
13350  PRINT "Your skin is now covered in scars after too fast muscle growth."
13360  PRINT "You are afraid it will have negative effect on your relations with people."
13370  PRINT "Your charisma is now lower by 2 points."
13380  RETURN
13390  REM
13400  REM Dice roll 29
13410  PRINT "You encounter a robbed caravan. The merchant and his people were murdered."
13420  PRINT "Bandits took almost everything, including horses, but left one wooden chest."
13430  PRINT "The chest is closed and there is a strange, glowing inscription on the lock."
13440  PRINT "You suppose it may be a magic lock, possibly with some nasty trap."
13450  PRINT "Do you want to open the chest?"
13460  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
13470  INPUT "", CHESTCHOICE$
13480  IF CHESTCHOICE$ = "N" OR CHESTCHOICE$ = "NO" THEN PRINT "You decide to not touch the chest." : RETURN
13490  IF CHESTCHOICE$ <> "Y" AND CHESTCHOICE$ <> "YES" THEN GOTO 13460
13500  IF MAGES = 1 THEN PRINT "Your mage examines the lock and says it's a simple magic trap." : PRINT "The bandits probably also knew what is this and decided to not take a risk." : PRINT "Your mage casts a spell and the trap is disarmed."
13510  TRAPDAMAGE = FND(10)
13520  IF MAGES = 0 THEN PRINT "You carefully try to disarm the trap, but it suddenly explodes!" : PRINT "You lose " + STR$(TRAPDAMAGE) + " HP." : HP = HP - TRAPDAMAGE
13530  IF HP < 1 THEN DEATHCAUSE$ = "magic trap" : PRINT "Oh no, you die!" : GOTO 9830
13540  PRINT "You use your lockpicking skills and unlock the chest."
13550  DICEROLL11 = FND(3) : CHESTGOLD = FND(200) + 50
13560  IF DICEROLL11 = 1 THEN PRINT "Unfortunately, the chest is empty."
13570  IF DICEROLL11 = 2 THEN PRINT "You find " + STR$(CHESTGOLD) + " gold pieces inside!" : GOLD = GOLD + CHESTGOLD
13580  IF DICEROLL11 = 3 THEN PRINT "You open the chest and find a mummy inside. The mummy is hostile!" : ENEMY$ = "mummy" : ENEMYATTACK = 5 : ENEMYHP = 15 : ENEMYEXPERIENCE = 70 : ENEMYGOLD = 0 : GOTO 8440
13590  RETURN
13600  REM
13610  REM Dice roll 30
13620  IF WORKERS < 2 THEN RETURN
13630  IF GOLD < WORKERS * 15 THEN RETURN
13640  PRINT "Your workers demand a higher pay. The want additional 5 gold pieces per person."
13650  PRINT "Do you want to increase their wages? (cost: " + STR$(5*WORKERS) + " gold pieces)"
13660  PRINT CHR$(27) + "[38;5;051m[y]" + CHR$(27) + "[38;5;252mes/" + CHR$(27) + "[38;5;051m[n]" + CHR$(27) + "[38;5;252mo ";
13670  INPUT "", WAGESCHOICE$
13680  WAGESCHOICE$ = UPS$(WAGESCHOICE$)
13690  IF WAGESCHOICE$ = "Y" OR WAGESCHOICE$ = "YES" THEN PRINT "You decide to pay additional 5 gold pieces to every worker." : PRINT "Your workers are happy now." : GOLD = GOLD - WORKERS*5 : RETURN
13700  IF WAGESCHOICE$ <> "N" AND WAGESCHOICE$ <> "NO" THEN GOTO 13660
13710  PRINT "You refuse to pay them extra money. Your workers are very upset."
13720  DICEROLL12 = FND(3)
13730  IF DICEROLL < 3 THEN RETURN
13740  PRINT "You wake up next day and realize all of your workers are gone!"
13750  PRINT "The worse, they stole all of your goods!"
13760  WORKERS = 0
13770  FOR I = 0 TO 11
13780  GOODS(I) = 0
13790  NEXT I
13800  RETURN
13810  REM
