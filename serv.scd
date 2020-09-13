(
    SuperDirt.start;
    MIDIClient.init;

    ~midiOut = MIDIOut.newByName("UMC404HD 192k", "UMC404HD 192k MIDI 1");
    ~dirt.soundLibrary.addMIDI(\midi, ~midiOut);

//
    SynthDef(\in1, { |out|
	    var input = AudioIn.ar(1);
	    Out.ar([out,out], [input,input])
    }).add

    ~midiOut.latency = 1.7;
)