<CsoundSynthesizer>

    <CsOptions>
        -odac
    </CsOptions>

    <CsInstruments>
        sr = 44100
        kr = 441
        // ksmps should always equal sr/kr
        ksmps = 100
        nchnls = 1

        // oscillator
        instr 101
            a1 oscil 10000, 880, 1
            out a1
        endin

        // fm pair
        instr 102
            a1 foscil 5000, 440, 1, 2, 3, 1
            out a1
        endin

        // harmonic partials
        instr 103
            a1 buzz 2500, 220, 10, 1
            out a1
        endin

        // pluck generator
        instr 104
            a1 pluck 1250, 110, 440, 2, 1
            out a1
        endin

        // granular processor
        instr 105
            a1 grain 625, 55, 55, 5000, 10, .05, 1, 3, 1
            out a1
        endin
        
        // load sample
        instr 106
            a1 loscil 10000, 440, 4
            out a1
        endin
    </CsInstruments>

    <CsScore>
        // f-statements for generating signals
        f 1 0 4096 10 1
        f 2 0 4096 10 1 .5 .333 .25 .2 .166 .142 .125 .111 .1 .09 .083 .076 .071 .066 .062
        f 3 0 4097 20 2 1
        f 4 0 0 1 "sing.aif" 0 4 0

        // score
        i 101 0 1
        ; i 101 2 1
        ; i 101 4 1
        i 102 2 1
        i 103 4 1
        i 104 6 1
        i 105 8 1
        i 106 10 2
        ; i 106 0.25 2
        ; i 106 0.5 2
        ; i 106 0.75 2
        ; i 106 1 2
        ; i 106 1.25 2
        ; i 106 1.5 2
        ; i 106 1.75 2
    </CsScore>

</CsoundSynthesizer>