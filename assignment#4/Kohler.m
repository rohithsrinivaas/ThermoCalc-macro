% created by abhishandy on 22-Apr-2016

function [outputs] = Kohler(xNb, xTi, xV, xZr)
	% 12 terms in the Kohler method
	xNbNbTi = ((1+xNb-xTi) + (xNb-xTi)*(1-xNb-xTi)./(xNb+xTi))/2;
	xTiNbTi = ((1+xTi-xNb) + (xTi-xNb)*(1-xNb-xTi)./(xNb+xTi))/2;
	xNbNbV 	= ((1+xNb-xV) + (xNb-xV).*(1-xNb-xV)./(xNb+xV))/2;
	xVNbV 	= ((1+xV-xNb) + (xV-xNb).*(1-xNb-xV)./(xNb+xV))/2;
	xNbNbZr = ((1+xNb-xZr) + (xNb-xZr).*(1-xNb-xZr)./(xNb+xZr))/2;
	xZrNbZr = ((1+xZr-xNb) + (xZr-xNb).*(1-xNb-xZr)./(xNb+xZr))/2;
	xTiTiV 	= ((1+xTi-xV) + (xTi-xV).*(1-xTi-xV)./(xTi+xV))/2;
	xVTiV 	= ((1+xV-xTi) + (xV-xTi).*(1-xV-xTi)./(xV+xTi))/2;
	xTiTiZr = ((1+xTi-xZr) + (xTi-xZr).*(1-xTi-xZr)./(xTi+xZr))/2;
	xZrTiZr = ((1+xZr-xTi) + (xZr-xTi).*(1-xZr-xTi)./(xZr+xTi))/2;
	xVVZr 	= ((1+xV-xZr) + (xV-xZr).*(1-xV-xZr)./(xV+xZr))/2;
	xZrVZr 	= ((1+xZr-xV) + (xZr-xV).*(1-xZr-xV)./(xZr+xV))/2;
	
	outputs = ...
	xNb*xTi*NbTi(xNbNbTi, xTiNbTi)./(xNbNbTi*xTiNbTi) ...
	+ xNb.*xV.*NbV(xNbNbV, xVNbV)./(xNbNbV.*xVNbV) ...
	+ xNb.*xZr.*NbZr(xNbNbZr, xZrNbZr)./(xNbNbZr.*xZrNbZr) ...
	+ xTi.*xV.*TiV(xTiTiV, xVTiV)./(xTiTiV.*xVTiV) ...
	+ xTi.*xZr.*TiZr(xTiTiZr, xZrTiZr)./(xTiTiZr.*xZrTiZr) ...
	+ xV.*xZr.*VZr(xVVZr, xZrVZr)./(xVVZr.*xZrVZr);
end