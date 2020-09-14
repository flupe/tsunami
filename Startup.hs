:script ~/.vim/plugged/vim-tidal/Tidal.ghci

:{
(&) = (#)

-- smoothen patterns, useful for midi knobs
smooths = density 32 . stack

-- midi parameter control pattern helper
param id = (#) (ccn id) . ccv

-- channeled midi control pattern helper
midi c = s "midi" & midichan c

-- volca keys helpers
keys = midi 3
kPortamento = param 5
kDetune     = param 42
kVCOEGInt   = param 43
kCutoff     = param 44
kVCFEGInt   = param 45
kLFORate    = param 46
kLFOPitch   = param 47
kLFOCutoff  = param 48
kAttack     = param 49
kDecay      = param 50
kSustain    = param 51
kTime       = param 52
kFeedback   = param 53

-- volca drum helpers
drum = midi 2
-- part 1
dLevel1   = param 15
dAmount1  = param 16
dRate1    = param 17
dPitch1   = param 18
dAttack1  = param 19
dRelease1 = param 20
-- part 2
dLevel2   = param 24 
dAmount2  = param 25
dRate2    = param 26
dPitch2   = param 27
dAttack2  = param 28 
dRelease2 = param 29
-- part 3
dLevel3   = param 47
dAmount3  = param 48
dRate3    = param 49
dPitch3   = param 50
dAttack3  = param 51
dRelease3 = param 52
-- part 4
dLevel4   = param 56
dAmount4  = param 57
dRate4    = param 58
dPitch4   = param 59
dAttack4  = param 60
dRelease4 = param 61
-- part 5
dLevel5   = param 81
dAmount5  = param 82
dRate5    = param 83
dPitch5   = param 84
dAttack5  = param 85
dRelease5 = param 86
-- part 6
dLevel6   = param 90
dAmount6  = param 96
dRate6    = param 97
dPitch6   = param 98
dAttack6  = param 99
dRelease6 = param 100

dPan1     = param 109
dPan2     = param 110
dPan3     = param 111
dPan4     = param 112
dPan5     = param 113
dPan6     = param 114

dDecay    = param 117
dBody     = param 118
dTune     = param 119

dp :: Pattern Int -> ControlPattern
dp = n . (drumN <$>)
  where
    drumN 1 = 0
    drumN 2 = 2
    drumN 3 = 4
    drumN 4 = 5
    drumN 5 = 7
    drumN 6 = 9
    drumN _ = 0

-- volca nubass helpers
nubass = midi 1

-- volca modular helpers
modular = midi 0
:}
