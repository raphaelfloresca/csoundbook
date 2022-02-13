<CsoundSynthesizer>
    
    <CsOptions>
        -odac -r44100 -k441
    </CsOptions>
    
    <CsInstruments>
        nchnls  =       1

                instr   103
                ; buzz outputs a series of harmonically related partials
        a1      buzz    10000, 440, 10, 1 ; 10 refers to knh: total number of harmonics requested
                out     a1
                endin
    </CsInstruments>

    <CsScore>
        f   1   0   4096    10  1

        i   103 0   3
    </CsScore>
</CsoundSynthesizer>