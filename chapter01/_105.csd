<CsoundSynthesizer>

    <CsOptions>
        -odac -r44100 -k441
    </CsOptions>

    <CsInstruments>
        nchnls  =       1

                instr   105
                /*
                xamp: amplitude
                xpitch: frequency
                xdens: number of grains per second
                kampoff: maximum amount of amp deviation for a given grain
                kpitchoff: maximum amount of freq deviation for a given grain
                kgdur: grain duration in seconds
                igfn: f-statement for grain waveform
                iwfn: f-statement for grain envelope
                imgdur: maximum grain duration
                */
                ;       xamp    xpitch  xdens   kampoff     kpitchoff   kgdur   igfn    iwfn    imgdur
        a1      grain   10000,  440,    55,     10000,      10,         .05,    1,      3,      1
                out     a1
                endin
    </CsInstruments>

    <CsScore>
        f   1   0   4096    10  1
        ; GEN20 generates functions of different windows. These windows are usually used for spectrum analysis or for grain envelopes
        /*
        f # time size 20 window max [opt]
        size: number of points in table - must be power of 2 (+1)
        window: type of window to generate
        max: For negative p4 this will be the absolute value at window peak point. If p4 is positive or p4 is negative and p6 is missing the table will be post-rescaled to a maximum value of 1.
        */
        f   3   0   4097    20  2   1

        i   105 0   3
    </CsScore>
</CsoundSynthesizer>