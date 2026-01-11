public class BGM_Playing
{
    SndBuf buffy => Gain g => NRev r => dac;
    me.dir() + "ChickenPlaying.wav" => buffy.read;
    buffy.loop(1);
    buffy.gain(0);
    
    r.mix(0.02);
    g.gain(2.0);
    
    fun void play()
    {
        buffy.pos(0);
        buffy.gain(0.8);
    }
    
    fun void stop()
    {
        buffy.gain(0.0);
    }
}

public class BGM_Opening
{
    SndBuf buffy => JCRev r => dac;
    me.dir() + "ChickenOpening.wav" => buffy.read;
    buffy.loop(1);
    buffy.gain(0);

    r.mix(0.05);

    fun void play()
    {
        buffy.pos(0);
        buffy.gain(0.8);
    }

    fun void stop()
    {
        buffy.gain(0.0);
    }
}