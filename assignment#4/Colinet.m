function [outputs] = Colinet(xNb, xTi, xV, xZr)
	xNbNbTi 	= ((100+xNb-xTi) + (100-xNb-xTi))/2;
	xTiNbTi 	= ((100+xTi-xNb) + (100-xNb-xTi))/2;
	xNbNbV 	= ((100+xNb-xV) + (100-xNb-xV))/2;
	xVNbV 		= ((100+xV-xNb) + (100-xNb-xV))/2;
	xNbNbZr 	= ((100+xNb-xZr) + (100-xNb-xZr))/2;
	xZrNbZr 	= ((100+xZr-xNb) + (100-xNb-xZr))/2;
	xTiTiV 	= ((100+xTi-xV) + (100-xTi-xV))/2;
	xVTiV 		= ((100+xV-xTi) + (100-xV-xTi))/2;
	xTiTiZr 	= ((100+xTi-xZr) + (100-xTi-xZr))/2;
	xZrTiZr 	= ((100+xZr-xTi) + (100-xZr-xTi))/2;
	xVVZr 		= ((100+xV-xZr) + (100-xV-xZr))/2;
	xZrVZr 	= ((100+xZr-xV) + (100-xZr-xV))/2;

	x2NbNbTi 	= ((100+xNb-xTi) - (100-xNb-xTi))/2;
	x2TiNbTi 	= ((100+xTi-xNb) - (100-xNb-xTi))/2;
	x2NbNbV 	= ((100+xNb-xV) - (100-xNb-xV))/2;
	x2VNbV 		= ((100+xV-xNb) - (100-xNb-xV))/2;
	x2NbNbZr 	= ((100+xNb-xZr) - (100-xNb-xZr))/2;
	x2ZrNbZr 	= ((100+xZr-xNb) - (100-xNb-xZr))/2;
	x2TiTiV 	= ((100+xTi-xV) - (100-xTi-xV))/2;
	x2VTiV 		= ((100+xV-xTi) - (100-xV-xTi))/2;
	x2TiTiZr 	= ((100+xTi-xZr) - (100-xTi-xZr))/2;
	x2ZrTiZr 	= ((100+xZr-xTi) - (100-xZr-xTi))/2;
	x2VVZr 		= ((100+xV-xZr) - (100-xV-xZr))/2;
	x2ZrVZr 	= ((100+xZr-xV) - (100-xZr-xV))/2;

	outputs = ...
	xNb*xTi*NbTi(xNbNbTi, xTiNbTi)./(xNbNbTi*xTiNbTi) ...
	+ xNb.*xV.*NbV(xNbNbV, xVNbV)./(xNbNbV.*xVNbV) ...
	+ xNb.*xZr.*NbZr(xNbNbZr, xZrNbZr)./(xNbNbZr.*xZrNbZr) ...
	+ xTi.*xV.*TiV(xTiTiV, xVTiV)./(xTiTiV.*xVTiV) ...
	+ xTi.*xZr.*TiZr(xTiTiZr, xZrTiZr)./(xTiTiZr.*xZrTiZr) ...
	+ xV.*xZr.*VZr(xVVZr, xZrVZr)./(xVVZr.*xZrVZr);

	outputs = outputs ...
	+ xNb*xTi*NbTi(x2NbNbTi, x2TiNbTi)./(x2NbNbTi*x2TiNbTi) ...
	+ xNb.*xV.*NbV(x2NbNbV, x2VNbV)./(x2NbNbV.*x2VNbV) ...
	+ xNb.*xZr.*NbZr(x2NbNbZr, x2ZrNbZr)./(x2NbNbZr.*x2ZrNbZr) ...
	+ xTi.*xV.*TiV(x2TiTiV, x2VTiV)./(x2TiTiV.*x2VTiV) ...
	+ xTi.*xZr.*TiZr(x2TiTiZr, x2ZrTiZr)./(x2TiTiZr.*x2ZrTiZr) ...
	+ xV.*xZr.*VZr(x2VVZr, x2ZrVZr)./(x2VVZr.*x2ZrVZr);

	outputs = 0.5*outputs;
end