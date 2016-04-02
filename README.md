# Monte-Carlo-for-1D-harmonic-osillator

Goal: Write a  Monte Carlo program for a classical 1D harmonic oscillator, perform simulations at different temperatures and compare the resulting probabillity distribution with analytical results.

Introduction of Monte Carlo method:

Monte Carlo methods are a broad class of computational algorithms that rely on repeated random sampling to obtain numerical results. Its core idea is to use random samples of parameters or inputs to explore the behavior of a complex system or process. There are problems that are too complex for an analytical solution -- so they have to be evaluated numerically. If the exhaustive numerical evaluation is prohibitively slow, Monte Carlo simulation could be used to find solutions.

Monte Carlo simulations sample from a probability distribution for each variable to produce hundres or thousands of possible outcomes. The results are analyzed to get probabilities of different outcomes occurring.

Pseudocode for Metropolis:

	For i = 0, 1, 2,..., given X0:
		1. Generate Xi+1 from Xi by a perturbation technique that satisfies detailed balance.
		2. Compute E(Xi+1) - E(Xi).
		3. If it's negative, accept Xi+1;
		   else, set p = exp(-beta(delta)E). then
				if p>ran, accept Xi+1;
				else, reject Xi+1.
		4. Continue the i loop.
