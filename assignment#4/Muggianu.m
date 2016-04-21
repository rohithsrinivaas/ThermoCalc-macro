function [outputs] = Muggianu(xNb, xTi, xV, xZr)
	xNbNbTi = (1+xNb-xTi)/2;
	xTiNbTi = (1+xTi-xNb)/2;
	xNbNbV 	= (1+xNb-xV)/2;
	xVNbV 	= (1+xV-xNb)/2;
	xNbNbZr = (1+xNb-xZr)/2;
	xZrNbZr = (1+xZr-xNb)/2;
	xTiTiV 	= (1+xTi-xV)/2;
	xVTiV 	= (1+xV-xTi)/2;
	xTiTiZr = (1+xTi-xZr)/2;
	xZrTiZr = (1+xZr-xTi)/2;
	xVVZr 	= (1+xV-xZr)/2;
	xZrVZr 	= (1+xZr-xV)/2;
	outputs = ...
	  xNb*xTi*NbTi(xNbNbTi, xTiNbTi)./(xNbNbTi*xTiNbTi) ...
	+ xNb.*xV.*NbV(xNbNbV, xVNbV)./(xNbNbV.*xVNbV) ...
	+ xNb.*xZr.*NbZr(xNbNbZr, xZrNbZr)./(xNbNbZr.*xZrNbZr) ...
	+ xTi.*xV.*TiV(xTiTiV, xVTiV)./(xTiTiV.*xVTiV) ...
	+ xTi.*xZr.*TiZr(xTiTiZr, xZrTiZr)./(xTiTiZr.*xZrTiZr) ...
	+ xV.*xZr.*VZr(xVVZr, xZrVZr)./(xVVZr.*xZrVZr);
end