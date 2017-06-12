class ModuloTouch
{
    FM fmOsc => dac;
    7.3 => fmOsc.lfoSpeed;
    0.7071 => fmOsc.lfoDepth;
    100.0 => fmOsc.freq;
    
    

    function Touch createTouch(int id, int FSeq)
    {
        ModuloTouch newTouch;
        id => newTouch.id;
        FSeq => newTouch.FSeq;
        return newTouch;
    }
}



//start the application
TUIO listener;
ModuloTouch Touches;
listener.init(Touches);
listener.startListening();

while(true)
{
    <<<"thump", now>>>;
    10::second => now;
}