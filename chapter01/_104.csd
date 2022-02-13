<CsoundSynthesizer>

    <CsOptions>
        -odac -r44100 -k441
    </CsOptions>

    <CsInstruments>
        nchnls  =       1

                instr   104
        ;                               increase to get more muted plucky sound
        a1      pluck   10000,  440,    800,    2,  1
                out     a1
                endin
    </CsInstruments>

    <CsScore>
        f   2   0   4096    10  1   .5  .333    .25 .2  .166    .142    .125    .111    .1  .09 .0.83   .076    .071    .066    .062
        i   104 0   1
    </CsScore>
</CsoundSynthesizer>