DECLARE FUNCTION Rand! (min%, max%)
DECLARE FUNCTION NoteToStr$ (n%)

RANDOMIZE TIMER

REM mockup of UI

SCREEN 1

REM splash scren

COLOR 4, 1
CLS
LOCATE 5
PRINT "     * E * A * R * W * O * R * M * "
PRINT "       -   -   -   -   -   -   - "
PRINT ""
PRINT "         an PC SPEAKER TRACKER"
PRINT ""
PRINT "       created by Severak in 2022  "
PRINT ""
PRINT ""
PRINT ""
PRINT ""
PRINT "     as part of #hvdosdev challenge"
PRINT ""
PRINT "    see high-voltage.cz for more info"
LOCATE 25
PRINT " press any key to continue..."
SLEEP

REM main interface

COLOR 9, 1
CLS
PRINT "= EARWORM | "
PRINT ""
PRINT "  V1  V2  V3  V4  FX"
PRINT ""
FOR i = 1 TO 16
PRINT "  "; NoteToStr(Rand(36, 107)); "  "; NoteToStr(Rand(36, 107)); "  "; NoteToStr(Rand(36, 107)); "  "; NoteToStr(0)
NEXT i
SLEEP

REM useful functions, actually implemented

FUNCTION NoteToStr$ (n%)
IF n% = 0 THEN
        NoteToStr$ = ".."
ELSE
        octave = CINT(n% / 12)
        notei% = n% MOD 12
        notes$ = "CcDdEFfGgAaB=="
        NoteToStr$ = MID$(notes$, notei% + 1, 1) + LTRIM$(STR$(octave))
END IF
END FUNCTION

FUNCTION Rand (min%, max%)
        Rand = CINT((RND * (max% - min%) + min%))
END FUNCTION

