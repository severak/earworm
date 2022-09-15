PRINT "Different sounds demo"
PRINT ""
PRINT "1) computer bleeps"
PRINT "2) kick"
PRINT "3) ringing"
PRINT "4) scrape"


INPUT "Please choose sound to play:", snd

IF snd = 1 THEN
        REM bleeps
        FOR i = 1 TO 10
                SOUND (RND * 1000) + 100, 2
        NEXT i
ELSEIF snd = 2 THEN
        REM kick
        FOR i = 1 TO 20
                SOUND (101 - i), .1
        NEXT i
ELSEIF snd = 3 THEN
        REM ringing
        FOR i = 1 TO 9
                SOUND 1000, 1
                SOUND 500, 1
        NEXT i
ELSEIF snd = 4 THEN
        REM scrape
        FOR i = 1 TO 10
                SOUND 1000, .1
                SOUND 500, .1
        NEXT i
END IF

