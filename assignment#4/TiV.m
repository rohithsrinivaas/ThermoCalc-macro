function [outputs] = TiV(xTi, xV)
	outputs = xTi.*xV.*(7600 + 2200*(xTi - xV));
end