function [outputs] = NbZr(xNb, xZr)
	outputs = xNb.*xZr.*(-10311 + 6709*(xNb - xZr));
end