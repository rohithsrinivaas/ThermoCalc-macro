def GHSERAl(T):
	ans = -11278.4 + 188.684*T - 31.7482*log(T) - 1.231e28*T**(-9)
	return ans

def GHSERNi(T):
	ans = -5179.16 + 117.854*T - 22.096*T*log(T) - 0.0048407*T**2
	return ans

# G^AlNi_Al:Al
def G_AlNi_AlAl(T):
	ans = 10083 - 4.813*T + GHSERAl(T)
	return ans

# G^AlNi_Ni:Ni
def G_AlNi_NiNi(T):
	ans = 8715.08 - 3.556*T + GHSERNi(T)
	return ans

# G^AlNi_Al:Ni
def G_AlNi_AlNi(T):
	ans = -56500 - 10.7*T + 1.4975*T*log(T) + 0.5*GHSERAl(T) + 0.5*GHSERNi
	return ans

# G^AlNi_Ni:Al
def G_AlNi_NiAl(T):
	ans = G_AlNi_AlNi(T)
	return ans

# L^0^AlNi_Al,Ni:Al
def L0_AlNi_AlNiAl(T):
	ans = -14225 - 5.625*T
	return ans

# L^0^AlNi_Al:Al,Ni
def L0_AlNi_AlAlNi(T):
	ans = L0_AlNi_AlNiAl(T)
	return ans

# L^0^AlNi_Ni:Al,Ni
def L0_AlNi_NiAlNi(T):
	ans = -22050
	return ans

# L^0^AlNi_Al,Ni:Ni
def L0_AlNi_AlNiNi(T):
	ans = L0_AlNi_AlAlNi(T)
	return ans

# L^1^AlNi_Ni:Al,Ni
def L1_AlNi_NiAlNi(T):
	ans = 1115
	return ans

# L^1^AlNi_Al,Ni:Ni
def L1_AlNi_AlNiNi():
	ans = L1_AlNi_NiAlNi
	return ans

