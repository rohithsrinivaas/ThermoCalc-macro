function [outputs] = Kohler(xNb, xTi, xV, xZr)
	xNbNbTi = ((100+xNb-xTi) + (xNb-xTi)*(100-xNb-xTi)./(xNb+xTi))/2;
	xTiNbTi = ((100+xTi-xNb) + (xTi-xNb)*(100-xNb-xTi)./(xNb+xTi))/2;
	xNbNbV 	= ((100+xNb-xV) + (xNb-xV).*(100-xNb-xV)./(xNb+xV))/2;
	xVNbV 	= ((100+xV-xNb) + (xV-xNb).*(100-xNb-xV)./(xNb+xV))/2;
	xNbNbZr = ((100+xNb-xZr) + (xNb-xZr).*(100-xNb-xZr)./(xNb+xZr))/2;
	xZrNbZr = ((100+xZr-xNb) + (xZr-xNb).*(100-xNb-xZr)./(xNb+xZr))/2;
	xTiTiV 	= ((100+xTi-xV) + (xTi-xV).*(100-xTi-xV)./(xTi+xV))/2;
	xVTiV 	= ((100+xV-xTi) + (xV-xTi).*(100-xV-xTi)./(xV+xTi))/2;
	xTiTiZr = ((100+xTi-xZr) + (xTi-xZr).*(100-xTi-xZr)./(xTi+xZr))/2;
	xZrTiZr = ((100+xZr-xTi) + (xZr-xTi).*(100-xZr-xTi)./(xZr+xTi))/2;
	xVVZr 	= ((100+xV-xZr) + (xV-xZr).*(100-xV-xZr)./(xV+xZr))/2;
	xZrVZr 	= ((100+xZr-xV) + (xZr-xV).*(100-xZr-xV)./(xZr+xV))/2;
	outputs = ...
	xNb*xTi*NbTi(xNbNbTi, xTiNbTi)./(xNbNbTi*xTiNbTi) ...
	+ xNb.*xV.*NbV(xNbNbV, xVNbV)./(xNbNbV.*xVNbV) ...
	+ xNb.*xZr.*NbZr(xNbNbZr, xZrNbZr)./(xNbNbZr.*xZrNbZr) ...
	+ xTi.*xV.*TiV(xTiTiV, xVTiV)./(xTiTiV.*xVTiV) ...
	+ xTi.*xZr.*TiZr(xTiTiZr, xZrTiZr)./(xTiTiZr.*xZrTiZr) ...
	+ xV.*xZr.*VZr(xVVZr, xZrVZr)./(xVVZr.*xZrVZr);
end