// SynthDef

(
SynthDef(\misinte,{|frec=440, amp=0.5|
	var sen, env;
	sen=SinOsc.ar(frec, 0, amp);
	env=EnvGen.kr(Env.new([0,1,0.5,0.5,0.5,1,0.5,0],[0.1,0.1,0.1,0.1,0.1,0.1,0.1]),doneAction:2);
	Out.ar(0, sen*env)
}).add
);

// Pdef o definicón de patrón
(
~sec1=Pdef(\sec,
	Pbind(\instrument,\misinte,
		\dur, Pseq([0.20,0.5,1,0.5], inf),
		\frec, Pseq([777,888,666,999], inf),
		\amp, 1
	)
);
)

~sec1.play;
~sec1.stop;
