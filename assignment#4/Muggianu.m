function [outputs] = Muggianu(xNb, xTi, xV, xZr)
	xNbNbTi = (100+xNb-xTi)/2;
	xTiNbTi = (100+xTi-xNb)/2;
	xNbNbV 	= (100+xNb-xV)/2;
	xVNbV 	= (100+xV-xNb)/2;
	xNbNbZr = (100+xNb-xZr)/2;
	xZrNbZr = (100+xZr-xNb)/2;
	xTiTiV 	= (100+xTi-xV)/2;
	xVTiV 	= (100+xV-xTi)/2;
	xTiTiZr = (100+xTi-xZr)/2;
	xZrTiZr = (100+xZr-xTi)/2;
	xVVZr 	= (100+xV-xZr)/2;
	xZrVZr 	= (100+xZr-xV)/2;
	outputs = ...
	  xNb*xTi*NbTi(xNbNbTi, xTiNbTi)./(xNbNbTi*xTiNbTi) ...
	+ xNb.*xV.*NbV(xNbNbV, xVNbV)./(xNbNbV.*xVNbV) ...
	+ xNb.*xZr.*NbZr(xNbNbZr, xZrNbZr)./(xNbNbZr.*xZrNbZr) ...
	+ xTi.*xV.*TiV(xTiTiV, xVTiV)./(xTiTiV.*xVTiV) ...
	+ xTi.*xZr.*TiZr(xTiTiZr, xZrTiZr)./(xTiTiZr.*xZrTiZr) ...
	+ xV.*xZr.*VZr(xVVZr, xZrVZr)./(xVVZr.*xZrVZr);
end