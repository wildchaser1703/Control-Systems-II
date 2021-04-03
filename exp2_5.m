% Write a matlab code to obtain pole zero map of the z function defined by numerator and denominator
syms z n
num = [0 1 1]
den = [1 -2 3]
zeros = roots(num)
poles = roots(den)
zplane(num,den)
