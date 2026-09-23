; Orchestra code that more than one piece uses. INCDIR points here, so a
; piece writes #include "tone.orc" without a folder.

instr tone
  iamp = 0.4
  ifreq = p4
  kenv madsr 0.02, 0.1, 0.7, 0.4
  asig oscili iamp * kenv, ifreq
  outs asig, asig
endin
