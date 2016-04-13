function [outputs] = VZr(xV, xZr)
	outputs = xV.*xZr.*(-14900 + 3000*xZr + 1000*xZr.^2);
end