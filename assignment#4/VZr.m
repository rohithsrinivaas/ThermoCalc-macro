function [outputs] = VZr(xV, xZr)
	% element wise multiplication
	outputs = xV.*xZr.*(-14900 + 3000*xZr + 1000*xZr.^2);
end