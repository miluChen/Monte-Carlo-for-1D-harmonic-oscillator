# Monte-Carlo-for-1D-harmonic-oscillator

Goal: Write a  Monte Carlo program for a classical 1D harmonic oscillator, perform simulations at different temperatures and compare the resulting probabillity distribution with analytical results.

code_analytical.m is used to generate the analytical results of the probability distribution of classical 1D harmonic oscillator.

analytical.jpg is the resulting image, using temperatures from 100K to 300K with interval 20K.

code_mc.m is used to generate the probability distribution from Monte Carlo simulations. Metropolis algorithm is used.

mc_simulation.jpb is the image from Monte Carlo simulations, varing temperature from 100K to 300K with interval 20K.

Pseudocode for Metropolis:

	For i = 0, 1, 2,..., given X0:
		1. Generate Xi+1 from Xi by a perturbation technique that satisfies detailed balance.
		2. Compute E(Xi+1) - E(Xi).
		3. If it's negative, accept Xi+1;
		   else, set p = exp(-beta(delta)E). then
				if p>ran, accept Xi+1;
				else, reject Xi+1.
		4. Continue the i loop.
