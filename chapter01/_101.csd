<CsoundSynthesizer>

<CsOptions>
-odac -r44100 -k441
</CsOptions>

<CsInstruments>
nchnls    =       1   ; mono output

          instr   101   ; start of instrument
; var     opcode  amp    freq function
  a1      oscil   10000, 440, 1
;         output  var for output
          out     a1
          endin   ; end of instrument
</CsInstruments>

<CsScore>
;   f   number  loadtime    table-size  GEN Routine     parameter1 (1st harmonic strength)
    f   1       0           4096        10              1
;   note-statement  instr   start-time  duration
    i               101     0           3
</CsScore>

</CsoundSynthesizer>