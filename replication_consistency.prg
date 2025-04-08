
'NOTE: RUN THE MODEL FIRST AND CREATE THESE DIAGRAMS FROM THE BASELINE SCENARIO

' HORIZONTAL CHECKS: FLOWS

smpl 150 210
graph fig0_H_one.line c_w_0+c_r_0-(c_p_0+c_c_0+c_k_0)
fig0_H_one.addtext(t)  Line one

smpl 150 210
graph fig0_H_two.line g_0-(g_k_0+g_c_0)
fig0_H_two.addtext(t)  Line two

smpl 150 210
graph fig0_H_three.line T_0-(T_w_0+T_r_0 +T_k_0 + T_c_0)
fig0_H_three.addtext(t)  Line three


'smpl 150 210
'graph fig0_H_four.line p_p_0-(-gb_s_0-def_g_0+(inv_s_p_0-da_p_0))
'fig0_H_four.addtext(t)  Line four
'show fig0_H_four

'gb_s_0+(t_0+k_cb_s_0+f_cb_0-(i_gb_0*gb_s_0(-1)+g_0)-(inv_s_p_0-da_p_0)+p_p_0)


smpl 150 210
graph fig0_H_four.line inv_0-(inv_s_k_0+inv_s_p_0+inv_s_c_0)
fig0_H_four.addtext(t)  Line four
show fig0_H_four

'smpl 150 210
'graph fig0_H_five.line inv_0-(inv_s_k_0+inv_s_p_0+inv_s_c_0)
'fig0_H_five.addtext(t)  Line five

smpl 150 210
graph fig0_H_five.line da_0-(da_k_0+da_c_0+da_p_0)
fig0_H_five.addtext(t)  Line five

smpl 150 210
graph fig0_H_six.line wb_0-(wb_k_0+wb_c_0+wb_p_0)
fig0_H_six.addtext(t)  Line six

smpl 150 210
graph fig0_H_seven.line p_c_0-ret_c*p_c_0-(1-ret_c)*p_c_0+(p_k_0+div_k_0)-(pu_k_0+div_k_0) ' 
fig0_H_seven.addtext(t)  Line seven

smpl 150 210
graph fig0_H_eight.line p_b_flow_0-div_b_0  
fig0_H_eight.addtext(t)  Line  eight

smpl 150 210
graph fig0_H_nine.line f_cb_0+(-g_0+t_0+p_p_0-i_gb_0*gb_s_0(-1)+gb_s_0)
fig0_H_nine.addtext(t)  Line nine


smpl 150 210
graph fig0_H_ten.line div_s_0-(div_b_0(-1)+div_k_0(-1)+i_gb_0(-1)*gb_d_s_0(-1) +i_d_0*s_xs_0(-1))  ' 
fig0_H_ten.addtext(t) Line ten
 
smpl 150 210
graph fig0_H_eleven.line stock_a_s_b_0(-1)-(cb_income_0-i_l_k_b_0*stock_qe_l_k_b_0(-1)+i_l_k_g_0*stock_qe_l_k_g_0(-1)+i_l_c_b_0*stock_qe_l_c_g_0(-1)+i_b_b_0(-1)*stock_qe_b_b_0(-1)+i_b_g_0(-1)*stock_qe_b_g_0(-1)+i_cp_b_0(-1)*stock_qe_cp_b_0(-1)+i_cp_g_0(-1)*stock_qe_cp_g_0(-1))/i_e_0  '
 fig0_H_eleven.addtext(t)  Line eleven



smpl 150 210 
graph fig0_H_twelve.line  (i_l_k_b_0*l_s_k_b_0(-1)+i_l_k_g_0*l_s_k_g_0(-1)+i_b_b_0*b_s_k_b_0(-1)+i_b_g_0*b_s_k_g_0(-1)+i_cp_b_0*cp_s_k_b_0(-1)+i_cp_g_0*cp_s_k_g_0(-1))-(i_l_k_b_0*l_d_k_b_0(-1)+i_l_k_g_0*l_d_k_g_0(-1)+i_b_b_0*B_d_k_b_0(-1)+i_b_g_0*B_d_k_g_0(-1)+i_cp_b_0*CP_d_k_b_0(-1)+i_cp_g_0*CP_d_k_g_0(-1))
  fig0_H_twelve.addtext(t)  Line twelve

smpl 150 210 
graph fig0_H_thirteen.line i_d_0*d(m_d_w_0+m_d_r_0+stock_s_xs_0)-i_d_0*(d(stock_m_s_h_0))
fig0_H_thirteen.addtext(t)  Line thirteen
 
 
smpl 150 210 
graph fig0_H_fourteen.line  d(qe_t_s_0)*(stock_l_s_k_b_0+stock_l_s_k_g_0+stock_l_s_c_b_0+stock_l_s_c_g_0+stock_cp_s_k_b_0+stock_cp_s_k_g_0+stock_b_s_k_b_0+stock_b_s_k_g_0)/(stock_f_s_k_0+stock_l_s_c_0)-d(qe_t_s_0)
fig0_H_fourteen.addtext(t)  Line fourteen

smpl 150 210 
graph fig0_H_fifteen.line i_mr*(stock_H_d_m_0(-1))-(cb_cost_0-i_df*(stock_h_ex_0(-1)-stock_h_smc_0(-1)))  ' 
fig0_H_fifteen.addtext(t)  Line fifteen

smpl 150 210 
graph fig0_H_sixteen.line (i_d_0(-1)*(m_d_w_0(-1)+m_d_r_0(-1)+s_xs_0(-1)))-(i_d_0(-1)*(m_d_h_0(-1)+s_xs_0(-1)))  ' 
fig0_H_sixteen.addtext(t)  Line sixteen

smpl 150 210 
graph fig0_H_seventeen.line i_gb_0*(gb_s_0)-i_gb_0*gb_d_b_0-i_gb_0*gb_d_s_0-i_gb_0*qe_gb_0
 fig0_H_seventeen.addtext(t)  Line seventeen

' HORIZONTAL CHECKS: STOCK ADJUSTMENTS

smpl 150 210
graph fig0_HS_one.line d(stock_A_s_b_0(-1))-d((cb_income_0-(i_l_k_b_0*stock_qe_l_k_b_0(-1)+i_l_k_g_0*stock_qe_l_k_g_0(-1)+i_l_c_b_0*stock_qe_l_c_g_0(-1)+i_b_b_0(-1)*stock_qe_b_b_0(-1)+i_b_g_0(-1)*stock_qe_b_g_0(-1)+i_cp_b_0(-1)*stock_qe_cp_b_0(-1)+i_cp_g_0(-1)*stock_qe_cp_g_0(-1)+i_gb_0*stock_h_s_gb_0(-1)))/i_e_0(-1))  ' 
 fig0_HS_one.addtext(t)  Line eigtheen


smpl 150 210
graph fig0_HS_two.line f_s_k_b_0-b_d_k_b_0-l_d_k_b_0-cp_d_k_b_0+f_s_k_g_0-b_d_k_g_0-l_d_k_g_0-cp_d_k_g_0
fig0_HS_two.addtext(t)  Line ninetees

smpl 150 210
graph fig0_HS_three.line  d(m_d_w_0)+d(m_d_r_0)+d(stock_s_xs_0)-d(stock_m_s_h_0) ' 
fig0_HS_three.addtext(t)  Line twenty  
 
smpl 150 210
graph fig0_HS_four.line stock_h_d_0-stock_h_d_h_0-stock_h_d_m_0-stock_h_ex_0
fig0_HS_four.addtext(t)  Line twenty one


smpl 150 210
graph fig0_HS_five.line e_s_k_0+(gb_d_s_0-s_s_0+be_s_0+s_xs_0) ' 
 fig0_HS_five.addtext(t)  Line twenty two
 
smpl 150 210
graph fig0_HS_six.line s_d_r_0-(s_xs_0+gb_d_s_0+be_s_0+e_d_k_0)  '   
 fig0_HS_six.addtext(t)  Line twenty three
show fig0_HS_six

s_xs=(s_s-e_s_flow-be_s)-gb_d_s
smpl 150 210
 
 graph fig0_HS_seven.line d(qe_t_s_0)-(K_cb_s_0-(d(stock_A_s_b_0)+qe_gb_0 + R_d_b_0- (H_d_0-d(stock_h_d_h_0))))
fig0_HS_seven.addtext(t)  Line twenty four
 
  
smpl 150 210
graph fig0_HS_eight.line gb_s_0-gb_d_b_0-qe_gb_0-gb_d_s_0 ' 
fig0_HS_eight.addtext(t)  Line twenty five

smpl 150 210
graph fig0_HS_eleven.line be_s_0+(gb_d_s_0-s_s_0+e_d_k_0+s_xs_0) '  
fig0_HS_eleven.addtext(t)  Line twenty six

smpl 150 210
graph fig0_HS_twelve.line gb_s_0-g_0-i_gb_0*gb_s_0(-1)+t_0+p_p_0+f_cb_0+k_cb_s_0'  
fig0_HS_twelve.addtext(t)  Line twenty seven

'VERTICAL CHECKS BALANCE SHEET CONSTRAINTS

smpl 150 210
graph fig0_V_one.line (1-teta_w)*(WB_c_0+WB_p_0+WB_k_0+(1-ret_c)*P_c_0+i_d_0*M_d_w_0(-1))-c_w_0-d(v_w_0)  
fig0_V_one.addtext(t)  Column one

 
graph fig0_V_two.line (1-teta_r)*(div_s_0+ i_d_0*(M_d_r_0(-1)))-c_r_0-d(v_r_0)  
 fig0_V_two.addtext(t)  Column two


graph fig0_V_three.line gb_s_0+(t_0+k_cb_s_0+p_p_0+f_cb_0-(i_gb_0*gb_s_0(-1)+g_0))
fig0_V_three.addtext(t)  Column three


 graph fig0_V_four.line p_p_0-( C_p_0-WB_p_0+inv_s_p_0-DA_p_0)   
fig0_V_four.addtext(t)  Column four


graph fig0_V_five.line gb_s_0-(g_0+i_gb_0*gb_s_0(-1)-(t_0+p_p_0+k_cb_s_0+f_cb_0))
fig0_V_five.addtext(t)  Column five


graph fig0_V_six.line p_c_0-( (1-teta_c)*(C_c_0+(G_c_0)+inv_s_c_0-WB_c_0-(i_l_c_b_0*l_s_c_b_0(-1)+i_l_c_g_0*l_s_c_g_0(-1))-da_c_0 + h_0(-1)) )  
  fig0_V_six.addtext(t)  Column six

graph fig0_V_seven.line inv_s_c_0-ret_c*p_c_0-l_s_c_0 '  
   fig0_V_seven.addtext(t)  Column seven

graph fig0_V_eight.line p_k_0-(1-r_e_k)*(1-teta_k)*(C_k_0+G_k_0+inv_s_k_0-WB_k_0-(i_l_k_b_0*l_s_k_b_0(-1)+i_l_k_g_0*l_s_k_g_0(-1)+i_b_b_0*b_s_k_b_0(-1)+i_b_g_0*b_s_k_g_0(-1)+i_cp_b_0*cp_s_k_b_0(-1)+i_cp_g_0*cp_s_k_b_0(-1))-da_k_0) '   
    fig0_V_eight.addtext(t)  Column eight

graph fig0_V_nine.line inv_s_k_0-pu_k_0-e_s_k_0-f_s_k_0 ' 
    fig0_V_nine.addtext(t)  Column nine

graph fig0_V_ten p_b_flow_0-(i_gb_0* d(stock_GB_d_b_0(-1))+i_l_k_b_0*l_d_k_b_0(-1)+i_l_k_g_0*l_d_k_g_0(-1)+i_l_c_b_0*l_d_c_b_0(-1)+i_l_c_g_0*l_d_c_g_0(-1)+i_cp_b_0*CP_d_k_b_0(-1)+i_cp_b_0*CP_d_k_g_0(-1)+i_b_g_0*B_d_k_g_0(-1)+i_b_b_0*B_d_k_b_0(-1)+i_mr_0*(stock_H_d_m_0(-1))+i_df_0*d((stock_H_ex_0(-1)))-i_d_0(-1)*d(stock_m_s_h_0(-1))-i_e_0*d((stock_A_s_b_0(-1)))) '  
fig0_V_ten.addtext(t)  Column ten

 
smpl 150 210
graph fig0_V_eleven  be_s_0+s_xs_0-s_s_0+e_d_k_0+gb_d_s_0 ' 
 fig0_V_eleven.addtext(t)  Column eleven

graph fig0_V_twelve f_cb_0-(i_l_k_b_0*stock_qe_l_k_b_0(-2)+i_l_k_g_0*stock_qe_l_k_g_0(-2)+i_l_c_b_0*stock_qe_l_c_g_0(-2)+i_b_b_0(-1)*stock_qe_b_b_0(-2)+i_b_g_0(-1)*stock_qe_b_g_0(-2)+i_cp_b_0(-2)*stock_qe_cp_b_0(-2)+i_cp_g_0(-2)*stock_qe_cp_g_0(-2)+i_e_0*stock_a_s_b_0(-2)-i_mr_0*stock_h_d_m_0(-2)+i_df_0*(stock_h_ex_0(-2)-stock_h_smc_0(-2))) ' 
 fig0_V_twelve.addtext(t)  Column twelve
 

smpl 150 210
graph fig0_V_thirteen  K_cb_s_0-(d(stock_A_s_b_0)+d(qe_t_s_0)+qe_gb_0+R_d_b_0-(H_d_0-d(stock_h_d_h_0)))  
fig0_V_thirteen.addtext(t)  Column thirteen

smpl 150 210
graph fig0_V_fourteen p_s_0-div_b_0-div_k_0-i_gb_0*gb_d_s_0-i_d_0*s_xs_0(-1) ' 
 fig0_V_fourteen.addtext(t)  Column fourteen
 
smpl 150 210
graph fig0_V_fifteen gb_d_s_0-s_s_0+e_d_k_0+be_s_0+s_xs_0  
 fig0_V_fifteen.addtext(t)  Column fifteen

smpl 150 210
graph fig0_HIDDEN e_s_k_0-(s_s_0-(gb_d_s_0+s_xs_0+be_s_0))  
 fig0_HIDDEN.addtext(t)  Redundant equation



'MATERIAL AND ENERGY BALANCE MATRIX

smpl 153 210
graph fig0_MEBone y_mat_0-dis_0-d(k_se_0)+o2_0-(emis_0-cen_0)
fig0_MEBone.addtext(t) Column one

smpl 153 210
graph fig0_MEBtwo ed_0-(e_0)
fig0_MEBtwo.addtext(t) Column two

' PHYSICAL STOCK FLOW MATRIX

graph fig0_PSFone k_m_0-k_m_0(-1) conv_m_0+mat_0
fig0_PSFone.name(1) Final stock
fig0_PSFone.name(2) Implied value
fig0_PSFone.addtext(t) Column one
 

graph fig0_PSFtwo k_e_0-k_e_0(-1) (conv_e_0-en_0)
fig0_PSFtwo.name(1) Final stock
fig0_PSFtwo.name(2) Implied value
fig0_PSFtwo.addtext(t) Column two
 

graph fig0_PSFthree co2_at_0 (emis_0+phi11*co2_at_0(-1) + phi21*co2_up_0(-1))
fig0_PSFthree.name(1) Final stock
fig0_PSFthree.name(2) Implied value
fig0_PSFthree.addtext(t) Column three
 

smpl 153 210
graph fig0_PSFfour (k_se_0)-k_se_0(-1)-(y_mat_0-dis_0)
fig0_PSFfour.name(1) Final stock
fig0_PSFfour.name(2) Implied value
fig0_PSFfour.addtext(t) Column four

'STEADY STATE CRITERIA


'STOCK FLOW RATIOS

' VARIABLES

series yk=d(y_0/k_0) 
series cy=d(co_0/y_0)  
series iy=d(inv_0/y_0)  
series my=d(m_b_0/y_0)  
series vy=d(v_0/y_0)  
series v_wy=d(v_w_0/y_0)  
series v_ry=d(v_r_0/y_0)  
series wy=d(wb_0/y_0)  
series ydy=d((yd_r_0+yd_w_0)/y_0)  
series ck=d(co_0/k_0)  
series ik=d(inv_0/k_0) 
series mk=d(m_b_0/k_0) 
series vk=d(v_0/k_0)  
series v_wk=d(v_w_0/k_0)  
series v_rk=d(v_r_0/k_0)  
series wk=d(wb_0/k_0)  
series ydk=d((yd_r_0+yd_w_0)/k_0)  
series cv=d(co_0/v_0)  
series iv=d(inv_0/v_0)  
series mv=d(m_b_0/v_0)  
series wv=d(wb_0/v_0)  
series ydv=d((yd_r_0+yd_w_0)/v_0)
series kv=d(k_0/v_0)  
series yv=d(y_0/v_0) 

' GDP to CAPITAL STOCKS

smpl 150 210
graph fig0_ssflow_yk.line yk
fig0_ssflow_yk.axis(l) range(-0.1,0.1)
fig0_ssflow_yk.addtext(t) GDP to capital stock ratio



' SCALED BY FLOW 

smpl 150 210
graph fig0_ssflow_cy.line cy
fig0_ssflow_cy.axis(l) range(-0.1,0.1)
fig0_ssflow_cy.addtext(t) Consumption to GDP ratio


smpl 150 210
graph fig0_ssflow_iy.line iy
fig0_ssflow_iy.axis(l) range(-0.1,0.1)
fig0_ssflow_iy.addtext(t) Investment to GDP ratio


 smpl 150 210
graph fig0_ssflow_my.line my
fig0_ssflow_my.axis(l) range(-0.1,0.1)
fig0_ssflow_my.addtext(t) Banking deposits to GDP ratio


 smpl 150 210
graph fig0_ssflow_vy.line vy
fig0_ssflow_vy.axis(l) range(-0.1,0.1)
fig0_ssflow_vy.addtext(t) Financial wealth to GDP ratio


 smpl 150 210
graph fig0_ssflow_wy.line wy
fig0_ssflow_wy.axis(l) range(-0.1,0.1)
fig0_ssflow_wy.addtext(t) Macroeconomic wage bill to GDP ratio


 smpl 150 210
graph fig0_ssflow_ydy.line ydy
fig0_ssflow_ydy.axis(l) range(-0.1,0.1)
fig0_ssflow_ydy.addtext(t) Total household income to GDP ratio


' SCALED BY STOCKS

smpl 150 210
graph fig0_ssstock_ck.line ck
fig0_ssstock_ck.axis(l) range(-0.1,0.1)
fig0_ssstock_ck.addtext(t) Consumption to capital stock


smpl 150 210
graph fig0_ssstock_ik.line ik
fig0_ssstock_ik.axis(l) range(-0.1,0.1)
fig0_ssstock_ik.addtext(t) Investment to capital stock


 smpl 150 210
graph fig0_ssstock_mk.line mk
fig0_ssstock_mk.axis(l) range(-0.1,0.1)
fig0_ssstock_mk.addtext(t) Banking deposits to capital stock


smpl 150 210
graph fig0_ssstock_vk.line vk
fig0_ssstock_vk.axis(l) range(-0.1,0.1)
fig0_ssstock_vk.addtext(t) Financial wealth to capital stock


 smpl 150 210
graph fig0_ssstock_wk.line wk
fig0_ssstock_wk.axis(l) range(-0.1,0.1)
fig0_ssstock_wk.addtext(t) Macroeconomic wage bill to capital stock


 smpl 150 210
graph fig0_ssstock_ydk.line ydk
fig0_ssstock_ydk.axis(l) range(-0.1,0.1)
fig0_ssstock_ydk.addtext(t) Total household income to capital stock


' SCALED BY STOCKS OF ASSETS

smpl 150 210
graph fig0_ssstock_cv.line cv
fig0_ssstock_cv.axis(l) range(-0.1,0.1)
fig0_ssstock_cv.addtext(t) Consumption to financial wealth


smpl 150 210
graph fig0_ssstock_iv.line iv
fig0_ssstock_iv.axis(l) range(-0.1,0.1)
fig0_ssstock_iv.addtext(t) Investment to financial wealth


 smpl 150 210
graph fig0_ssstock_mv.line mv
fig0_ssstock_mv.axis(l) range(-0.1,0.1)
fig0_ssstock_mv.addtext(t) Banking deposits to financial wealth



 smpl 150 210
graph fig0_ssstock_ydv.line ydv
fig0_ssstock_ydv.axis(l) range(-0.1,0.1)
fig0_ssstock_ydv.addtext(t) Total household income to financial wealth


 smpl 150 210
graph fig0_ssstock_kv.line kv
fig0_ssstock_kv.axis(l) range(-0.1,0.1)
fig0_ssstock_kv.addtext(t) Capital stock to financial wealth


 smpl 150 210
graph fig0_ssstock_yv.line yv
fig0_ssstock_yv.axis(l) range(-0.1,0.1)
fig0_ssstock_yv.addtext(t) Capital stock to financial wealth







 


