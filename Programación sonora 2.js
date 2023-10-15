//MIROLAJAJA
(
(
~sec1 = Pdef(\damp, Ppar([
	Pbind(\instrument, \wnoise,
	\dur, 1/4,
	\amp, Pseq(0.5, 0, 0, 0.5, 0.5, 0, 0.5, 0, 0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0],inf),
	),
	Pbind(\instrument, \sine,
		\dur,1/4,
	\amp, Pseq([5, 0.5, 0, 0.5, 0.5, 0, 0, 0, 0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5],inf),
	\out,10
	)
]))
);


~sec1.play.quant(9);

~sec1.stop;
