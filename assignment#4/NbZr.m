function [outputs] = NbZr(xNb, xZr)
	% element wise multiplication
	outputs = xNb.*xZr.*(-10311 + 6709*(xNb - xZr));
end