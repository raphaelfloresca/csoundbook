<CsoundSynthesizer>
    
    <CsOptions>
        -odac -r44100 -k441
    </CsOptions>

    <CsInstruments>
        nchnls = 1

        instr 106
            a1  loscil  10000, 440, 4
            out a1
        endin
    </CsInstruments>

    <CsScore>
        /*
            f#  time  size  1  filcod  skiptime  format  channel
            
            size -- number of points in the table. Ordinarily a power of 2 or a power-of-2 plus 1 (see f statement); the maximum tablesize is 16777216 (224) points. The allocation of table memory can be deferred by setting this parameter to 0; the size allocated is then the number of points in the file (probably not a power-of-2), and the table is not usable by normal oscillators, but it is usable by a loscil unit. The soundfile can also be mono or stereo.

            filcod -- integer or character-string denoting the source soundfile name. An integer denotes the file soundin.filcod ; a character-string (in double quotes, spaces permitted) gives the filename itself, optionally a full pathname. If not a full path, the file is sought first in the current directory, then in that given by the environment variable SSDIR (if defined) then by SFDIR. See also soundin.

            skiptime -- begin reading at skiptime seconds into the file.

            channel -- channel number to read in. 0 denotes read all channels.

            format -- specifies the audio data-file format:

                1 - 8-bit signed character    4 - 16-bit short integers 
                2 - 8-bit A-law bytes         5 - 32-bit long integers 
                3 - 8-bit U-law bytes         6 - 32-bit floats
        

            If format = 0 the sample format is taken from the soundfile header, or by default from the CSound -o command-line flag.

        */
        f   4   0   0   1   "sing.aif"  0   4   0

        i   106 0   2.3
    </CsScore>
</CsoundSynthesizer>