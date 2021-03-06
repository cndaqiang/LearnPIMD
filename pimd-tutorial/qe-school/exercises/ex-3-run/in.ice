units		electron
atom_style	full

pair_style	lj/cut/coul/long 17.01
#pair_style      lj/cut/tip4p/long 1 2 1 1 0.278072379 17.
#bond_style      harmonic
bond_style      class2 
angle_style     harmonic
kspace_style	ewald 0.0001

read_data	data.ice
pair_coeff  * * 0 0
pair_coeff  1  1  0.000295147 5.96946

neighbor	2.0 bin

timestep	0.00025

fix 1 all ipi ex3-1 32345 unix

run		100000000

