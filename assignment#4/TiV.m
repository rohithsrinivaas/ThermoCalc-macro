function [outputs] = TiV(xTi, xV)
	% element wise multiplication
	outputs = xTi.*xV.*(7600 + 2200*(xTi - xV));
end