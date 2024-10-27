

'**** CREER FICHIER DE TRAVAIL

wfcreate(wf=philia. page=integer date)  u 500

'**********************************************************************************************

'**** SHOCKS

'*** ECOSYSTEMIC SHOCK
'**  when this variable is set to zero, ecosystemic feedback loops are disactivated; when it is set to one,  ecosystemic feedback loop are activated
'***It is featured in equation (1.5) (defining climate inflation) and equation (59.6) (defining the damage function)

series ecosystemic_shock
ecosystemic_shock= 0 'was 1

'*** GREEN LENDING RISK 
' this variable is comprised between 0 and 1 and impacts banks' perception of green credit demand by coop. It is set to 1 in the baseline scenario
'*** It is featured in equation (32.1) (defining banks lending risk for green coop loans) 
series shock_risk
shock_risk=1

'***ENDOGENOUS GREEN TECHNOLOGICAL CHANGE 
'* the shock_tek variable is comprised between 0 and 1 and endogenizes green technological change . When shock_tek is set to 1 carbon and energy materlal footprint  decrease as a function of the green to total productive capital ratio
' It is featured in auxiliary ecosystemic equations defining mu_gr, eta_gr, beta_gr, epsilon_g, mu_con, eta_con,  beta_con, epsilon_con
' IT DOES NOT DO MUCH

series shock_tek
shock_tek=0

'***ENDOGENOUS CENTRAL BANK INTERVENTION
'this variable takes on zero/one values. When it is set to one the Central Bank maintains an asset repurchase program 
'It is featured in equation 37.7 which defines the Central Banks annual QE volume
series shock_qe
shock_qe=0

'CENTRAL BANK MAIN REFINANCING DESK

''this variable takes on zero/one values. When it is set to one the Central Bank's main refinancing desk is open. When it is zero the refinancing desk is closed. 
'It is featured in equation 36.4 which defines the supply of Central Bank's advances to the banking system
series shock_adb
shock_adb=1

'CREDIT POLICY
'this variable sets the value of the banking sector green to brown asset ratio target under the credit policy scenario as discussed in Lagoarde-Segot (2022)
series shock_credit
shock_credit=0

'ECOLOGICAL RISK FREE
'this variable takes on zero/one values. When set to one it activates ecological risk free asset scenario as discussed in Lagoarde-Segot and Revelli (2023).
'It is featured in equation 36.7
series shock_erfa
shock_erfa=0

'HELICOPTER MONEY
'this variable takes on zero/one values. When set to one it activates the 'h' money supply under the ecological risk free asset scenario as discussed in Lagoarde-Segot and Revelli (2023).
'It is featured in equation 36.8

series shock_h
shock_h=0

'SECONDARY MARKET SHOCKS
'this variable sets the value of the periodic capital gains on secondary market for green and brown assets. these are set to zero in the baseline scenario
' these variables are featured in the raft of equations 52
series shock_cg
shock_cg=0
series shock_cb
shock_cb=-0
series shock_cg_gb
shock_cg_gb=-0
series shock_e
shock_e=0

'LOCAL CURRENCY LOANS SHOCKS
'this variable takes on zero/one values. When set to one it activates the local complementary currency scenario as discussed in Didier and Lagoarde-Segot (2023).
'It is featured in equation 9.3 and 9.4 which determine working and rentier household demand for local complementary currency holdings, equation 31.5 which determines bank loans in LCCs and in equation 36.6 which determines the rediscounting of local complementary loans by the Central Bank
series shock_lcc
shock_lcc=0


 'HOUSEHOLD DEMAND FOR LOCAL CURRENCY 
'this variable takes on zero/one values. When set to one it activates the local complementary currency scenario as discussed in Didier and Lagoarde-Segot (2023).
'It is featured in equation 9.3 and 9.4 which determine working and rentier household demand for local complementary currency holdings,

series shock_lcc_c
shock_lcc_c=0

'SROI CALCULATION BY ECOLOGICAL FINANCE RATING AGENCIES
'this variable defines SROI the under the ecological risk free asset scenario as discussed in Lagoarde-Segot and Revelli (2023).
'it is featured in equation 36.6 giving the value of ecological risk free assets

series sroi
sroi=0.15

'HAIRCUT
'this variable defines haircut rate which the Central Bank applies to rediscounting assets when relevant policies are activated.
'it is featured in equation 36.7 which gives the stock of reserves obtained through rediscounting

series hc
'hc=1
hc=1.05

'HOUSEHOLD ECOLOGICAL AWARENESS
'this variable contributes to determine the volume of household holdings which they wish to hold as LCCs under the local complementary currency scenario as discussed in Didier and Lagoarde-Segot (2023).
'it is featured in equation 9.3 and 9.4 which determine working and rentier household demand for portfolio LCC holdings
series ea
ea=0.5

'ECOLOGICAL ACCOUNT ACCOUNTING

'this variable shock_CARE activates the ecological accounting shock. It is equal to zero in the baseline simulation, and to one when the shock is activated. It is multiplied by CARE, which measures the value of natural capital depreciation taken into account by capitalist firms and spent in the coop firm sector
'it is featured in equation 5.1 which determines consumption income for the coop sector firms, and in equations 22.2, 22.3 and 23.4 which determine the depreciation expenditures of capitalist firms

series CARE
CARE = 0
series shock_CARE
shock_CARE=0


'SOVEREIGN MONEY CREATION
'SMC determines the annual creation of SMC as in Couppey-Soubeyran, Lagoarde-Ségot and Sersiron (2024)
'this variable shock_SMC activates the SMC shock. It is equal to zero in the baseline simulation, and to one when the shock is activated. 
'stock SMC measures the stock of SMC accumulated over time
'SMC is divided into SMC_H (households) and SMC_C (to coop green investment)

series SMC 
SMC = 0
series shock_SMC
shock_SMC=0
series stock_SMC
stock_SMC=0
series stock_H_smc
stock_H_smc=0
series SMC_H
SMC_H=0
series SMC_share_s
SMC_share_s=0.33 
series SMC_share_k
SMC_share_k=0.33
series SMC_share_p
SMC_share_p=0.33
series SMC_C
SMC_C=0
series CSDG
CSDG=stock_SMC
series smc_val
smc_val=0

'ECOSYSTEMIC PRUDENTIAL REGULATION

'shock_epr gives the loan to value ratio for brown loans as in Lagoarde-Ségot, Le Quang and Scialom (2024).
'this variable is set to one in the baseline scenario (no prudential regulation) and to 0.23 in the ecosystemic prudnetial regulation scenario 
'it affects the supply of brown credit to listed firms (equation 31.4). Coop/SME are unaffected.

series shock_epr
shock_epr=1

'*** MODEL VARIABLES


‘Revenu macro 

series Y
Y=13000
Series Y_r
Y_r=13000
series CO
CO=5000
series inv
inv=3000

series inv_b
inv_b=2250
series inv_g
inv_g=750

series g_start
g_start=2700 ' 
series inv_s_k
inv_s_k=2000
series inv_s_c
inv_s_c=500
series inv_s_p
inv_s_p=500
series C_w
C_w=2500
series C_r
C_r=2500
series pi
pi=0.01
series pi_f
pi_f=0
series mp
mp=0
series price
price=1
series price_clim
price_clim=1
series inflation
inflation=0
series inflation_clim
inflation_clim=0
series omicron
omicron=0
series dep_l
dep_l=0
series dep_m
dep_m=0
series d_t
d_t=0
series YD_w
YD_w=6500
series WB
WB=6000
series WB_a
WB_a=6000
series WB_c
WB_c=3000
series WB_p
WB_p=1000
series WB_k
WB_k=2000
series ret_c
ret_c=0.05
series P_c
P_c=1000
series M_d_w
M_d_w=10500
series teta_w
teta_w=0.25 
series teta_k
'teta_k=0.15 'ok
teta_k=0.35
series teta_c
teta_c=0 'ok
'teta_c=0.4
series YD_r
YD_r=6500
series P_i
P_i=5000
series M_d_r
M_d_r=3500
series teta_r
teta_r=0.2
series T_w
T_w=0
series T_r
 T_r=0
series T
T=0
series T_k
T_k=0
series T_c
T_c=0

series YD_r_w
YD_r_w=YD_w
series YD_r_r
YD_r_r=YD_r
series C_r_w
C_r_w=C_w
series C_r_r
C_r_r=C_r
series C_r_w_m
C_r_w_m=C_r_w
series C_r_w_lcc
C_r_w_lcc=0
series C_r_r_m
C_r_r_m=C_r_r
series C_r_r_lcc
C_r_r_lcc=0
series C_w_m
C_w_m=C_w
series C_r_m
C_r_m=C_r
series C_w_lcc
C_w_lcc=0
series C_r_lcc
C_r_lcc=0
series V_w
V_w=3500
series V_r
V_r=10500
series V
V=14000
series V_r_w
V_r_w=V_w
series V_r_r
V_r_r=V_r
series V_real
V_real=V
series real_Y
real_Y=Y
series real_inv
real_inv=0

series iota_WB_T
iota_WB_T=0.3
series iota_WB_a
iota_WB_T=0.3
series iota_WB
iota_WB=0.3
series omega_WB
omega_WB=0.5
series WB_a
WB_a=WB
series WB_T
series shock_inf
shock_inf=0

'CONSOMMATION

series alfa_zero
alfa_zero=100  
 
series alfa_one_w
alfa_one_w=0.79 ' 
 
series alfa_two_w
alfa_two_w=0.02 ' 
 
series alfa_one_r
alfa_one_r=0.79 ' 
 
series alfa_two_r
alfa_two_r=0.02 ' 
 

series V
V=15400
series V_w
V_w=11550
series V_r
V_r=3850
series omega
omega=0.05
series K
K=15000
 
series K_k
K_k=10000 ' 
 
series K_c
K_c=2500 ' 
 
series K_p
K_p=2500 ' 
 
series C_c
C_c=1000
series C_k
C_k=3000
series C_p
C_p=1000
series alfa_one_c
alfa_one_c=0.8
series alfa_two_p
alfa_two_p=0.02
series alfa_one_k
alfa_one_k=0.79
series DA
DA=1500
series DA_k
DA_k=1000
series DA_c
DA_c=250
series DA_p
DA_p=250
series K_b
K_b=11250  
 
series K_g
K_g=3750 ' 
 
series K_k_b
K_k_b=7500 ' 
 
series K_k_g
K_k_g=2500 ' 
 
series K_c_b
K_c_b=1875 ' 
 
series K_p_b 
K_p_b=1875 '  
 

series EA
EA= 0.1


'Material resource and reserve variables

series y_mat
y_mat.label(d) Production of material goods
series mat
mat.label(d) Extraction of matter
series rec
rec.label(d) Recycled socio-economic stock 
series dis
dis.label(d) Discarded socio-economic stock 
series k_se
k_se.label(d) Socio-economic stock 
series wa
wa.label(d) Waste generated by production activities 
series k_m
k_m.label(d) Stock of material reserves 
series conv_m
conv_m.label(d) Material resources converted to reserves 
series res_m
res_m.label(d) Stock of material resources 
series cen
cen.label(d) Carbon mass of (non-renewable) energy 
series o2
o2.label(d) Mass of oxygen 

'Parameters

series mu
mu.label(d) Matter intensity coefficient
series mu_gr
mu_gr.label(d) Matter intensity coefficient of green production 
series mu_con
mu.label(d) Matter intensity coefficient of conventional production 
series rho 
rho.label(d) Percentage of recycling
series sigma_m
sigma_m.label(d) Percentage of material resources converted to reserves 
series car 
car.label(d) Coefficient defining carbon mass of energy
series zeta
zeta.label(d) Proportion of durable goods discarded every year
series dc
dc.label(d) Stock of durable consumption goods 


'Values for Parameters

mu_con = 0.86 'Material intensity of conventional capital (Kg/USD)
mu_gr = 0.71 ''Material intensity of green capital (Kg/USD) 
rho = 0.05 'Recycling rate  
k_se = 15000 'Initial value of socio-economic stock  

sigma_m = 0.001 'Conversion rate of material resources into reserves
car = 3.67 'Coefficient converting Gt of carbon into Gt of CO2  
zeta = 0.015 'Proportion of durable discarded


'Starting values

k_se = K_c+K_p+K_k 'Initial value of socio-economic stock  
k_m = 6438 'Initial value for matter reserves  
res_m=834490000
' 
series emis
emis= 4483 'Initial value from google in megatons
dc = CO  'Stock of durable goods in the first period
 
'Energy resource and reserve variables

series e
e.label(d) Energy required for production 
series er
er.label(d) Renewable energy 
series eta
eta.label(d) Share of renewable energy to total energy, average T
series epsilon
epsilon.label(d) Energy intensity coefficient 
series en
en.label(d) Non-renewable energy
series ed
ed.label(d) Dissipated energy at the end of the period 
series k_e
k_e.label(d) Stock of energy reserves
series conv_e
conv_e.label(d) Energy resources converted to reserves
series res_e
res_e.label(d) ‘Stock of energy resources

'variables pour fusion

series dis
dis=0
series rec
rec=0
series mat
mat=0
series wa
wa=0
series conv_m
conv_m=0

series cen
cen=0


series sigma_e
sigma_e.label(d) Percentage of energy resources converted to reserves 

'Values for parameters
series k_e
k_e = 38000 'Initial value of non renewable energy reserves (Ej)
series sigma_e
 
sigma_e = 0.0177 
 
series res_e
 
res_e= 543000000000

' THE ECOSYSTEM: EMISSIONS

'Emissions variables

series emis_eco
emis_eco.label(d) Industrial emissions of CO2 
series emis
emis.label(d) World-wide industrial emissions of CO2
series emis_ob
emis_ob.label(d) 2017 world-wide industrial emissions of CO2
series emis_l
emis_l.label(d) Annual land emissions of CO2
series co2_at 
co2_at.label(d) Atmospheric CO2 concentration
series co2_up 
co2_up.label(d) Upper ocean/biosphere CO2 concentration 
series co2_lo
co2_lo.label(d) Lower ocean CO2 concentration
series temp_at
temp_at.label(d) Atmospheric temperature
series temp_at_ob
temp_at_ob.label(d) Observed 2017 NASA temperature anomaly 
series temp_lo
temp_lo.label(d) Temperature of the lower ocean
series f
f.label(d) Radiative forcing over pre-industrial levels (W/m^2) 
series f2
f2.label(d) Increase in radiative forcing due to doubling of CO2 concentration \n since pre-industrial levels (W/m^2)
series co2_at_pre
co2_at_pre.label(d) Pre-industrial CO2 concentration in atmosphere (Gt)
series co2_lo_pre
co2_lo_pre.label(d) Pre-industrial CO2 concentration in lower ocean (Gt)
series co2_up_pre
co2_up_pre.label(d) Pre-industrial CO2 concentration in upper ocean/biosphere (Gt) 

'Parameters

series beta
beta.label(d) Industrial emissions of CO2 
series beta0 
beta0.label(d) Initial value of CO2 emissions  
series g_beta
g_beta.label(d) Rate of decline of CO2 intensity  
series g_land
g_land.label(d) Rate of decline of land-use CO2 emissions
series phi11
phi11.label(d) CO2 transfer coefficient
series phi21 
phi21.label(d) CO2 transfer coefficient
series phi12
phi12.label(d) CO2 transfer coefficient
series phi22
phi22.label(d) CO2 transfer coefficient
series phi32 
phi32.label(d) CO2 transfer coefficient
series phi23
phi23.label(d) CO2 transfer coefficient
series phi33 
phi33.label(d) CO2 transfer coefficient
series f_ex
f_ex.label(d) Radiative forcing over pre-industrial levels (W/m^2) \n due to non-CO2 greenhouse gases (W/m^2)
series fex
fex.label(d) Annual increase in radiative forcing due to non-CO2 greenhouse \n gas emissions (W/m^2)
series t1
t1.label(d) Speed of adjustment parameter in atmospheric temperature function
series t2
t2.label(d) Coefficient of heat loss from the atmosphere to the lower ocean in \n atmospheric temperature function 
series t3
t3.label(d) Coefficient of heat loss from the atmosphere to the lower ocean in \n lower ocean temperature function
series sens
sens.label(d) Equilibrium climate sensitivity

'Parameter values


'Starting values

emis_l = 4 
emis_eco = (emis_ob-emis_l)
emis = emis_ob
emis_ob= 36.17
temp_at = 0.91 'Atmospheric temperature over pre-industrial levels 
temp_at_ob=0.91 'Observed 2017 NASA temperature anomaly 
temp_lo = 0 'Lower ocean temperature over pre-industrial levels  
t1 = 0.027*0.026 'Speed of adjustment parameter in atmospheric temperature function ' 
t2 = 0.018 'Coefficient of heat loss from the atmosphere to the lower ocean in atmospheric temperature function  
t3 = 0.005 'Coefficient of heat loss from the atmosphere to the lower ocean in lower ocean temperature function 
sens = 3  'Equilibrium climate sensitivity  
co2_at_pre = 2156.2 ' Pre-industrial CO2 concentration in atmosphere (Gt) 
co2_up_pre = 4950.5 ' Pre-industrial CO2 concentration in upper ocean/biosphere (Gt) 
co2_lo_pre = 36670 ' Pre-industrial CO2 concentration in lower ocean (Gt)
co2_at = co2_at_pre 'Initial level of atmospheric CO2 concentration in 1960
co2_up = co2_up_pre  'Upper ocean/biosphere CO2 concentration  
co2_lo = co2_lo_pre  'Lower ocean CO2 concentration
phi11 = 0.9817 'CO2 transfer coefficient 
phi21 = 0.0080 'CO2 transfer coefficient
phi12 = 0.0183 'CO2 transfer coefficient
phi22 = 0.9915 'CO2 transfer coefficient
phi23 = 0.0005 'CO2 transfer coefficient
phi32 = 0.0001 'CO2 transfer coefficient
phi33 = 0.9999 'CO2 transfer coefficient
f = 2.3 ' Radiative forcing over pre-industrial levels (W/m^2)  
f2 = 3.8 ' Increase in radiative forcing due to doubling of CO2 concentration since pre-industrial levels (W/m^2)
f_ex = 0.28 ' Radiative forcing over pre-industrial levels (W/m^2) due to non-CO2 greenhouse gases (W/m^2) 
fex = 0.005 ' Annual increase in radiative forcing due to non-CO2 greenhouse gas emissions (W/m^2) 
emis=beta0
 


'Note: maximum temperature rise depends also on non_CO2 radiative forcing due to methane, nitrous oxide, aerosols and other anthropogenic factors (see IPCC 2018, p. 7)


'THE ECOSYSTEM: ECOLOGICAL EFFICIENCY

'Variables

series epsilon_gr
epsilon_gr.label(d) Energy intensity coefficient of green production 
series epsilon_con 
epsilon_con.label(d) Energy intensity coefficient of conventional production 
series beta_gr
beta_gr.label(d)  CO2 intensity coefficient of green production
series beta_con
beta_con.label(d)  CO2 intensity coefficient of conventional production
series eta_con
eta_con.label(d) Share of renewable energy to total energy, conventional capital
series eta_gr
eta_gr.label(d) Share of renewable energy to total energy, green capital
series depl_m
depl_m.label(d) Matter depletion ratio 
series depl_e
depl_e.label(d) Energy depletion ratio 

'Parameters

'Parameter values

epsilon_gr = 7.65 'Energy intensity of green capital  (Ej/USD)
epsilon_con = 9.32 'Energy intensity of conventional capital (Ej/USD)
beta_gr = 0.048154 - 0.01 'CO2 intensity of green capital (Gt/Ej)
beta_con = 0.048154 + 0.01 'CO2 intensity of conventional capital (Gt/Ej)
eta_con = 0 'Share of renewable energy to total energy in Brownland, conventional capital 
eta_gr = 0.075 'Share of renewable energy to total energy in Brownland, green capital



' THE ECOSYSTEM: ECOLOGICAL FEEDBACKS

'Variables

series d_t
d_t.label(d) Proportional gross damage (0 = no damage; 1 = catastrophe)
series p
p.label(d) Annual inflation rate
series y_r
y_r.label(d) Annual real GDP


'Parameter
series dam1
dam1.label(d) Parameter in damage function
series dam2
dam2.label(d) Parameter in damage function
series dam3
dam3.label(d) Parameter in damage function
series dam4
dam4.label(d) Parameter in damage function
series ad_k
ad_k.label(d) Adaptation coefficient of capital
series delta0 
delta0.label(d) Initial value of depreciation rate 
series delta 
delta.label(d) Ecological impact on depreciation of capital stock
series delta_ob
delta_ob.label(d) 
series omicron
omicron.label(d) Sensitivity of price index to depletion of energy and matter reserves
series epsilon
series epsilon_gr
series epsilon_con


'Parameter values
series ad
ad= 0.15 'ok
ad_k = 0.75 'ok

dam1 = 0 'Parameter of damage function  
dam2 = 0.00284/3 'Parameter of damage function 
dam3 = 0.000005/3 'Parameter of damage function 
dam4 = 6.6754/3 'Parameter of damage function 
d_t = 0.0028 'Percentage of damages (initial value) 
delta_ob=0
delta0 = delta_ob
delta = delta0
omicron= 0.025

epsilon_gr = 7.65 'Energy intensity of green capital  (Ej/USD)
epsilon_con = 9.32 'Energy intensity of conventional capital (Ej/USD)
epsilon = @recode(@date<@dateval("152"),epsilon_con,(epsilon_gr*(K_g/K) + epsilon_con*(K_b/K) )) 'Energy intensity coefficient  



series e
e.label(d) Energy required for production 
series er
er.label(d) Renewable energy
series beta
beta.label(d) Industrial emissions of CO2 
series beta0 
beta0.label(d) Initial value of CO2 emissions  
series g_beta
g_beta =0 
series emis_l
emis_l = 4 
series emis_eco
emis_eco = 32.17
series emis
emis = 36.17
series emis_ob
emis_ob= 36.17
series en
en.label(d) 'Non-renewable energy
en=93200
series y
y=10000
series e
e=93200
series er
er=0
series en
en=93200
series er
er=0
series eta_con
eta_con = 1-0.075 'Share of renewable energy to total energy in Brownland, conventional capital 
series eta_gr
eta_gr = 0.075 'Share of renewable energy to total energy in Brownland, green capital
series eta
eta=0
series beta_gr
beta_gr = 0.048154 - 0.01 'CO2 intensity of green capital (Gt/Ej)
series beta_con
beta_con = 0.048154 + 0.01 'CO2 intensity of conventional capital (Gt/Ej)

series o2
o2=0
series ed
ed=0
series conv_e
conv_e=0

'add in porfefeuille

series kappa10
kappa10=0.9
series kappa11
kappa11=0.0001
series kappa12
kappa12=-0.0001
series gamma10
gamma10=0.3
series gamma10_n
gamma10_n=0.3
series gamma11
gamma11=0.01
series gamma12
gamma12=-0.005
series gamma13
gamma13=-0.005
series gamma14
gamma14=0.01
series gamma15
gamma15=0.005
series gamma20
gamma20=0.6
series gamma21
gamma21=-0.005
series gamma22
gamma22=0.01
series gamma23
gamma23=-0.005
series gamma24
gamma24=-0.005
series gamma25
gamma25=0.005
series r_e_i
r_e_i=0.1
series r_e_i_f
r_e_i_f=0
series H_d_r
series H_d_w
series S_d_r
S_d_r=0
series M_d_h
M_d_h=14000
series stock_h_d_h
stock_h_d_h=1400
 

series H_d_w_m
series H_d_w_lcc
series H_d_r_m
series H_d_r_lcc

H_d_w_m=0
H_d_r_m=0
H_d_w_lcc=0
H_d_r_lcc=0

series H_r_d_w_m
series H_r_d_w_lcc
series H_r_d_r_m
series H_r_d_r_lcc

H_r_d_w_m=0
H_r_d_r_m=0
H_r_d_w_lcc=0
H_r_d_r_lcc=0

series H_d_m 
H_d_m=0
series H_d_lcc
H_d_lcc=0

H_d_w=0
H_d_r=0

series H_d
H_d=0

'Investissement des coopératives


series p_c
p_c=0
series iota  
iota=0.5

series stock_L_s_c_b
stock_L_s_c_b=1500
series stock_L_s_c_g
stock_L_s_c_g=1500
series stock_L_s_c
stock_L_s_c=3000
series DA_c_b
DA_c_b=0
series DA_c_g
DA_c_g=0
series DA_lcc
DA_lcc=0
series lambda
lambda=0.079 'ok
'lambda = 0.02
series K_c_g
K_c_g=1000
series inv_c
inv_c=0
series K_c_b
K_c_b=2000
series K_c_lcc
K_c_lcc=0
series K_c_g_m
K_c_g_m=K_c_g


 
series K_T_c
K_t_c=0
series iota1
iota1=1.2 'ok
'iota1=0.005 'try
series iota2
iota2=0.005 'ok
'iota2=0.05
series D_s_c
D_s_c=2000
Series v_c_1
v_c_1 = 0.7 'ok
'v_c_1= 0.07 'try
Series v_c_2
v_c_2 = 0.05
Series v_c_3
v_c_3 = 0.05
series inv_d_c
inv_d_c=0
series inv_s_c
inv_s_c=3000
series inv_d_c_g
inv_d_c_g=1500
series inv_s_c_g
inv_s_c_g=1500
series inv_d_g_g
inv_d_g_g=200
series inv_d_c_b
inv_d_c_b=1500
series inv_s_c_b
inv_s_c_b=1500
series l_d_c
l_d_c=0
series l_d_c_g
l_d_c_g=0
series l_d_c_b
l_d_c_b=0
series l_s_c
l_s_c=0
series l_s_c_g
l_s_c_g=0
series l_s_c_b
l_s_c_b=0
series test
test=0
series ad
ad=0.075
 
'entreprises capitalistes

series p_k
p_k=0
series p_k_try
p_k_try=0
series pu_k
pu_k=0
series iota  
iota=0.5
series i_l_k_b
i_l_k_b=0.05
series i_l_k_g
i_l_k_g=0.05
series DA_k_b
DA_k_b=0
series DA_k_g
DA_k_g=0
series lambda
lambda=0.0079

series inv_k
inv_k=0
series coef_inv_k
coef_inv_k=0
series K_T_k
K_t_k=0
series iota1
iota1=0.25
series iota2
iota2=0.0005
series D_s_k
D_s_k=2000
Series v_k_1
'v_k_1 = 0.9 'ok
v_k_1 = 0.9  'try
Series v_k_2
v_k_2 = 0.05
Series v_k_3
v_k_3 = 0.05
series inv_d_k
inv_d_k=2000  
series inv_s_k
inv_s_k=2000 
series inv_d_k_g
inv_d_k_g=500
series inv_s_k_g
inv_s_k_g=500
series inv_d_k_b
inv_d_k_b=1500
series inv_s_k_b
inv_s_k_b=1500


'prêt bancaires

series stock_L_s_k_b
stock_L_s_k_b=5000
series stock_L_s_k_g
stock_L_s_k_g=1000
series stock_L_s_k
stock_L_s_k=6000

series l_d_k
l_d_k=4000
series l_d_k_g
l_d_k_g=0
series l_d_k_b
l_d_k_b=0
series l_s_k
l_s_k=0
series l_s_k_g
l_s_k_g=0
series l_s_k_b
l_s_k_b=0

series l_s_lcc
l_s_lcc=0
series stock_L_s_lcc
stock_L_s_lcc=0

'obligations et papier commercial

series stock_B_s_k_b
stock_B_s_k_b=1000
series stock_B_s_k_g
stock_B_s_k_g=500
series stock_B_s_k
stock_B_s_k=1500
series b_d_k
b_d_k=1500
series b_d_k_g
b_d_k_g=500
series b_d_k_b
b_d_k_b=1000
series b_s_k
b_s_k=1500
series b_s_k_g
b_s_k_g=500
series b_s_k_b
b_s_k_b=1000

series stock_CP_s_k_b
stock_CP_s_k_b=75
series stock_CP_s_k_g
stock_CP_s_k_g=25
series stock_CP_s_k
stock_CP_s_k=100
series cp_d_k
cp_d_k=100
series cp_d_k_g
cp_d_k_g=25
series cp_d_k_b
cp_d_k_b=75
series cp_s_k
cp_s_k=100
series cp_s_k_g
cp_s_k_g=25
series cp_s_k_b
cp_s_k_b=75

series f_s_k
f_s_k=2100
series stock_F_s_k
stock_F_s_k=2100

series f_s_k_g
f_s_k_g=0
series f_d_k_g
f_d_k_g=0
series stock_F_s_k_g
stock_F_s_k_g=0

series f_s_k_b
f_s_k_b=0
series f_d_k_b
f_d_k_b=0
series stock_F_s_k_b
stock_F_s_k_b=0

series stock_D_s_k
stock_D_s_k=0
series stock_D_s_k_b
stock_D_s_k_b=0
series stock_D_s_k_g
stock_D_s_k_g=0

series bank_risky 
bank_risky=0

'interest rates

series i_e
'i_e=0
i_e=0.0045
series i_df
'i_df=-0.005 
'i_df=0.004
i_df=0
series i_mr
i_mr=0
series i_d
i_d=0.0001
series i_gb
i_gb=0.0113
series i_l_k_b
i_l_k_b=pi
series i_l_k_g
i_l_k_g=pi
series i_l_c_b
i_l_c_b=pi
series i_l_c_g
i_l_c_g=pi
series i_b_b
i_b_b=pi
series i_b_g
i_b_g=pi
series i_cp_b
i_cp_b=pi
series i_cp_g
i_cp_g=pi
series r_b_g
r_b_g=i_b_g
series r_b_b
r_b_b=i_b_b
series r_e_k
r_e_k=0.35
series r_gb
r_gb=0
series premium
premium=0.15


series sig_i_1
sig_i_1=i_gb-i_e
series sig_i_2
sig_i_2=0.05

series sig_i_3
sig_i_3=0.00001
series sig_i_4
sig_i_4=0.001
series sig_i_5
sig_i_5=0.00001
series gamma_i
gamma_i=1
 

' real interest rates
series r_i_l_k_g
r_i_l_k_g=i_l_k_g
series r_i_l_k_b
r_i_l_k_b=i_l_k_b
series r_i_l_c_g
r_i_l_c_g=i_l_c_g
series r_i_l_c_b
r_i_l_c_b=i_l_c_b
series r_i_cp_g
r_i_cp_g=i_cp_g
series r_i_cp_b
r_i_cp_b=i_cp_b
series r_i_d
r_i_d=i_d
series r_i_gb
r_i_gb=i_gb
series  r_i_b_b
r_i_b_b=i_b_b
series r_i_b_g
r_i_b_g=i_b_g

'dividend
series div_d
div_d=0

series div_d_alt
div_d_alt=0

series div_d_yield
div_d_yield=0
series div_s
div_s=0
series div_k
div_k=0
series div_s_alt
div_s_alt=0

series div_b
div_b=0

series impact
'total return

series r_e_b_b
r_e_b_b=0
series r_e_b_g
r_e_b_g=0
series r_e_gb
r_e_gb=0
series r_e_l_k_b
r_e_l_k_b=0
series r_e_l_k_g
r_e_l_k_g=0
series r_e_l_c_b
r_e_l_c_b=0
series r_e_l_c_g
r_e_l_c_g=0
'financial markets

'expected capital gains

series CG_e
CG_e=0
series ECG_b_b
ECG_b_b=0
series ECG_b_g
ECG_b_g=0
series ECG_b_g
ECG_b_g=0
series ECG_l_k_b
ECG_l_k_b=0
series ECG_l_k_g
ECG_l_k_g=0
series ECG_l_c_b
ECG_l_c_b=0
series ECG_l_c_g
ECG_l_c_g=0
series ECG_gb
ECG_gb=0
series ECG_e
ECG_e=0
series psi_ecg
psi_ecg=0.05

series greenium
greenium=0

'stock market

series share_price
share_price=1
series equity_price
equity_price=1
series equity_return
equity_return=1
series equity_total_return
equity_total_return=1
series equity_price_return
equity_price_return=1
series equity_div_return
equity_div_return=1
series equity_gain_flow
series equity_gain_flow=1
series equity_gain_stock
equity_gain_stock=1
series equity_value
equity_value=1

'capital gains

series CG_b_b
CG_b_b=0
series CG_b_g
CG_b_g=0
series CG_b_g
CG_b_g=0
series CG_l_k_b
CG_l_k_b=0
series CG_l_k_g
CG_l_k_g=0
series CG_l_c_b
CG_l_c_b=0
series CG_l_c_g
CG_l_c_g=0
series CG_gb
CG_gb=0
series CG_e
CG_e=0
series greenium
greenium=0

series CG_cb_b_b_qe 
CG_cb_b_b_qe=0
series CG_cb_b_g_qe 
CG_cb_b_g_qe =0
series CG_cb_l_k_b_qe 
 CG_cb_l_k_b_qe =0
series CG_cb_l_k_g_qe 
CG_cb_l_k_g_qe =0
series CG_cb_l_c_b_qe 
CG_cb_l_c_b_qe =0
series CG_cb_l_c_g_qe 
CG_cb_l_c_g_qe =0

series totalKgain 
totalKgain=0 
series cumtotalKgain  
cumtotalKgain = 0

series totalKgain_qe
totalKgain_qe=0 
series cumtotalKgain_qe  
cumtotalKgain_qe= 0

series totalKgain_cb_qe
totalKgain_cb_qe=0 
series cumtotalKgain_cb_qe  
cumtotalKgain_cb_qe= 0


'government bond
series stock_GB_s
stock_GB_s=35000

series g_account
g_account=0

'prices

series p_l_k_b
p_l_k_b=1/i_l_k_b
'p_l_k_b=1
series p_l_k_g
p_l_k_g=1/i_l_k_b
'p_l_k_g=1
series p_l_c_b
p_l_c_b=1/i_l_k_b
'p_l_c_b=1
series p_l_c_g
p_l_c_g=1/i_l_k_b
'p_l_c_g=1
series p_b_b
p_b_b=1/i_l_k_b
'p_b_b=1
series p_b_g
p_b_g=1/i_l_k_b
'p_b_g=1
series p_gb
p_gb=1/i_l_k_b
'p_gb=1
series p_e
p_e=1/i_l_k_b
'p_e=1
series p_cp_k_b
 p_cp_k_b=1/i_cp_b
' p_cp_k_b=1
series p_cp_k_g
 p_cp_k_g=1/i_cp_g
'p_cp_k_g=1

'equity
series stock_E_s_k
stock_E_s_k=8341
series e_s_k
e_s_k=8341

series e_d_k
e_d_k=8341

series e_s_flow
e_s_flow=0

series e_s_stock
e_s_stock=e_s_k

series s_e
s_e=0

'parameter
series z1
z1=0

series check
check=0


'banking sector

series H_s_h
series M_s_h
series stock_M_b
stock_M_b=M_d_h
series m_b
m_b=0
series m_b_g
m_b_g=0
series m_b_b
m_b_b=0
series ac_b
ac_b=0

'lender risk
series LR_c_g
LR_c_g=0
series LR_c_b
LR_c_b=0
series LR_k_g
LR_k_g=0
series LR_k_b
LR_k_b=0
series gamma_lr
gamma_lr=0.05

series lr_a1

lr_a1 = 0.01 'try 0.2 or 0.01 OK
 
series lr_b1

lr_b1=-0.002 'ok
series lr_c1
lr_c1=0.2 'ok





'lr_a1=1
series lr_a2
lr_a2=0.155 'OK
series lr_b1
'lr_b1=-0.2
lr_b1=-0.002
series lr_c1
lr_c1=0.2


'bank portfolio choice

series b_d_k_b
b_d_k_b=0
series l_d_k_b
l_d_k_b=0
series cp_d_k_b
cp_d_k_b=0

series b_d_k_g
b_d_k_g=0
series l_d_k_g
l_d_k_g=0
series cp_d_k_g
cp_d_k_g=0

series chi10
chi10=0.4
series chi20
chi20=0.4
series chi30
chi30=0.2

series chi11
chi11=0.5
series chi21
chi21=-0.25
series chi31
chi31=-0.25

series chi12
chi12=-0.25
series chi22
chi22=0.5
series chi32
chi32=-0.25

series chi13
chi13=-0.25
series chi23
chi23=-0.25
series chi33
chi33=0.5

'stocks actifs bancaires


series bank_asset
bank_asset=0

series bank_liability
bank_liability=0

series stock_CP_d_k
stock_CP_d_k=0
series stock_CP_d_k_b
stock_CP_d_k_b=0
series stock_CP_d_k_g
stock_CP_d_k_g=0

series stock_B_d_k
stock_B_d_k=0
series stock_B_d_k_b
stock_B_d_k_b=0
series stock_B_d_k_g
stock_B_d_k_g=0

series stock_L_d
stock_L_d=0
series stock_L_d_b
stock_L_d_b=0

series stock_L_d_g
stock_L_d_g=0

series stock_L_d_k
stock_L_d_k=0
series stock_L_d_k_b
stock_L_d_k_b=0
series stock_L_d_k_g
stock_L_d_k_g=0

series stock_L_d_c
stock_L_d_c=0
series stock_L_d_c_b
stock_L_d_c_b=0
series stock_L_d_c_g
stock_L_d_c_g=0

series stock_GB_d_b
stock_GB_d_b=0 

series stock_L_s
stock_L_s=0

series stock_D_d_g
stock_D_d_g=1000

series stock_D_d_b
stock_D_d_b=3000

series bank_ratio_ante
bank_ratio_ante=0.3

series bank_ratio 
bank_ratio=0

series shock_credit
shock_credit=0

'quantitative easing 

series QE_cp
QE_cp=0
series QE_b
QE_b=0
series QE_l
QE_l=0

'refinancing operations

series stock_M_s_h
stock_M_s_h=M_d_h
series stock_H_d_m
stock_H_d_m=0
series stock_H_d_a 
stock_H_d_a=0
series stock_H_s_a 
stock_H_s_a=0
series stock_H_d_l
stock_H_d_l=0
series stock_A_d_b
stock_A_d_b=0
series stock_A_s_b
stock_A_s_b=0
series stock_H_d_qe
 stock_H_d_qe=0
series stock_H_s_qe
 stock_H_s_qe=0
series stock_H_ex
stock_H_ex=0
series stock_H_d
stock_H_d=0.1*stock_M_s_h
series rho1
rho1=0.01

series erfa
erfa =0
series stock_CBDC_d
stock_CBDC_d=0

series checkH
checkH=0

series p_b
p_b=0

series p_b_flow
p_b_flow=0

'reglementation prudentielle

series car
car=0.0305

series car_a
car_a=0.0305

series car_e
car_e=0.0305

series car_w
car_w=0.35

series car_w_a
car_w_a=0.35

series car_w_e
car_w_e=0.35

series car_w_t
car_w_t=0.35

series lcr
lcr=1

series lcr_e
lcr_e=1
 
series wr_a
wr_a=1
series wr_max
wr_max=1
series qe_t
qe_t=0
series qe_t_s
qe_t_s=0

series lcr
lcr=1
series lcr_a
lcr_a=1
series tilda
tilda=kappa10

series stock_gb_d_b_t
stock_gb_d_b_t=0

'secteur public

series WB_c
WB_c=0
series g
g=0
series g_c
g=0
series g_k
g=0
series real_g
real_g=0
series gb_s
gb_s=0
series def_g
def_g=0
series inv_s_p
inv_s_p=0
series inv_d_p
inv_d_p=0
series p_p
p_p=0
series K_p
K_p=1875
series K_T_p
K_T_p=1875
series gk_1
gk_1=0.0090
series gk_2
gk_2=0.3
series inv_d_p
inv_d_p=500
series inv_d_p_g
inv_d_p_g=200
series inv_d_p_b
inv_d_p_b=300
series DA_p
DA_p=250

series gb_s_g
gb_s_g=0

 

series gb_s_g_a
gb_s_g_a=0

series m_stock_gb_g
m_stock_gb_g=0

series t_stock_gb_g
t_stock_gb_g=0

series stock_gb_g
stock_gb_g=0



series bail
bail=0

'fonds

series S_s
S_s=0
series E_d
E_d=E_s_k
series E_d_p
E_d_p=E_d

series stock_E_d
stock_E_d=stock_E_s_k
series stock_E_d_val
stock_E_d_val=stock_E_d
series stock_GB_d_s
stock_GB_d_s= 0
series stock_GB_d_s_try
stock_GB_d_s_try=0
series gb_d_s
gb_d_s=0
series gb_d_s_try
gb_d_s_try=0
series s_xs
s_xs=0
series stock_s_xs
stock_s_xs=0

series p_s
p_s=0
series be
be=0
series be_try
be_try=0
series be_a
be_a=0
series be_e
be_e=0
series be_s
be_s=0
series ba_a
ba_a=0
series ba_e
ba_e=0
series BRA_a
BRA_a=0

series BRA_e
BRA_e=0

series ba_l
ba_l=0

'banque centrale

series qe_l_b
qe_l_b=0
series qe_l_k_b
qe_l_k_b=0
series qe_l_c_b
qe_l_c_b=0
series qe_l_g
qe_l_g=0
series qe_l_k_g
qe_l_k_g=0
series qe_l_c_g
qe_l_c_g=0
series qe_cp_b
qe_cp_b=0
series qe_cp_g
qe_cp_g=0
series qe_b_b
qe_b_b=0
series qe_b_g
qe_b_g=0
series qe_gb
qe_gb=0

series cb_d_gb
cb_d_gb=0

series stock_qe
stock_qe=0

series check_stock_qe
check_stock_qe=0

series stock_qe_l_b
stock_qe_l_b=0
series stock_qe_l_k_b
stock_qe_l_k_b=0
series stock_qe_l_c_b
stock_qe_l_c_b=0
series stock_qe_l_g
stock_qe_l_g=0
series stock_qe_l_k_g
stock_qe_l_k_g=0
series stock_qe_l_c_g
stock_qe_l_c_g=0
series stock_qe_cp_b
stock_qe_cp_b=0
series stock_qe_cp_g
stock_qe_cp_g=0
series stock_qe_b_b
stock_qe_b_b=0
series stock_qe_b_g
stock_qe_b_g=0
series stock_qe_gb
stock_qe_gb=0

series  stock_qe_cp
stock_qe_cp=0
series  stock_qe_l
stock_qe_l=0
series  stock_qe_b
stock_qe_b=0

series f_cb
f_cb=0
series stock_f_cb
stock_f_cb=0
series cb_income
cb_income=0
series cb_cost
cb_cost=0
series k_cb
k_cb=1500
series k_cb_s
k_cb_s=1500
series stock_GB_d_cb
stock_GB_d_cb= 1500

series check_qe
check_qe=0

series stock_H_s_qe
stock_H_s_qe=0

series stock_H_s_b
stock_H_s_b=0

series stock_H_s
stock_H_s=0

series stock_H_s_gb
stock_H_s_gb=0

series h
h=0
series h_lcc
h_lcc=0

series stock_r_d_b
stock_r_d_b=0

'adaptation climat
series psi
psi=0.5

series check2
check2=0
 
'ratios prudentiels

series car_t

car_t=0.12

series  n_1
 
series n_2
  
series n_3
 

n_1=4
n_2=7.5
n_3=7.5

series wr_a
wr_a=1
series wr_max
wr_max=1
series wr_e
wr_e=1
series qe_t
qe_t=0

series stock_qe
stock_qe=0

series checkqe
checkqe=0

series lcr_t
lcr_t=1
series lcr_a
lcr_a=lcr_t
series tilda
tilda=kappa10 
series stock_GB_d_b_t
stock_GB_d_b_t=0
series gb_d_b_t
gb_d_b_t=0
series checkgb
checkgb=0

series gb_d_b
gb_d_b=0

series lack_gb
lack_gb=0

series clack_gb
clack_gb=0

series pi_a
pi_a=pi

series pi_clim
pi_clim=pi


'RESILIENCE VARIABLES
 
series T_h_w_c
series T_h_w_k
series T_h_r_c
series T_h_r_k
series T_h_r_s
series T_h_w_dot
series  T_h_r_dot
series T_c_h_w
series T_c_b
series T_c_dot
series T_k_h_w
series T_k_b
series T_k_s
series T_k_dot
series T_b_h_w
series T_b_h_r
series T_b_c
series T_b_k
series T_b_s
series T_b_dot
series T_s_h_r
series T_s_k
series T_s_dot
series  T_dot_h_w
series  T_dot_h_r
series T_dot_c
series T_dot_k
series T_dot_b
series T_dot_s
series T_dot_dot
series T_dot_dot_f

series	log_01
series	log_02
series	log_03
series	log_04
series	log_05
series	log_06
series	log_07
series	log_08
series	log_09
series	log_10
series	log_11
series	log_12
series	log_13
series	log_14
series	log_15
series	log_16
series	log_17
series	log_18
series	log_19
series	log_20
series	log_21
series	log_22
series	log_23
series	log_24
series	log_25
series	log_26
series	log_27
series	log_28
series	log_29
series	log_30
series	log_31
series	log_32
series	log_33
series	log_34

series CAP
series A
series X
series a_score
series FIT

 

'Revenu macro 

Y=10000
Y_r=10000
real_Y=10000
CO=5000
inv=2500
'g_start=2500 'ok
inv_s_k=1000
inv_s_c=500
inv_s_p=1000
C_w=2500
C_r=2500
 

'CONSOMMATION

 
alfa_zero=100
alfa_one_w=0.85 
alfa_two_w=0.02
alfa_one_r=0.79 
series alfa_two_r
alfa_two_r=0.02 

K=15000
K_k=5000
K_c=5000
K_p=5000
 
DA=0
DA_k=0
DA_c=0
DA_p=0


K_b=11250
K_g=3750
K_k_b=3750
K_k_g=1250
K_c_b=3750
K_c_g=1250
K_p_b=3750
series K_p_g
K_p_g=1250


inv_s_k=0
inv_s_c=0
inv_s_p=0

lambda = 0.07 '
v_c_1 = 0.07  

v_k_1 = 0.09 ' 

iota1=0.25
series iota2
iota2=0.0005 

g_start=6000 ' 

series iota_WB_T
iota_WB_T=0.6
series iota_WB_a
iota_WB_T=0.6
series iota_WB
iota_WB=0.6



'*****************************************************
'***** MODEL EQUATIONS

model philia 

'AUXILIARY EQUATIONS

philia.append real_inv=inv/price 'auxiliary
philia.append real_G=G/price 'auxiliary
philia.append inv_b = d(K_b) 'auxiliary
philia.append inv_g = d(K_g) 'auxiliary


'MACROECONOMIC INCOME

philia.append Y = CO + inv + G  'eq 1.1
philia.append inv = inv_s_k+inv_s_c+inv_s_p 'eq.1.2
philia.append CO=C_w+C_r 'eq 1.3

'INFLATION AND REAL GDP

philia.append pi=@recode(@date<@dateval("152"), 0, (pi_a+ pi_clim + pi_f)) 'eq.1.4
philia.append pi_a= pi(-1)+ 0.05*(pi(-1)-pi_a(-1)) 'eq 1.5
philia.append pi_f =shock_inf*0.000001*((WB(-1)-WB(-2))/Y(-2)) 'eq 1.6
philia.append pi_clim=ecosystemic_shock*@recode(@date<@dateval("152"), 0, omicron*(depl_e(-1)+depl_m(-1) *ecosystemic_shock*d_t(-1)))   'eq 1.7
philia.append omicron=0.0004 '  'eq 1.7
philia.append price=price(-1)*(1+pi) 'eq.1.8
philia.append real_Y =Y_r(-1)+ (Y-Y(-1))/(1+pi) 'eq.1.9
philia.append Y_r =Y/price ' eq.1.9 alt

'PRODUCTIVE CAPITAL ASSETS

philia.append K=K_k+K_p+K_c 'eq 1.10
philia.append DA=DA_k+DA_c+DA_p 'eq 1.11
philia.append K_b=K_k_b+K_c_b+K_p_b 'eq 1.12
philia.append K_g=K-K_b 'eq 1.13

'NOMINAL AND REAL HOUSEHOLD DISPOSABLE INCOME

philia.append YD_w=(1-teta_w)*(WB_c+WB_p+WB_k+(1-ret_c)*P_c+i_d*M_d_w(-1)) 'eq 2.1 
philia.append YD_r=(1-teta_r)* (div_s+i_d*(M_d_r(-1))) 'eq. 2.2
philia.append YD_r_w=@recode(YD_w/price - pi*V_w(-1) >0, YD_w/price - pi*V_w(-1), 0) 'eq. 2.3
philia.append YD_r_r=@recode(YD_r/price - pi*V_r(-1) >0, YD_r/price - pi*V_r(-1), 0) 'eq. 2.4

'THE WAGE BILL

philia.append WB_a = iota_WB(-1)*real_Y 'eq 2.5
philia.append iota_wb_a=WB_a/Y 'eq 2.6
philia.append iota_wb_t=iota_wb+shock_inf*0.5*(iota_wb-iota_wb_a) 'eq 2.7
philia.append iota_wb=@recode(iota_WB_T>iota_WB_a, iota_WB_a+ omega_WB*( iota_WB_T-iota_WB_a), iota_WB(-1)) 'eq 2.8
philia.append omega_WB=0.2 'eq 2.8  
philia.append WB=iota_WB(-1)*Y 'eq 2.9 
philia.append WB_c=0.10*WB ' eq 2.9 
philia.append WB_k=0.75*WB 'eq 2.9 

'TAX PAYMENTS

philia.append T_w=teta_w*(WB_c+WB_p+WB_k+(1-ret_c)*P_c+i_d*M_d_w(-1)) 'eq. 3.1
philia.append T_r=teta_r*(P_s+i_d*(M_d_r(-1))) 'eq. 3.2
philia.append T_c=(teta_c/(1-teta_c))*p_c 'eq. 3.3
philia.append T_k=(teta_k/((1-teta_k)*(1-r_e_k)))*p_k 'eq "3.4
philia.append T=T_w+T_r +T_k + T_c 'eq. 3.5

'HOUSEHOLDS

'Nominal and real household consumption

philia.append C_w_m=alfa_zero+alfa_one_w*(YD_w) + alfa_two_w*(V_w(-1)-H_d_w_lcc(-1)) 'eq 4.1  
philia.append C_w_lcc=H_d_w_lcc(-1) 'eq 4.1
philia.append C_w=C_w_m+C_w_lcc 'eq 4.1
philia.append C_r_m= alfa_zero+alfa_one_w*(YD_r) 'eq 4.2
philia.append C_r_lcc=H_d_r_lcc(-1) 'eq 4.2
philia.append C_r=C_r_m+C_r_lcc 'eq 4.2
philia.append alfa_two_w=alfa_two_w(-1)/(1+0.005*ecosystemic_shock*d_t(-1)) 'eq. 4.3
philia.append alfa_two_r=alfa_two_w 'eq. 4.3

philia.append C_r_w=C_w/price 'eq 4.4
philia.append C_r_w_m=C_w_m/price 'eq 4.4
philia.append C_r_r_m=C_r_m/price 'eq 4.4

philia.append C_r_r=C_r/price 'eq 4.5
philia.append C_r_w_lcc=C_w_lcc/price 'eq 4.5
philia.append C_r_r_lcc=C_r_lcc/price 'eq 4.5

'Allocation of consumption

philia.append C_c=0.15*CO 'eq 5.1
philia.append C_p=0.15*CO 'eq 5.2
philia.append C_k=CO-C_c-C_p ' eq 5.3

'Nominal and real financial wealth


philia.append V=V(-1)+(YD_w+YD_r-CO)  'eq 6.1
philia.append V_w=V_w(-1)+(YD_w-C_w) 'eq 6.2
philia.append V_r=V-V_w 'eq 6.3
philia.append V_real=V/price 'eq 6.4
philia.append V_r_w=V_w/price 'eq 6.5
philia.append V_r_r=V_r/price 'eq 6.6

'HOUSEHOLDS' PORTFOLIO CHOICE

philia.append M_d_w=kappa10*V_w(-1)+ kappa11*V_w(-1)*i_d(-1)+ kappa12*YD_w 'eq 7.1 
philia.append H_d_w=V_w-M_d_w 'eq 7.2
philia.append M_d_r=gamma10*V_r(-1)+gamma11*i_d*V_r(-1)+gamma12*r_e_i_f*V_r(-1)+gamma14*ecosystemic_shock*d_t(-1)*V_r(-1)+gamma15*YD_r 'eq 8.1
philia.append S_d_r=gamma20*V_r(-1)+gamma21*i_d*V_r(-1)+gamma22*r_e_i_f*V_r(-1)+gamma24*ecosystemic_shock*d_t(-1)*V_r(-1)+gamma25*YD_r 'eq 8.1 
philia.append gamma10= @recode(gamma10_n<0.8, gamma10_n,0.8) 'eq 8.1
philia.append gamma20=gamma20(-1)-(gamma10-gamma10(-1)) 'eq 8.1 
philia.append gamma10_n=gamma10_n(-1)*(1+omega*ecosystemic_shock*d_t(-1)) 'eq 8.2
philia.append H_d_r=V_r-M_d_r-S_d_r 'eq 8.3
philia.append M_d_h=M_d_w+M_d_r 'eq 9.1
philia.append stock_h_d_h=V-M_d_h-S_d_r  'eq 9.2




'SOCIAL ENTERPRISES

'Surplus

philia.append P_c= (1-teta_c)*(C_c+(G_c)+inv_s_c-WB_c-(i_l_c_b*l_s_c_b(-1)+i_l_c_g*l_s_c_g(-1))-da_c + h(-1))    'eq.10  

'Total investment demand

philia.append K_c=K_c_b+K_c_g  'eq.11
philia.append test= K_c-K_c_b-K_c_g 'eq.11
philia.append DA_c=DA_c_b+DA_c_g 'eq 12.1
philia.append DA_c_b=lambda*K_c_b(-1)  'eq 12.2
philia.append DA_c_g=lambda* K_c_g(-1) ' eq 12.3
 philia.append K_T_c  = K_c(-1)  * (1 + iota1  * (P_c(-1)  / K_c(-1)  - iota2  * (stock_l_s_c(-1)  / K_c(-1)))) 'eq.13
philia.append inv_d_c  = @recode(v_c_1  * (K_T_c  - K_c(-1)) + DA_c>0 , v_c_1  * (K_T_c  - K_c(-1)) + DA_c, 0)  'eq 14.1

'Green structure of investment demand

philia.append inv_d_c_g  = @recode(inv_d_c  * 0.25  * (1  + ad  * ecosystemic_shock*d_t(-1)+ d(inv_d_p_g)/inv_d_p_g(-1)+v_c_3*(i_l_c_b(-1)-i_l_c_g(-1)))+ 0.5*gb_s_g(-1) <inv_d_c, inv_d_c  * 0.25  * (1  + ad  * ecosystemic_shock*d_t(-1)+d(inv_d_p_g)/inv_d_p_g(-1) +v_c_3*(i_l_c_b(-1)-i_l_c_g(-1)))+ 0.5*gb_s_g(-1) , inv_d_c) 'eq 14.2 
philia.append inv_d_c_b=@recode(inv_d_c-inv_d_c_g >0, inv_d_c-inv_d_c_g, 0) 'eq 14.3

'Financial structure

philia.append l_d_c_g  =@recode(inv_d_c=0,0, @recode(inv_d_c_g   - da_c_g- P_c  * (ret_c  * (inv_d_c_g  / inv_d_c)) >0  , inv_d_c_g - da_c_g-  - P_c  * (ret_c  * (inv_d_c_g  / inv_d_c)) , 0)) 'eq 15.1 
philia.append l_d_c_b=@recode(inv_d_c=0,0, @recode(inv_d_c_b- da_c_b-P_c*(ret_c*(inv_d_c_b/inv_d_c))>0,inv_d_c_b- da_c_b-P_c*(ret_c*(inv_d_c_b/inv_d_c)),0)) 'eq 15.2
philia.append l_d_c=l_d_c_g+l_d_c_b 'eq 15.3
 
 
'Investment spending

philia.append inv_s_c_b=@recode(inv_d_c>0, l_s_c_b+P_C*ret_c*(inv_d_c_b/inv_d_c)- SMC_share_s*smc, 0) 'eq 16.1
philia.append inv_s_c_g=@recode(inv_d_c>0, l_s_c_g+P_C*ret_c*(inv_d_c_g/inv_d_c)+l_s_lcc+ h_lcc + SMC_share_s*smc, 0) 'eq 16.2  
philia.append inv_s_c=inv_s_c_g+inv_s_c_b 'eq 16.3

'Financial liabilities

philia.append l_s_c=l_s_c_b+l_s_c_g + l_s_lcc 'eq 16.4
philia.append stock_L_s_c_g=stock_L_s_c_g(-1)+l_s_c_g + l_s_lcc 'eq 16.5
philia.append stock_L_s_c_b=stock_L_s_c_b(-1)+l_s_c_b 'eq 16.6
philia.append stock_L_s_c= stock_L_s_c_b+ stock_L_s_c_g 'eq 16.7



'Productive assets

philia.append K_c_g=K_c_g(-1)+inv_s_c_g-da_c_g + 0.5*gb_s_g + h(-1) 'eq 17.1 
philia.append K_c_b=@recode(K_c_b(-1)+inv_s_c_b-da_c_b>0, K_c_b(-1)+inv_s_c_b-da_c_b, 0) 'eq 17.2  


'LISTED CORPORATIONS

'Profits and dividend payments

philia.append p_k=(1-r_e_k)*(1-teta_k)*(C_k+G_k+inv_s_k-WB_k-(i_l_k_b*l_s_k_b(-1)+i_l_k_g*l_s_k_g(-1)+i_b_b*b_s_k_b(-1)+i_b_g*b_s_k_g(-1)+i_cp_b*cp_s_k_b(-1)+i_cp_g*cp_s_k_b(-1))-da_k) 'eq.18
philia.append div_d=(r_e_k/(1-r_e_k))*p_k 'eq.19
philia.append div_k=div_d 'eq.20
philia.append pu_k=p_k  'eq.21
 
'Total investment demand

philia.append K_k=K_k_b+k_k_g 'eq 22.1
philia.append K_k_b=K_k_b(-1)+inv_s_k_b-da_k_b -shock_CARE*CARE   ' eq 22.2  
philia.append K_k_g=K_k_g(-1)+inv_s_k_g-da_k_g + shock_CARE*CARE  ' 'eq 22.3   
philia.append DA_k=DA_k_b+DA_k_g 'eq 23.1
philia.append DA_k_b=lambda*K_k_b(-1)  'eq 23.2  
philia.append DA_k_g=lambda* K_k_g(-1)  'eq 23.3
philia.append K_T_k  = 2.5*Y(-1) 'eq.24.1
philia.append inv_d_k  = @recode(v_k_1  * (K_T_k  - K_k(-1)) + DA_k >0 , v_k_1  * (K_T_k  - K_k(-1)) + DA_k , 0) 'eq.24.2



 'Green structure of investment demand

philia.append inv_d_k_g  = @recode(inv_d_k  * 0.25  * (1  + ad  * ecosystemic_shock*d_t(-1)+ d(inv_d_p_g)/inv_d_p_g(-1)+v_c_3*(i_l_k_b(-1)-i_l_k_g(-1))) + 0.5*(SMC_share_k)*smc(-1) <inv_d_k, inv_d_k  * 0.25  * (1  + ad  * ecosystemic_shock*d_t(-1)+d(inv_d_p_g)/inv_d_p_g(-1) +v_c_3*(i_l_k_b(-1)-i_l_k_g(-1)))+ 5*(SMC_share_k)*smc(-1) , inv_d_k) 'eq 25.1
philia.append inv_d_k_b=@recode(inv_d_k-inv_d_k_g>0, inv_d_k-inv_d_k_g, 0) 'eq 25.2

'Investment financing

philia.append f_d_k=f_d_k_g+f_d_k_b 'eq 26.1
philia.append f_d_k_g  =@recode(inv_d_k=0,0, @recode(inv_d_k_g   - PU_k(-1)  * ((inv_d_k_g  / inv_d_k))>0  , inv_d_k_g   - PU_k(-1)  * ((inv_d_k_g  / inv_d_k)), 0)) 'eq 26.2  
philia.append f_d_k_b=@recode(inv_d_k=0,0, @recode(inv_d_k_b- PU_k(-1)*((inv_d_k_b/inv_d_k))>0,inv_d_k_b- PU_k(-1)*((inv_d_k_b/inv_d_k)),0)) 'eq 26.3  
philia.append e_s_k=@recode(f_d_k-f_s_k>0, f_d_k-f_s_k, 0) 'eq 26.4  

'Investment spending

philia.append inv_s_k=inv_s_k_g+inv_s_k_b 'eq 27.1
philia.append inv_s_k_b=@recode(inv_d_k>0, f_s_k_b + PU_k* (inv_d_k_b/inv_d_k) - (SMC_share_k)*smc+ e_d_k*(inv_d_k_b/inv_d_k), 0) 'eq 27.2
philia.append inv_s_k_g=@recode(inv_d_k>0, f_s_k_g + PU_k* (inv_d_k_g/inv_d_k) + (SMC_share_k)*smc + e_d_k*(inv_d_k_g/inv_d_k),0 ) 'eq 27.3

'Financial liablities


philia.append cp_s_k_b=cp_d_k_b 'eq 28.1
philia.append cp_s_k_g=cp_d_k_g  'eq 28.2
philia.append b_s_k_b=b_d_k_b   'eq 28.3
philia.append b_s_k_g=b_d_k_g 'eq 28.4
philia.append l_s_k_b=l_d_k_b 'eq 28.5
philia.append l_s_k_g=l_d_k_g 'eq 28.6
philia.append f_s_k=f_s_k_b+f_s_k_g 'eq 28.7
philia.append stock_E_s_k=stock_E_s_k(-1)+e_d_k 'eq 28.8
philia.append stock_CP_s_k_b=stock_CP_s_k_b(-1)+cp_s_k_b 'eq 28.9
philia.append stock_CP_s_k_g=stock_CP_s_k_g(-1)+cp_s_k_g 'eq 28.10
philia.append stock_CP_s_k=stock_CP_s_k_b+stock_CP_s_k_g 'eq 28.11
philia.append stock_B_s_k_b=stock_B_s_k_b(-1)+b_s_k_b 'eq 28.12
philia.append stock_B_s_k_g=stock_B_s_k_g(-1)+b_s_k_g 'eq 28.13
philia.append stock_B_s_k=stock_B_s_k_b+stock_B_s_k_g 'eq 28.14
philia.append stock_L_s_k_b=stock_L_s_k_b(-1)+l_s_k_b ' eq 28.15
philia.append stock_L_s_k_g=stock_L_s_k_g(-1)+l_s_k_g 'eq 28.16
philia.append stock_L_s_k=stock_L_s_k_b+stock_L_s_k_g 'eq 28.17
philia.append stock_D_s_k=stock_D_s_k_b+stock_D_s_k_g 'eq 28.18
philia.append stock_D_s_k_b=  stock_CP_s_k_b+stock_B_s_k_b+stock_L_s_k_b 'eq 28.19
philia.append stock_D_s_k_g=  stock_CP_s_k_g+stock_B_s_k_g+stock_L_s_k_g 'eq 28.10
philia.append stock_L_s=stock_L_s_c+stock_L_s_k '

'BANKS

'Cash and deposit liabilities

philia.append H_s_h=stock_h_d_h 'eq.29.1
philia.append M_s_h=M_d_h+stock_s_xs 'eq.29.2

'Inside money creation

philia.append m_b=l_s_c+f_s_k 'eq.30.1
philia.append m_b_g=l_s_c_g+f_s_k_g+l_s_lcc 'eq 30.2
philia.append m_b_b=l_s_c_b+f_s_k_b 'eq 30.3  
philia.append stock_M_b=stock_M_b(-1)+m_b 'eq 30.4

'Banking credit
 
philia.append l_s_c_g=@recode(stock_L_s_c(-1)<(1/gamma_lr)*K_c(-1), @recode(l_d_c_g*(1-LR_c_g(-1))>0,l_d_c_g*(1-LR_c_g(-1)),0),0) 'eq 31.1 
philia.append l_s_c_b=@recode(stock_L_s_c(-1)<(1/gamma_lr)*K_c(-1), @recode(l_d_c_b*(1-LR_c_b(-1))>0,l_d_c_b*(1-LR_c_b(-1)),0),0) 'eq 31.2
philia.append f_s_k_g=@recode(f_d_k_g*(1-LR_k_g(-1))>0,f_d_k_g*(1-LR_k_g(-1)),0) 'eq 31.3
philia.append f_s_k_b=@recode(f_d_k_b*(1-LR_k_b(-1))>0,f_d_k_b*(1-LR_k_b(-1))*shock_epr,0) 'eq 31.4
philia.append LR_c_g=shock_risk*@recode(lr_a1*(stock_L_s_c/K_c) - lr_b1*(d(y)/y(-1)) + lr_c1*i_e>0,lr_a1*(stock_L_s_c/K_c) - lr_b1*(d(y)/y(-1)) + lr_c1*i_e,0) 'eq 32.1
philia.append LR_k_g=@recode(lr_a1*(stock_D_s_K/(K_k))  - lr_b1*(d(y)/y(-1)) + lr_c1*i_e<0.7, lr_a1*(stock_D_s_K/(K_k))  - lr_b1*(d(y)/y(-1)) + lr_c1*i_e, 0.7) 'eq 32.2
philia.append LR_c_b=LR_c_g*(1+psi*ecosystemic_shock*d_t(-1)) 'eq 32.3
philia.append LR_k_b=LR_k_g*(1+psi*ecosystemic_shock*d_t(-1)) 'eq 32.4  

'auxiliary 
philia.append l_s_lcc=@recode(l_d_c_g(-1)>l_s_c_g(-1),1*(l_d_c_g(-1)-l_s_c_g(-1))*shock_lcc,0)  ' 

'Debt structure


philia.append b_d_k_b= chi10*f_s_k_b + (chi11*r_e_b_b+chi12*r_e_l_k_b+chi13*i_cp_b)*f_s_k_b 'eq 33.1
philia.append l_d_k_b=chi20*f_s_k_b + (chi21*r_e_b_b+chi22*r_e_l_k_b+chi23*i_cp_b)*f_s_k_b 'eq 33.1
philia.append b_d_k_g=chi10*f_s_k_g+ (chi11*r_e_b_g+chi12*r_e_l_k_g+chi13*i_cp_g)*f_s_k_g 'eq 33.2
philia.append l_d_k_g=chi20*f_s_k_g + (chi21*r_e_b_g+chi22*r_e_l_k_g+chi23*i_cp_g)*f_s_k_g 'eq 33.2
philia.append cp_d_k_b=f_s_k_b-b_d_k_b-l_d_k_b 'eq 34.1
philia.append cp_d_k_g=f_s_k_g-b_d_k_g-l_d_k_g 'eq 34.2
philia.append cp_d_k=cp_d_k_g+cp_d_k_b 'eq 34.3
philia.append b_d_k=b_d_k_g+b_d_k_b 'eq 34.4
philia.append l_d_k=l_d_k_g+l_d_k_b 'eq 34.5

'Quantitative easing

philia.append stock_CP_d_k_b=@recode(stock_CP_s_k(-1)>0,stock_CP_s_k_b-(stock_CP_s_k_b(-1)/stock_CP_s_k(-1))*stock_qe_cp(-1),0) 'eq 35.1
philia.append stock_CP_d_k_g=@recode(stock_CP_s_k(-1)>0, stock_CP_s_k_g-(stock_CP_s_k_g(-1)/stock_CP_s_k(-1))*stock_qe_cp(-1), 0) 'eq 35.2
philia.append stock_B_d_k_b=@recode(stock_B_s_k(-1)>0, stock_B_s_k_b-(stock_B_s_k_b(-1)/stock_B_s_k(-1))*stock_qe_b (-1), 0) 'eq 35.3
philia.append stock_B_d_k_g=@recode(stock_B_s_k(-1)>0, stock_B_s_k_g-(stock_B_s_k_g(-1)/stock_B_s_k(-1))*stock_qe_b (-1), 0) 'eq 35.4
philia.append stock_L_d_k_b=@recode(stock_L_d(-1)>0, stock_L_s_k_b-(stock_L_s_k_b(-1)/stock_L_s(-1))*stock_qe_l(-1), 0) 'eq 35.5
philia.append stock_L_d_k_g=@recode (stock_L_d(-1)>0, stock_L_s_k_g-(stock_L_s_k_g(-1)/stock_L_s(-1))*stock_qe_l(-1), 0) 'eq 35.6
philia.append stock_L_d_c_b=@recode(stock_L_d(-1)>0, stock_L_s_c_b-(stock_L_s_c_b(-1)/stock_L_s(-1))*stock_qe_l(-1), 0) 'eq 35.7
philia.append stock_L_d_c_g=@recode(stock_L_d(-1)>0, stock_L_s_c_g-(stock_L_s_c_g(-1)/stock_L_s(-1))*stock_qe_l(-1), 0) 'eq 35.8
philia.append stock_CP_d_k=stock_CP_d_k_b+stock_CP_d_k_g 'eq 35.9
philia.append stock_B_d_k=stock_B_d_k_b+stock_B_d_k_g 'eq 35.10
philia.append stock_L_d=stock_L_d_b+stock_L_d_g 'eq 35.11
philia.append stock_L_d_b=stock_L_d_k_b+stock_L_s_c_b 'eq 35.12
philia.append stock_L_d_g=stock_L_d_k_g+stock_L_s_c_g 'eq 35.13
philia.append stock_D_d=stock_CP_d_k+stock_B_d_k+stock_L_d 'eq 35.14
philia.append stock_F_s_k=stock_L_s_k_b+stock_L_s_k_g+stock_B_s_k_b+stock_B_s_k_g+stock_CP_s_k_b+stock_CP_s_k_g 'eq 35.15
philia.append stock_D_d_g=stock_CP_d_k_g+stock_B_d_k_g+stock_L_d_g ' 
philia.append stock_D_d_b=stock_CP_d_k_b+stock_B_d_k_b+stock_L_d_b '


'Refinancing operations

philia.append stock_M_s_h  = M_s_h 

philia.append stock_H_d_m  = rho1  * stock_M_s_h(-1) 'eq 36.1
philia.append stock_A_d_b=@recode(stock_H_d_m-stock_H_d_qe-stock_R_d_b-stock_SMC>0, stock_H_d_m-stock_H_d_qe-stock_R_d_b-stock_SMC, 0) 'eq 36.2 
philia.append stock_A_s_b  = shock_adb*stock_A_d_b 'eq 36.3
philia.append stock_H_d_qe  = stock_H_s_qe 'eq 36.4
philia.append stock_H_ex  = stock_H_d  -  stock_H_d_m - stock_h_d_h  'eq 36.5  

'Income statement

philia.append p_b_flow  = i_gb * d(stock_GB_d_b(-1))  + i_l_k_b  * l_d_k_b(-1)  + i_l_k_g  * l_d_k_g(-1)  + i_l_c_b  * l_d_c_b(-1)  + i_l_c_g  * l_d_c_g(-1)  + i_cp_b  * CP_d_k_b(-1)  + i_cp_b  * CP_d_k_g(-1)  + i_b_g  * B_d_k_g(-1)  + i_b_b  * B_d_k_b(-1)  + i_mr  *(d(stock_H_d_m(-1)))  + i_df  * d(stock_H_ex(-1))  - i_d(-1) *d(stock_m_s_h(-1)) - i_e  * (d(stock_A_s_b(-1)))   'eq 37.1
philia.append div_b  = @recode(p_b_flow>0  , p_b_flow  , 0) 'eq 37.2

'Banks' balance sheet

philia.append BA_a  = p_gb  * stock_GB_d_b + p_l_k_b  * stock_l_s_k_b  + p_l_k_g  * stock_l_s_k_g  + p_l_c_b  * stock_l_s_c_b  + p_l_c_g  * stock_l_s_c_g  +p_b_b  * stock_b_s_k_b  +p_cp_k_b  * stock_cp_s_k_b  + p_cp_k_g  * stock_cp_s_k_g + p_b_g  * stock_b_s_k_g+ (stock_h_d_m) + cumtotalKgain   ' eq 38.1
philia.append BA_e  = p_gb  * stock_GB_d_b + p_l_k_b  * stock_l_d_k_b  + p_l_k_g  * stock_l_d_k_g  + p_l_c_b  * stock_l_d_c_b  + p_l_c_g  * stock_l_d_c_g  +p_b_b  * stock_b_d_k_b  +p_cp_k_b  * stock_cp_d_k_b  + p_cp_k_g  * stock_cp_d_k_g + p_b_g  * stock_b_d_k_g+ (stock_h_d_m + stock_h_d_qe) + cumtotalKgain*((stock_f_s_k+stock_l_s_c-d(qe_t_s))/(stock_f_s_k+stock_l_s_c)) 'eq 38.2
philia.append BA_l = stock_M_s_h  + stock_A_s_b 'eq 38.3
philia.append BE_a  = BA_a  - (BA_l) ' eq 38.4
philia.append BE_e  = BA_e  - (BA_l) 'eq 38.5
philia.append BRA_a = p_l_k_b  * stock_l_s_k_b  + p_l_k_g  * stock_l_s_k_g  + p_l_c_b  * stock_l_s_c_b  + p_l_c_g  * stock_l_s_c_g  +p_b_b  * stock_b_s_k_b  +p_cp_k_b  * stock_cp_s_k_b  + p_cp_k_g  * stock_cp_s_k_g + p_b_g  * stock_b_s_k_g  + cumtotalKgain 'Stocks of risky assets pre QE
philia.append BRA_e = p_l_k_b  * stock_l_d_k_b  + p_l_k_g  * stock_l_d_k_g  + p_l_c_b  * stock_l_d_c_b  + p_l_c_g  * stock_l_d_c_g  +p_b_b  * stock_b_d_k_b  +p_cp_k_b  * stock_cp_d_k_b  + p_cp_k_g  * stock_cp_d_k_g + p_b_g  * stock_b_d_k_g  + cumtotalKgain_qe 'Stocks of risky assets post QE
philia.append BE_s=d(stock_a_s_b)-d(f_s_k+l_s_c)+d(stock_m_s_h)+gb_d_b+(h_d-d(qe_t_s)-d(stock_h_d_h)-R_d_b-d(h))  'annual change in bank equity

'Capital adequacy ratio (CAR)
 
philia.append car_a=be_a/wr_a 'eq 38.6
philia.append car_e=be_e(-1)/wr_e 'eq 38.7
philia.append wr_max  = be_a/car_t 'eq 38.8
philia.append wr_a = n_1  * (p_l_k_b  * stock_l_d_k_b  + p_l_k_g  * stock_l_d_k_g  + p_l_c_b  * stock_l_d_c_b  + p_l_c_g  * stock_l_d_c_g)  + n_2  * (p_b_b  * stock_b_d_k_b  + p_b_g  * stock_b_d_k_g)  + n_3  * (p_cp_k_b  * stock_cp_d_k_b  + p_cp_k_g  * stock_cp_d_k_g) 'eq 38.9
philia.append qe_t_s= shock_qe*@recode(wr_a(-1)<wr_max(-1), 0, (wr_a(-1) - wr_max(-1))/n_1) 'eq 38.10
philia.append qe_t=d(qe_t_s) 'eq 38.11
philia.append wr_e  = wr_a-qe_t_s*n_1 'eq 38.12

 
 'Liquidity ratio (LCR)

philia.append lcr_a  = (stock_GB_d_b(-1)  + (stock_h_d-stock_h_d_h))  / (tilda  * stock_M_s_h) 'eq 38.13
philia.append tilda  = @recode((stock_gb_d_b(-1)  + stock_h_d(-1)-stock_h_d_h(-1))/(stock_M_s_h(-1))*1.008>0,(stock_gb_d_b(-1)  + stock_h_d(-1)-stock_h_d_h(-1))/(stock_M_s_h(-1))*1.008, (stock_gb_d_b(-1)  + stock_h_d(-1))/(stock_M_s_h(-1))*1.008) '38.14
 philia.append stock_gb_d_b_t  =stock_gb_d_b_t(-1)+gb_d_b_t 'eq 38.15
philia.append gb_d_b_t=(tilda  * stock_M_s_h)  * (lcr_t-lcr_a) 'eq 38.16
philia.append lcr_e = (stock_gb_d_b+ (stock_h_d-stock_h_d_h)) / (tilda * stock_M_s_h) 'eq 38.17
philia.append gb_d_b=@recode(gb_d_b_t>0,@recode(gb_d_b_t<gb_s, gb_d_b_t, gb_s),@recode(stock_gb_d_b(-1)>0, gb_d_b_t, 0))
philia.append stock_gb_d_b=@recode(stock_gb_d_b(-1)+gb_d_b>0,stock_gb_d_b(-1)+gb_d_b ,0)
 
'INVESTMENT FUNDS
 
philia.append share_price=1
philia.append S_s=S_d_r 'eq 39.1  
philia.append e_d_k=@recode((S_s)>e_s_k, e_s_k, (S_s)) '39.2
philia.append stock_gb_d_s=stock_gb_d_s(-1)+gb_d_s 'eq 39.3
philia.append gb_d_s=@recode(gb_s-gb_d_b>0, gb_s-gb_d_b, 0) 'eq 39.4
philia.append s_xs=(s_s-e_d_k-(be_s))-gb_d_s 'eq 39.5  
philia.append stock_s_xs=stock_s_xs(-1)+s_xs 'eq 39.6
philia.append p_s= Div_b +  Div_k+ i_gb*(gb_d_s) +i_d*s_xs(-1) 'eq 39.7
philia.append div_s= p_s(-1)  'eq 39.8


'CENTRAL BANK

'High powered money 
philia.append H_d=d(stock_A_s_b)+d(qe_t_s)+d(stock_h_d_h) + R_d_b+ d(h) + qe_gb + smc 'eq 39.8
philia.append stock_H_d  = stock_H_d(-1)+ H_d 'eq. 39.9

'Quantitative easing operations
 
philia.append qe_l_b=qe_l_k_b+qe_l_c_b 'eq 40.1
philia.append qe_l_g=qe_l_k_g+qe_l_c_g 'eq 40.2
philia.append qe_l=qe_l_b+qe_l_g 'eq 40.3
philia.append qe_cp=qe_cp_b+qe_cp_g 'eq 40.4
 philia.append qe_b=qe_b_g+qe_b_b 'eq 40.5
philia.append qe_l_k_b=d(qe_t_s)*(stock_L_s_k_b(-1)/(stock_F_s_k(-1)+stock_L_s_c(-1))) 'eq 40.6
philia.append qe_l_k_g=d(qe_t_s)*(stock_L_s_k_g(-1)/(stock_F_s_k(-1)+stock_L_s_c(-1))) 'eq 40.7
philia.append qe_l_c_b=d(qe_t_s)*(stock_L_s_c_b(-1)/(stock_F_s_k(-1)+stock_L_s_c(-1))) 'eq 40.8
philia.append qe_l_c_g=d(qe_t_s)*(stock_L_s_c_g(-1)/(stock_F_s_k(-1)+stock_L_s_c(-1))) 'eq 40.9
philia.append qe_cp_b=d(qe_t_s)*(stock_CP_s_k_b(-1)/(stock_F_s_k(-1)+stock_L_s_c(-1))) 'eq 40.10
philia.append qe_cp_g=d(qe_t_s)*(stock_CP_s_k_g(-1)/(stock_F_s_k(-1)+stock_L_s_c(-1))) 'eq 40.11
philia.append qe_b_b=d(qe_t_s)*(stock_B_s_k_b(-1)/(stock_F_s_k(-1)+stock_L_s_c(-1))) 'eq 40.12
philia.append qe_b_g=d(qe_t_s)*(stock_B_s_k_g(-1)/(stock_F_s_k(-1)+stock_L_s_c(-1))) 'eq 40.13
philia.append qe_gb=gb_s-gb_d_b-gb_d_s 'eq 40.14
philia.append stock_gb_d_cb=stock_gb_d_cb(-1)+qe_gb 'eq.40.15
philia.append checkqe = d(qe_t_s)* (stock_l_s_k_b+stock_l_s_k_g+stock_l_s_c_b+stock_l_s_c_g+stock_cp_s_k_b+stock_cp_s_k_g+stock_b_s_k_b+stock_b_s_k_g)/(stock_f_s_k+stock_l_s_c)-d(qe_t_s)
philia.append stock_qe_l_k_b=stock_qe_l_k_b(-1)+qe_l_k_b   'eq 41.1
philia.append stock_qe_l_k_g=stock_qe_l_k_g(-1)+qe_l_k_g 'eq 41.2
philia.append stock_qe_l_c_b=stock_qe_l_c_b(-1)+qe_l_c_b 'eq 41.3
philia.append stock_qe_l_c_g=stock_qe_l_c_g(-1)+qe_l_c_g  'eq 41.4
philia.append stock_qe_cp_b=stock_qe_cp_b(-1)+qe_cp_b 'eq 41.5
philia.append stock_qe_cp_g=stock_qe_cp_g(-1)+qe_cp_g 'eq 41.6
philia.append stock_qe_b_b=stock_qe_b_b(-1)+qe_b_b 'eq 41.7
philia.append stock_qe_b_g=stock_qe_b_g(-1)+qe_b_g 'eq 41.8 
philia.append stock_qe_b=stock_qe_b_b+stock_qe_b_g 'eq 41.8
philia.append stock_qe_l=stock_qe_l_k_b+stock_qe_l_k_g+stock_qe_l_c_b+stock_qe_l_c_g 'eq 41.10
philia.append stock_qe_cp=stock_qe_cp_b+stock_qe_cp_g 'eq 41.11
 
'Reserve liabilities

philia.append stock_H_s_qe  =  qe_t_s 'eq 41.12 
philia.append stock_H_s_gb  = stock_gb_d_cb  '41.13
philia.append stock_H_s  = stock_A_s_b  + stock_H_s_qe + h + stock_R_d_b + shock_smc*stock_H_smc + stock_H_s_gb + h_s_h  'eq 41.14

'Income statement and equity

philia.append cb_income = i_l_k_b*stock_qe_l_k_b(-1) + i_l_k_g*stock_qe_l_k_g(-1) + i_l_c_b*stock_qe_l_c_g(-1)+i_b_b(-1)*stock_qe_b_b(-1)+i_b_g(-1)*stock_qe_b_g(-1)+i_cp_b(-1)*stock_qe_cp_b(-1)+i_cp_g(-1)*stock_qe_cp_g(-1)+ i_e*stock_a_s_b(-1) 'eq 42
philia.append cb_cost = i_mr*stock_h_d_m(-1)+i_df*(stock_h_ex(-1)-stock_h_smc(-1)) 'eq 42
philia.append f_cb= cb_income(-1) - cb_cost(-1) 'eq 42
philia.append K_cb_s= d(stock_A_s_b)+d(qe_t_s) + qe_gb + R_d_b - (H_d-d(stock_h_d_h)) +smc ' eq 43.1
philia.append K_cb=K_cb(-1)+K_cb_s 'eq. 43.2

'INTEREST RATES

'Money market rates
philia.append i_e=0.0045+i_df 'eq. 44.1
philia.append i_df=0.0001 'eq.44.2
philia.append i_mr=i_df-0.0001 'eq.44.3

'Bank lending rates
 
philia.append i_cp_b  =  i_e  + lr_k_b  + sig_i_1 +  sig_i_5  * (1  + gamma_i  * ecosystemic_shock*d_t(-1))   'eq 46.2
philia.append i_cp_g  = i_e  + lr_k_g  + sig_i_1 -  sig_i_5  * (1  + gamma_i  * ecosystemic_shock*d_t(-1))  'eq 46.3
philia.append i_l_k_g  = i_cp_g  + sig_i_2 - sig_i_5  * (1  + gamma_i  * ecosystemic_shock*d_t(-1))  'eq 46.4
philia.append i_l_k_b  = i_cp_b  + sig_i_2 +  sig_i_5  * (1  + gamma_i  * ecosystemic_shock*d_t(-1))  'eq 46.5
philia.append i_l_c_g  = shock_risk*@recode(lr_c_g>lr_k_g  , i_l_k_g  + (lr_c_g  - lr_k_g)  - sig_i_5  * (1  + gamma_i  * ecosystemic_shock*d_t(-1))    , i_l_c_g(-1) - sig_i_5  * (1  - gamma_i  * ecosystemic_shock*d_t(-1))  ) 'eq 46.6
philia.append i_l_c_b  =   i_l_k_b  + (lr_c_b  - lr_k_b)+ sig_i_5  * (1  + gamma_i  * ecosystemic_shock*d_t(-1))  'eq 46.7
philia.append i_b_b  =  i_l_k_b  +  sig_i_5  * (1  + gamma_i  * ecosystemic_shock*d_t(-1))   'eq 46.8
philia.append i_b_g  =  i_l_k_g - sig_i_5  * (1  + gamma_i  * ecosystemic_shock*d_t(-1))   '46.9
philia.append greenium = gamma_i  * ecosystemic_shock*d_t(-1) '47

'Deposit rates

philia.append i_d  = i_d(-1)  + d(i_e) 'eq 47

'Treasuries rate

philia.append i_gb  = i_e  + sig_i_1 'eq 49

'FINANCIAL MARKETS

'Total returns

philia.append r_e_b_b=i_b_b+CG_b_b/stock_b_s_k_b(-1) 'eq 50.1
philia.append r_e_b_g=i_b_g+CG_b_g/stock_b_s_k_g(-1) 'eq 50.2
philia.append r_e_gb=i_gb+CG_gb/stock_GB_s(-1) 'eq 50.3
philia.append r_e_l_k_b=i_l_k_b+CG_l_k_b/stock_l_s_k_b(-1) 'eq 50.4
philia.append r_e_l_k_g=i_l_k_g+CG_l_k_g/stock_l_s_k_g(-1) 'eq 50.5
philia.append r_e_l_c_b=i_l_c_b+CG_l_c_b/stock_l_s_c_b(-1) 'eq 50.6
philia.append r_e_l_c_g=i_l_c_g+CG_l_c_g/stock_l_s_c_g(-1) 'eq 50.7
 
'Expected capital gains
 
philia.append ECG_b_b=CG_b_b(-1)+psi_ecg*(CG_b_b(-1)-ECG_b_b(-1)) 'eq 51.1
philia.append ECG_b_g=CG_b_g(-1)+psi_ecg*(CG_b_g(-1)-ECG_b_g(-1)) 'eq 51.2
philia.append ECG_l_k_b=CG_l_k_b(-1)+psi_ecg*(CG_l_k_b(-1)-ECG_l_k_b(-1)) 'eq 51.3
philia.append ECG_l_k_g=CG_l_k_g(-1)+psi_ecg*(CG_l_k_g(-1)-ECG_l_k_g(-1)) 'eq 51.4
philia.append ECG_l_c_b=CG_l_c_b(-1)+psi_ecg*(CG_l_c_b(-1)-ECG_l_c_b(-1)) 'eq 51.5
philia.append ECG_l_c_g=CG_l_c_g(-1)+psi_ecg*(CG_l_c_g(-1)-ECG_l_c_g(-1)) 'eq 51.6
philia.append ECG_gb=CG_gb(-1)+psi_ecg*(CG_gb(-1)-ECG_gb(-1)) 'eq 51.7
philia.append ECG_e=CG_e(-1)+psi_ecg*(CG_e(-1)-ECG_e(-1)) 'eq 51.8

'Realized capital gains

philia.append CG_gb=shock_cg_gb*d(p_gb)*stock_GB_s(-1) 'eq 52.1
philia.append CG_b_b=shock_cb*stock_B_s_k_b(-1) 'eq 52.2
philia.append CG_b_g=shock_cg*stock_B_s_k_g(-1) 'eq 52.3
philia.append CG_l_k_b=shock_cb*stock_L_s_k_b(-1) 'eq 52.4
philia.append CG_l_k_g=shock_cg*stock_L_s_k_g(-1) 'eq 52.5
philia.append CG_l_c_b=shock_cb*stock_L_s_c_b(-1) 'eq 52.6
philia.append CG_l_c_g=shock_cg*stock_L_s_c_g(-1) 'eq 52.7
philia.append CG_e=d(p_e)*stock_e_s_k(-1) 'eq 52.8

'THE PUBLIC SECTOR

'The government's budget constraint

philia.append gb_s=@recode(def_g-inv_s_p+da_p+p_p+f_cb+k_cb_s<0, -(def_g-inv_s_p+da_p+p_p+f_cb+k_cb_s), 0)' 53.1
philia.append def_g= (t)-(i_gb*gb_s(-1)+g) ' 53.1
philia.append stock_gb_s  = stock_gb_s(-2)  + gb_s(-1)  'eq 53.2 
philia.append g=g_start 'eq 53.3
philia.append g_c  = 0.2*g 'eq 53.4
philia.append g_k  = g-g_c 'eq 53.5

'Public sector firms

philia.append p_p  = C_p  - WB_p + inv_s_p - DA_p 'eq 54.1  
philia.append WB_p  = WB  - WB_c  - WB_k 'eq.54.2
philia.append DA_p  = lambda  * K_p(-1) 'eq 54.3
philia.append K_T_p  = (1  + gk_1)  * K_p(-1) 'eq 54.4
philia.append K_p  = K_p(-1)  + inv_s_p  - DA_p 'eq 54.5
philia.append inv_d_p  = K_T_p  - K_p  + DA_p 'eq 54.6
philia.append inv_d_p_g  = gk_2  * inv_d_p + smc_share_p*smc   'eq 54.7
philia.append inv_d_p_b  = inv_s_p  - inv_d_p_g - smc_share_p*smc  'eq 54.8
philia.append inv_s_p  = inv_d_p   'eq 54.9

'Auxiliary - capital gains
 
philia.append totalKgain = CG_gb +  CG_b_b + CG_b_g +  CG_l_k_b + CG_l_k_g + CG_l_c_b +cg_l_c_g
philia.append cumtotalKgain = cumtotalKgain(-1)+totalKgain
philia.append CG_b_b_qe=shock_cb*stock_B_d_k_b(-1) '
philia.append CG_b_g_qe=shock_cg*stock_B_d_k_g(-1) ' 
philia.append CG_l_k_b_qe=shock_cb*stock_L_d_k_b(-1) '
philia.append CG_l_k_g_qe=shock_cg*stock_L_d_k_g(-1) ' 
philia.append CG_l_c_b_qe=shock_cb*stock_L_d_c_b(-1) ' 
philia.append CG_l_c_g_qe=shock_cg*stock_L_d_c_g(-1) ' 
philia.append totalKgain_qe = CG_gb +  CG_b_b_qe + CG_b_g_qe +  CG_l_k_b_qe + CG_l_k_g_qe + CG_l_c_b_qe +cg_l_c_g_qe
philia.append cumtotalKgain_qe = cumtotalKgain_qe(-1)+totalKgain_qe
philia.append CG_cb_b_b_qe=shock_cb*stock_qe_b_b(-1) ' 
philia.append CG_cb_b_g_qe=shock_cg* stock_qe_b_g(-1) ' 
philia.append CG_cb_l_k_b_qe=shock_cb*stock_qe_l_k_b(-1) ' 
philia.append CG_cb_l_k_g_qe=shock_cg*stock_qe_l_k_g(-1) ' 
philia.append CG_cb_l_c_b_qe=shock_cb*stock_qe_l_c_b(-1) ' 
philia.append CG_cb_l_c_g_qe=shock_cg*stock_qe_l_c_g(-1)  '
philia.append totalKgain_cb_qe = CG_cb_b_b_qe +  CG_cb_b_g_qe +  CG_cb_l_k_b_qe +  CG_cb_l_k_g_qe+ CG_cb_l_c_b_qe +CG_cb_l_c_g_qe  
philia.append cumtotalKgain_cb_qe = cumtotalKgain_cb_qe(-1)+totalKgain_cb_qe

 

 'THE ECOSYSTEMIC BLOCK

'Material extraction

philia.append y_mat = mu*(y/price)/400 'eq 56.1  
philia.append mu = @recode(@date<@dateval("152"),mu_con,(mu_gr*(K_g/K) + mu_con*(K_b/K))) 'eq 56.2  
philia.append mat = @recode(@date<@dateval("152"), mat(-1), y_mat - rec) 'eq 56.3
philia.append rec = @recode(@date<@dateval("152"), rec(-1), rho*dis) 'eq 56.4
philia.append dis = @recode(@date<@dateval("152"), dis(-1), mu*(da/price/800 + zeta*dc(-1))) 'eq 56.5
philia.append k_se =@recode(@date<@dateval("152"), (K/price)/400, k_se(-1) + y_mat - dis) 'eq 56.6
philia.append wa = @recode(@date<@dateval("152"), wa(-1), dis-rec) ' eq 56.7
philia.append k_m = @recode(@date<@dateval("152"), k_m(-1), k_m(-1) + conv_m - mat) 'eq 56.8  
philia.append conv_m = @recode(@date<@dateval("152"), conv_m(-1), sigma_m(-1)*res_m(-1))  'eq 56.9
philia.append res_m = @recode(@date<@dateval("152"), res_m(-1), res_m(-1) - conv_m) 'eq 56.10

'Energy consumption 

philia.append e =@recode(@date<@dateval("152"),e(-1),  1/(1+shock_tek)*epsilon*y_r/(0.0000035)) 'eq 57.1  
philia.append er = @recode(@date<@dateval("152"), er(-1), eta*e) 'eq 57.2
philia.append en = @recode(@date<@dateval("152"), en(-1), e-er) 'eq 57.3
philia.append ed =@recode(@date<@dateval("152"), ed(-1), er + en) 'eq 57.4
philia.append k_e = @recode(@date<@dateval("152"), k_e(-1), k_e(-1) + conv_e - en) 'eq 57.5
philia.append conv_e = @recode(@date<@dateval("152"), conv_e(-1), sigma_e*res_e(-1)) 'eq 57.6

'Emissions

philia.append emis_eco = @recode(@date<@dateval("152"), emis_eco(-1), @recode((beta0 + beta*en)<(emis-emis_l)/2,(emis-emis_l)/2,(beta0 + beta*en))) 'eq 58.1
philia.append beta0 = @recode(@date<@dateval("152"),6.904820,6.904820*(1+g_beta)^(-@trend+59)) 'eq 58.1
philia.append g_beta = @recode(@date<@dateval("152"),0,0) 'eq 58.1
philia.append emis_l = @recode(@date<@dateval("157"), emis_l(-1), emis_l(-1)*(1-g_land)) 'eq 58.2
philia.append g_land = @recode(@date<@dateval("152"),0,0)  'eq 58.2
philia.append emis = @recode(@date<@dateval("157"),emis_ob, emis_eco + emis_l) 'eq 58.3 
philia.append cen = @recode(@date<@dateval("152"), cen(-1), emis) ' eq 58.4
philia.append o2 = @recode(@date<@dateval("152"), o2(-1), emis - cen) 'eq 58.5

'The carbon cycle
 
philia.append res_e = @recode(@date<@dateval("152"), res_e(-1), res_e(-1) - conv_e) 'eq 57.7
philia.append co2_at = @recode(@date<@dateval("157"), co2_at(-1), emis + phi11*co2_at(-1) + phi21*co2_up(-1)) 'eq 58.6
philia.append co2_up = @recode(@date<@dateval("157"), co2_up(-1), phi12*co2_at(-1) + phi22*co2_up(-1) + phi32*co2_lo(-1)) 'eq 58.7
philia.append co2_lo = @recode(@date<@dateval("157"), co2_lo(-1), phi23*co2_up(-1) + phi33*co2_lo(-1)) 'eq 58.8
philia.append f =@recode(@date<@dateval("157"), f(-1),  f2*@logx(co2_at/co2_at_pre,2) + f_ex) 'eq 58.9
philia.append f_ex =@recode(@date<@dateval("157"), f_ex(-1), f_ex(-1) + fex)  'eq 58.10
philia.append temp_at = @recode(@date<@dateval("157"),temp_at_ob,temp_at(-1) + t1*(f - (f2/sens)*temp_at(-1)-t2*(temp_at(-1) - temp_lo(-1)))) 'eq 58.11
philia.append temp_lo = temp_lo(-1) + t3*(temp_at(-1)-temp_lo(-1)) 'eq 58.12

'Eco-efficiency

philia.append epsilon = @recode(@date<@dateval("152"),epsilon_con,(epsilon_gr*(K_g/price/K/price) + epsilon_con*(K_b/price/K/price) )) 'eq 59.1  
philia.append beta = @recode(@date<@dateval("152"),beta_con,(beta_gr*K_g/price/(K/price)  + beta_con*K_b/price/(K/price))*(1+g_beta)^(-@trend+59)) 'eq 59.2 
philia.append eta = @recode(@date<@dateval("152"),eta_con,(eta_gr*K_g/price/(K/price) + eta_con*K_b/price/(K/price))) 'eq 59.3  
philia.append beta_gr=@recode(@date<@dateval("152"),beta_gr(-1), beta_gr(-1)*(1-impact/100*shock_tek)) 'eq 59.4
philia.append eta_gr=@recode(@date<@dateval("152"),eta_gr(-1),@recode(eta_gr(-1)*(1+impact*shock_tek)<1, eta_gr(-1)*(1+impact*shock_tek),1))  'eq 59.5
philia.append mu_gr=@recode(@date<@dateval("152"), mu_gr(-1), mu_gr(-1)*(1-impact/100*shock_tek)) 'eq 59.6
philia.append beta_con=beta_con(-1) 'ancillary
philia.append eta_con=eta_con(-1) 'ancillary
philia.append mu_con=mu_con(-1) 'ancillary
philia.append impact=@exp(k_g/k) 'ancillary
philia.append epsilon_gr=beta_gr 'ancillary
philia.append epsilon_con=beta_con 'ancillary

'Ecosystemic retroaction

philia.append depl_m = @recode(@date<@dateval("157"),0,(mat/k_m(-1))*100) 'eq 59.7 
philia.append depl_e = @recode(@date<@dateval("157"),0,(en/k_e(-1))*100) 'eq 59.8
philia.append d_t = @recode(@date<@dateval("157"), 0.028, @recode(temp_at>0,d_t(-1)+1 - 1/(1 + dam1*temp_at + dam2*temp_at^2 + dam3*temp_at^(dam4)),d_t(-1)+1 - 1/(1 + dam1*temp_at))) 'eq 59.9
 


'BIOMIMICRY-INSPIRED POSTGROWTH METRICS

'Monetary trophic flows 
philia.append T_h_w_c=0.20*C_w_m+C_w_lcc 'eq 60.1
philia.append T_h_w_k=C_w-T_h_w_c 'eq 60.2
philia.append T_h_r_c=0.20*C_r_m+C_r_lcc 'eq 60.3
philia.append T_h_r_k=C_r-T_h_r_c 'eq 60.4
philia.append T_h_r_s=S_d_r-S_d_r(-1) 'eq 60.5
philia.append T_h_w_dot=T_h_w_c+T_h_w_k 'eq 60.6
philia.append T_h_r_dot=T_h_r_c+T_h_r_k +T_h_r_s  'eq 60.7
philia.append T_c_h_w=WB_c+(1-ret_c)*P_c 'eq 61.1
philia.append T_c_b=stock_L_s_c_g*i_l_c_g+stock_L_s_c_b*i_l_c_b 'eq 61.2
philia.append T_c_dot=T_c_h_w+T_c_b 'eq 61.3
philia.append T_k_h_w=WB_k 'eq 62.1
philia.append T_k_b=i_l_k_b*stock_L_d_k_b(-1)+i_l_k_g*stock_L_d_k_g(-1)+i_cp_b*stock_CP_d_k_b(-1)+i_cp_g*stock_CP_d_k_g(-1)+i_b_g*stock_B_d_k_g(-1)+i_b_b*stock_B_d_k_b(-1) 'eq 62.2
philia.append T_k_s=div_s 'eq 62.3
philia.append T_k_dot=T_k_h_w+T_k_b 'eq 62.4
philia.append T_b_h_w=i_d*M_d_w 'eq 63.1
philia.append T_b_h_r=i_d*M_d_r 'eq 63.2
philia.append T_b_c=l_s_c 'eq 63.3
philia.append T_b_k=f_s_k 'eq 63.4
philia.append T_b_s=div_b 'eq 63.5
philia.append T_b_dot=T_b_h_w+T_b_h_r+T_b_c+T_b_k 'eq 63.6
philia.append T_s_h_r=P_s 'eq 64.1
philia.append T_s_k=e_s_k 'eq 64.2
philia.append T_s_dot=T_s_h_r+T_s_k 'eq 64.3
philia.append T_dot_h_w=T_c_h_w+T_k_h_w+T_b_h_w 'eq 65.1
philia.append T_dot_h_r=T_b_h_r+T_s_h_r 'eq 65.2
philia.append T_dot_c=T_h_w_c+T_h_r_c+T_b_c 'eq 65.3
philia.append T_dot_k= T_h_w_k+T_h_r_k+T_b_k 'eq 65.4
philia.append T_dot_b=T_c_b+T_k_b 'eq 65.5
philia.append T_dot_s=T_h_r_s+T_k_s+T_b_s 'eq 65.6
philia.append T_dot_dot=T_h_w_dot+T_h_r_dot+T_c_dot+T_k_dot+T_b_dot+T_s_dot+T_dot_h_w+T_dot_h_r+T_dot_c+T_dot_k+T_dot_b+T_dot_s  'eq 65.7
philia.append T_dot_dot_f=@recode(T_dot_dot=na, T_dot_dot(-1), T_dot_dot) 'auxiliary
 
philia.append log_01=T_dot_dot_f*(T_h_w_c/T_dot_dot_f)*@recode( T_h_w_c/T_dot_dot_f>0, log( T_h_w_c/T_dot_dot_f), 0) 'auxiliary
philia.append log_02=T_dot_dot_f*(T_h_w_k/T_dot_dot_f)*@recode(T_h_w_k/T_dot_dot_f>0, log(T_h_w_k/T_dot_dot_f), 0) 'auxiliary
philia.append log_03=T_dot_dot_f*(T_h_r_c/T_dot_dot_f)*@recode(T_h_r_c/T_dot_dot_f>0, log(T_h_r_c/T_dot_dot_f), 0) 'auxiliary
philia.append log_04=T_dot_dot_f*(T_h_r_k/T_dot_dot_f)*@recode(T_h_r_k/T_dot_dot_f>0, log(T_h_r_k/T_dot_dot_f), 0) 'auxiliary
philia.append log_05=T_dot_dot_f*(T_h_r_s/T_dot_dot_f)*@recode(T_h_r_s/T_dot_dot_f>0, log(T_h_r_s/T_dot_dot_f), 0) 'auxiliary
philia.append log_06=T_dot_dot_f*(T_c_h_w/T_dot_dot_f)*@recode(T_c_h_w/T_dot_dot_f>0, log(T_c_h_w/T_dot_dot_f), 0) 'auxiliary
philia.append log_07=T_dot_dot_f*(T_c_b/T_dot_dot_f)*@recode(T_c_b/T_dot_dot_f>0, log(T_c_b/T_dot_dot_f), 0) 'auxiliary
philia.append log_08=T_dot_dot_f*(T_k_h_w/T_dot_dot_f)*@recode(T_k_h_w/T_dot_dot_f>0, log(T_k_h_w/T_dot_dot_f), 0) 'auxiliary
philia.append log_09=T_dot_dot_f*(T_k_b/T_dot_dot_f)*@recode(T_k_b/T_dot_dot_f>0, log(T_k_b/T_dot_dot_f), 0) 'auxiliary
philia.append log_10=T_dot_dot_f*(T_k_s/T_dot_dot_f)*@recode(T_k_s/T_dot_dot_f>0, log(T_k_s/T_dot_dot_f), 0) 'auxiliary
philia.append log_11=T_dot_dot_f*(T_b_h_w/T_dot_dot_f)*@recode(T_b_h_w/T_dot_dot_f>0, log(T_b_h_w/T_dot_dot_f), 0) 'auxiliary
philia.append log_12=T_dot_dot_f*(T_b_h_r/T_dot_dot_f)*@recode(T_b_h_r/T_dot_dot_f>0, log(T_b_h_r/T_dot_dot_f), 0) 'auxiliary
philia.append log_13=T_dot_dot_f*(T_b_c/T_dot_dot_f)*@recode(T_b_c/T_dot_dot_f>0, log(T_b_c/T_dot_dot_f), 0) 'auxiliary
philia.append log_14=T_dot_dot_f*(T_b_k/T_dot_dot_f)*@recode(T_b_k/T_dot_dot_f>0, log(T_b_k/T_dot_dot_f), 0) 'auxiliary
philia.append log_15=T_dot_dot_f*(T_b_s/T_dot_dot_f)*@recode(T_b_s/T_dot_dot_f>0, log(T_b_s/T_dot_dot_f), 0) 'auxiliary
philia.append log_16=T_dot_dot_f*(T_s_h_r/T_dot_dot_f)*@recode(T_s_h_r/T_dot_dot_f>0, log(T_s_h_r/T_dot_dot_f), 0) 'auxiliary
philia.append log_17=T_dot_dot_f*(T_s_k/T_dot_dot_f)*@recode(T_s_k/T_dot_dot_f>0, log(T_s_k/T_dot_dot_f), 0) 'auxiliary
philia.append log_18=T_dot_dot_f*(T_h_w_c/T_dot_dot_f)*@recode(((T_h_w_c*T_dot_dot_f)/(T_h_w_dot*T_dot_c))>0, log((T_h_w_c*T_dot_dot_f)/(T_h_w_dot*T_dot_c)), 0) 'auxiliary
philia.append log_19=T_dot_dot_f*(T_h_w_k/T_dot_dot_f)*@recode(((T_h_w_k*T_dot_dot_f)/(T_h_w_dot*T_dot_k))>0, log((T_h_w_k*T_dot_dot_f)/(T_h_w_dot*T_dot_k)), 0) 'auxiliary
philia.append log_20=T_dot_dot_f*(T_h_r_c/T_dot_dot_f)*@recode((T_h_r_c*T_dot_dot_f)/(T_h_r_dot*T_dot_c)>0, log((T_h_r_c*T_dot_dot_f)/(T_h_r_dot*T_dot_c)), 0) 'auxiliary
philia.append log_21=T_dot_dot_f*(T_h_r_k/T_dot_dot_f)*@recode(((T_h_r_k*T_dot_dot_f)/(T_h_r_dot*T_dot_k))>0, log((T_h_r_k*T_dot_dot_f)/(T_h_r_dot*T_dot_k)), 0) 'auxiliary
philia.append log_22=T_dot_dot_f*(T_h_r_s/T_dot_dot_f)*@recode(((T_h_r_s*T_dot_dot_f)/(T_h_r_dot*T_dot_s))>0, log((T_h_r_s*T_dot_dot_f)/(T_h_r_dot*T_dot_s)), 0) 'auxiliary
philia.append log_23=T_dot_dot_f*(T_c_h_w/T_dot_dot_f)*@recode(((T_c_h_w*T_dot_dot_f)/(T_c_dot*T_dot_h_w))>0, log((T_c_h_w*T_dot_dot_f)/(T_c_dot*T_dot_h_w)), 0) 'auxiliary
philia.append log_24=T_dot_dot_f*(T_c_b/T_dot_dot_f)*@recode(((T_c_b*T_dot_dot_f)/(T_c_dot*T_dot_b))>0, log((T_c_b*T_dot_dot_f)/(T_c_dot*T_dot_b)), 0) 'auxiliary
philia.append log_25=T_dot_dot_f*(T_k_h_w/T_dot_dot_f)*@recode(((T_k_h_w*T_dot_dot_f)/(T_k_dot*T_dot_h_w))>0, log((T_k_h_w*T_dot_dot_f)/(T_k_dot*T_dot_h_w)), 0) 'auxiliary
philia.append log_26=T_dot_dot_f*(T_k_b/T_dot_dot_f)*@recode(((T_k_b*T_dot_dot_f)/(T_k_dot*T_dot_b))>0, log((T_k_b*T_dot_dot_f)/(T_k_dot*T_dot_b)), 0) 'auxiliary
philia.append log_27=T_dot_dot_f*(T_k_s/T_dot_dot_f)*@recode(((T_k_s*T_dot_dot_f)/(T_k_dot*T_dot_s))>0, log((T_k_s*T_dot_dot_f)/(T_k_dot*T_dot_s)), 0) 'auxiliary
philia.append log_28=T_dot_dot_f*(T_b_h_w/T_dot_dot_f)*@recode(((T_b_h_w*T_dot_dot_f)/(T_b_dot*T_dot_h_w))>0, log((T_b_h_w*T_dot_dot_f)/(T_b_dot*T_dot_h_w)), 0)  'auxiliary
philia.append log_29=T_dot_dot_f*(T_b_h_r/T_dot_dot_f)*@recode(((T_b_h_r*T_dot_dot_f)/(T_b_dot*T_dot_h_r))>0, log((T_b_h_r*T_dot_dot_f)/(T_b_dot*T_dot_h_r)), 0) 'auxiliary
philia.append log_30=T_dot_dot_f*(T_b_c/T_dot_dot_f)*@recode(((T_b_c*T_dot_dot_f)/(T_b_dot*T_dot_c))>0, log((T_b_c*T_dot_dot_f)/(T_b_dot*T_dot_c)), 0)  'auxiliary
philia.append log_31=T_dot_dot_f*(T_b_k/T_dot_dot_f)*@recode(((T_b_k*T_dot_dot_f)/(T_b_dot*T_dot_k))>0, log((T_b_k*T_dot_dot_f)/(T_b_dot*T_dot_k)), 0) 'auxiliary
philia.append log_32=T_dot_dot_f*(T_b_s/T_dot_dot_f)*@recode(((T_b_s*T_dot_dot_f)/(T_b_dot*T_dot_s))>0, log((T_b_s*T_dot_dot_f)/(T_b_dot*T_dot_s)), 0)  'auxiliary
philia.append log_33=T_dot_dot_f*(T_s_h_r/T_dot_dot_f)*@recode(T_s_dot*T_dot_h_r<>0,@recode(((T_s_h_r*T_dot_dot_f)/(T_s_dot*T_dot_h_r))>0, log((T_s_h_r*T_dot_dot)/(T_s_dot*T_dot_h_r)), 0),0) 'auxiliary
philia.append log_34=T_dot_dot*(T_s_k/T_dot_dot)*@recode(T_s_dot*T_dot_k<>0,@recode(((T_s_k*T_dot_dot)/(T_s_dot*T_dot_k))>0, log((T_s_k*T_dot_dot)/(T_s_dot*T_dot_k)), 0),0) 'auxiliary

'Boltzmann transformation

philia.append CAP=  -(log_01  + log_02 + log_03 + log_04 + log_05+ log_06 + log_07+log_08+log_09+log_10+log_11+log_12+log_13+log_14+log_15+log_16+log_17)  'eq 66.1
philia.append A= (log_18  + log_19 + log_20 + log_21 + log_22+ log_23 + log_24+log_25+log_26+log_27+log_28+log_29+log_30+log_31+log_32+log_33+log_34) 'eq 66.2
philia.append X= CAP-A  'eq 66.3
philia.append a_score= A/CAP 'auxiliary
philia.append FIT=@recode(a_score>0, -2.71*a_score*log(a_score), FIT(-1)) 'eq 67


'Auxiliary

'LOCAL CURRENCY SCENARIO

philia.append H_d_w_lcc=shock_lcc_c*H_d_w(-1)*(K_c/K)*EA ' 
philia.append H_d_r_lcc=shock_lcc_c*H_d_r(-1)*(K_c/K)*EA ' 
philia.append H_d_lcc=H_d_w_lcc+H_d_r_lcc ' 
philia.append H_d_w_m=H_d_w - H_d_w_lcc ' 
philia.append H_d_r_m=H_d_r - H_d_r_lcc ' 
philia.append H_d_m=H_d_w_m- H_d_r_m ' 
philia.append H_r_d_w_lcc= @recode(H_d_w_lcc>0, H_d_w_lcc/price, 0) '
philia.append H_r_d_w_m=@recode(H_d_w_m, H_d_w_m/price, 0) ' 
philia.append H_r_d_r_lcc=@recode(H_d_r_lcc>0, H_d_r_lcc/price, 0) ' 
philia.append H_r_d_r_m=@recode(H_d_r_m>0, H_d_r_m/price, 0) ' 
philia.append K_c_lcc=@recode(inv_d_c>0, K_c_g-stock_L_s_c_g-P_C*ret_c*(inv_d_c_g/inv_d_c),K_c_g-stock_L_s_c_g)  ' 
philia.append DA_lcc=(K_c_lcc/K_c_g)*DA_c_g ' 
philia.append K_c_g_m= K_c-K_c_b - K_c_lcc ' 
philia.append stock_L_s_lcc=stock_L_s_lcc(-1)+l_s_lcc '

'SOVEREIGN MONEY CREATION SCENARIO

philia.append SMC=shock_SMC*smc_val*Y(-1)  ' 
philia.append stock_SMC=stock_SMC(-1)+SMC ' 
philia.append CSDG=stock_SMC ' 
philia.append bail=@recode(be_a<0,-be_a,0) ' 
philia.append g_account  = g  + inv_s_p  + i_gb  * (stock_gb_s)  - (t  + p_p) ' 
philia.append stock_h_smc = stock_smc ' 

'ERFA

'auxiliary

philia.append stock_R_d_b=stock_R_d_b(-1)+shock_lcc*(hc*l_s_lcc(-1)) + hc*erfa(-1)  
philia.append R_d_b=stock_R_d_b-stock_R_d_b(-1) ' 
philia.append erfa = shock_erfa*(1+sroi)*hc*l_s_c_g(-1) ' 
philia.append h_lcc = 4*erfa
philia.append h=shock_h*@recode(stock_A_s_b<stock_A_d_b, stock_A_d_b, 0) ' 
philia.append stock_CBDC_d=stock_CBDC_d(-1)+h ' 

'CARE ACCOUNTING

philia.append CARE = ad_k*ecosystemic_shock*d_t(-1)*lambda*K_k_b(-1) '  

'ASSET PRICES  

philia.append p_cp_k_b=1/(1-(shock_cb*500)*i_cp_b)
philia.append p_cp_k_g= 1
philia.append p_l_k_b=1/(1-(shock_cb*500)*i_l_k_b)
philia.append p_l_k_g=1
philia.append p_l_c_b=1/(1-(shock_cb*500)*i_l_c_b)
philia.append p_l_c_g=1
philia.append p_b_b=1/(1-(shock_cb*500)*i_b_b)
philia.append p_b_g=1
philia.append p_gb=1
philia.append p_e=1


'REAL INTEREST RATES

philia.append r_i_l_k_g  = (1+i_l_k_g)/(1+pi)-1
philia.append r_i_l_k_b  = (1+i_l_k_b)/(1+pi)-1
philia.append r_i_l_c_g  =(1+i_l_c_g)/(1+pi)-1
philia.append r_i_l_c_b  = (1+i_l_c_b)/(1+pi)-1
philia.append r_i_cp_g  =(1+i_cp_g)/(1+pi)-1
philia.append r_i_cp_b  = (1+i_cp_b)/(1+pi)-1

philia.append r_i_d  =(1+i_d)/(1+pi)-1
philia.append r_i_gb  = (1+i_gb)/(1+pi)-1
philia.append r_i_b_b  = (1+i_b_b)/(1+pi)-1
philia.append r_i_b_g  =(1+i_b_g)/(1+pi)-1

'other

'philia.append omicron=omicron(-1)
'philia.append real_y=y/price 'auxiliary
'philia.append real_inv=inv/price 'auxiliary
philia.append dc = @recode(@date<@dateval("152"), dc(-1), dc(-1) + y_mat - zeta*dc(-1)) 


philia.solve
 

'this scenario activates full inflation with full cost pricing and ecosystemic shocks it is the baseline
philia.scenario "scenario 1"
smpl 230 265
smpl 150 210
ecosystemic_shock=1
shock_qe=0
shock_inf=1
'
'green assets post capital gains 
'shock_cg=0  'eq 52
'shock_cb=-0.01 'eq 52 for QE?

'equity valuation
shock_e=1 'ok

smpl @all 
'Solve the model for the current sample 
philia.solve


