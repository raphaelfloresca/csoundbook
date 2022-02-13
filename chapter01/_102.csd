<CsoundSynthesizer>
    <CsOptions>
        -odac -r44100 -k441
    </CsOptions>

    <CsInstruments>
        nchnls  =       1

                instr   102
        ;       fm oscillator   amp    freq     car ratio   mod ratio   strength    f-statement
        a1      foscil          10000, 440,     1,          2,          1,          1
                out     a1
                endin
    </CsInstruments>

    <CsScore>
        f   1   0   4096    10  1

        i   102 0   3
    </CsScore>
</CsoundSynthesizer>
