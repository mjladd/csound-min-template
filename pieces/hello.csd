<CsoundSynthesizer>
<CsOptions>
; No -odac here. The csd helper passes -o and writes to renders/.
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1

#include "tone.orc"

</CsInstruments>
<CsScore>
i "tone" 0 2 220
i "tone" 1 2 330
i "tone" 2 3 440
e
</CsScore>
</CsoundSynthesizer>
