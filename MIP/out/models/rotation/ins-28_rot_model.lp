\ Model VLSI_Design_rot
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  height
Subject To
 square_block_0: rotation_0 = 0
 square_block_12: rotation_12 = 0
 symmetry_break_x: x_21 = 0
 symmetry_break_y: y_21 = 0
 area_low: 35 height >= 1225
 area_up: 35 height <= 8575
 w_overflow_0: x_0 <= 32
 h_overflow_0: y_0 - height <= -3
 w_overflow_1: x_1 + rotation_1 <= 32
 h_overflow_1: y_1 - height - rotation_1 <= -4
 w_overflow_2: x_2 + 2 rotation_2 <= 32
 h_overflow_2: y_2 - height - 2 rotation_2 <= -5
 w_overflow_3: x_3 + 3 rotation_3 <= 32
 h_overflow_3: y_3 - height - 3 rotation_3 <= -6
 w_overflow_4: x_4 + 4 rotation_4 <= 32
 h_overflow_4: y_4 - height - 4 rotation_4 <= -7
 w_overflow_5: x_5 + 5 rotation_5 <= 32
 h_overflow_5: y_5 - height - 5 rotation_5 <= -8
 w_overflow_6: x_6 + 6 rotation_6 <= 32
 h_overflow_6: y_6 - height - 6 rotation_6 <= -9
 w_overflow_7: x_7 + 7 rotation_7 <= 32
 h_overflow_7: y_7 - height - 7 rotation_7 <= -10
 w_overflow_8: x_8 + 9 rotation_8 <= 32
 h_overflow_8: y_8 - height - 9 rotation_8 <= -12
 w_overflow_9: x_9 + 16 rotation_9 <= 32
 h_overflow_9: y_9 - height - 16 rotation_9 <= -19
 w_overflow_10: x_10 + 19 rotation_10 <= 32
 h_overflow_10: y_10 - height - 19 rotation_10 <= -22
 w_overflow_11: x_11 - rotation_11 <= 31
 h_overflow_11: y_11 - height + rotation_11 <= -3
 w_overflow_12: x_12 <= 31
 h_overflow_12: y_12 - height <= -4
 w_overflow_13: x_13 + rotation_13 <= 31
 h_overflow_13: y_13 - height - rotation_13 <= -5
 w_overflow_14: x_14 + 2 rotation_14 <= 31
 h_overflow_14: y_14 - height - 2 rotation_14 <= -6
 w_overflow_15: x_15 + 3 rotation_15 <= 31
 h_overflow_15: y_15 - height - 3 rotation_15 <= -7
 w_overflow_16: x_16 + 4 rotation_16 <= 31
 h_overflow_16: y_16 - height - 4 rotation_16 <= -8
 w_overflow_17: x_17 + 8 rotation_17 <= 31
 h_overflow_17: y_17 - height - 8 rotation_17 <= -12
 w_overflow_18: x_18 + 13 rotation_18 <= 31
 h_overflow_18: y_18 - height - 13 rotation_18 <= -17
 w_overflow_19: x_19 + 16 rotation_19 <= 31
 h_overflow_19: y_19 - height - 16 rotation_19 <= -20
 w_overflow_20: x_20 + 19 rotation_20 <= 31
 h_overflow_20: y_20 - height - 19 rotation_20 <= -23
 w_overflow_21: x_21 + 21 rotation_21 <= 21
 h_overflow_21: y_21 - height - 21 rotation_21 <= -35
 hc1_0_1: x_0 - x_1 - 35 delta_0_1_0 <= -3
 hc2_0_1: - x_0 + x_1 - 35 delta_0_1_2 + rotation_1 <= -3
 hc1_0_2: x_0 - x_2 - 35 delta_0_2_0 <= -3
 hc2_0_2: - x_0 + x_2 - 35 delta_0_2_2 + 2 rotation_2 <= -3
 hc1_0_3: x_0 - x_3 - 35 delta_0_3_0 <= -3
 hc2_0_3: - x_0 + x_3 - 35 delta_0_3_2 + 3 rotation_3 <= -3
 hc1_0_4: x_0 - x_4 - 35 delta_0_4_0 <= -3
 hc2_0_4: - x_0 + x_4 - 35 delta_0_4_2 + 4 rotation_4 <= -3
 hc1_0_5: x_0 - x_5 - 35 delta_0_5_0 <= -3
 hc2_0_5: - x_0 + x_5 - 35 delta_0_5_2 + 5 rotation_5 <= -3
 hc1_0_6: x_0 - x_6 - 35 delta_0_6_0 <= -3
 hc2_0_6: - x_0 + x_6 - 35 delta_0_6_2 + 6 rotation_6 <= -3
 hc1_0_7: x_0 - x_7 - 35 delta_0_7_0 <= -3
 hc2_0_7: - x_0 + x_7 - 35 delta_0_7_2 + 7 rotation_7 <= -3
 hc1_0_8: x_0 - x_8 - 35 delta_0_8_0 <= -3
 hc2_0_8: - x_0 + x_8 - 35 delta_0_8_2 + 9 rotation_8 <= -3
 hc1_0_9: x_0 - x_9 - 35 delta_0_9_0 <= -3
 hc2_0_9: - x_0 + x_9 - 35 delta_0_9_2 + 16 rotation_9 <= -3
 hc1_0_10: x_0 - x_10 - 35 delta_0_10_0 <= -3
 hc2_0_10: - x_0 + x_10 - 35 delta_0_10_2 + 19 rotation_10 <= -3
 hc1_0_11: x_0 - x_11 - 35 delta_0_11_0 <= -3
 hc2_0_11: - x_0 + x_11 - 35 delta_0_11_2 - rotation_11 <= -4
 hc1_0_12: x_0 - x_12 - 35 delta_0_12_0 <= -3
 hc2_0_12: - x_0 + x_12 - 35 delta_0_12_2 <= -4
 hc1_0_13: x_0 - x_13 - 35 delta_0_13_0 <= -3
 hc2_0_13: - x_0 + x_13 - 35 delta_0_13_2 + rotation_13 <= -4
 hc1_0_14: x_0 - x_14 - 35 delta_0_14_0 <= -3
 hc2_0_14: - x_0 + x_14 - 35 delta_0_14_2 + 2 rotation_14 <= -4
 hc1_0_15: x_0 - x_15 - 35 delta_0_15_0 <= -3
 hc2_0_15: - x_0 + x_15 - 35 delta_0_15_2 + 3 rotation_15 <= -4
 hc1_0_16: x_0 - x_16 - 35 delta_0_16_0 <= -3
 hc2_0_16: - x_0 + x_16 - 35 delta_0_16_2 + 4 rotation_16 <= -4
 hc1_0_17: x_0 - x_17 - 35 delta_0_17_0 <= -3
 hc2_0_17: - x_0 + x_17 - 35 delta_0_17_2 + 8 rotation_17 <= -4
 hc1_0_18: x_0 - x_18 - 35 delta_0_18_0 <= -3
 hc2_0_18: - x_0 + x_18 - 35 delta_0_18_2 + 13 rotation_18 <= -4
 hc1_0_19: x_0 - x_19 - 35 delta_0_19_0 <= -3
 hc2_0_19: - x_0 + x_19 - 35 delta_0_19_2 + 16 rotation_19 <= -4
 hc1_0_20: x_0 - x_20 - 35 delta_0_20_0 <= -3
 hc2_0_20: - x_0 + x_20 - 35 delta_0_20_2 + 19 rotation_20 <= -4
 hc1_0_21: x_0 - x_21 - 35 delta_0_21_0 <= -3
 hc2_0_21: - x_0 + x_21 - 35 delta_0_21_2 + 21 rotation_21 <= -14
 hc1_1_2: x_1 - x_2 - 35 delta_1_2_0 + rotation_1 <= -3
 hc2_1_2: - x_1 + x_2 - 35 delta_1_2_2 + 2 rotation_2 <= -3
 hc1_1_3: x_1 - x_3 - 35 delta_1_3_0 + rotation_1 <= -3
 hc2_1_3: - x_1 + x_3 - 35 delta_1_3_2 + 3 rotation_3 <= -3
 hc1_1_4: x_1 - x_4 - 35 delta_1_4_0 + rotation_1 <= -3
 hc2_1_4: - x_1 + x_4 - 35 delta_1_4_2 + 4 rotation_4 <= -3
 hc1_1_5: x_1 - x_5 - 35 delta_1_5_0 + rotation_1 <= -3
 hc2_1_5: - x_1 + x_5 - 35 delta_1_5_2 + 5 rotation_5 <= -3
 hc1_1_6: x_1 - x_6 - 35 delta_1_6_0 + rotation_1 <= -3
 hc2_1_6: - x_1 + x_6 - 35 delta_1_6_2 + 6 rotation_6 <= -3
 hc1_1_7: x_1 - x_7 - 35 delta_1_7_0 + rotation_1 <= -3
 hc2_1_7: - x_1 + x_7 - 35 delta_1_7_2 + 7 rotation_7 <= -3
 hc1_1_8: x_1 - x_8 - 35 delta_1_8_0 + rotation_1 <= -3
 hc2_1_8: - x_1 + x_8 - 35 delta_1_8_2 + 9 rotation_8 <= -3
 hc1_1_9: x_1 - x_9 - 35 delta_1_9_0 + rotation_1 <= -3
 hc2_1_9: - x_1 + x_9 - 35 delta_1_9_2 + 16 rotation_9 <= -3
 hc1_1_10: x_1 - x_10 - 35 delta_1_10_0 + rotation_1 <= -3
 hc2_1_10: - x_1 + x_10 - 35 delta_1_10_2 + 19 rotation_10 <= -3
 hc1_1_11: x_1 - x_11 - 35 delta_1_11_0 + rotation_1 <= -3
 hc2_1_11: - x_1 + x_11 - 35 delta_1_11_2 - rotation_11 <= -4
 hc1_1_12: x_1 - x_12 - 35 delta_1_12_0 + rotation_1 <= -3
 hc2_1_12: - x_1 + x_12 - 35 delta_1_12_2 <= -4
 hc1_1_13: x_1 - x_13 - 35 delta_1_13_0 + rotation_1 <= -3
 hc2_1_13: - x_1 + x_13 - 35 delta_1_13_2 + rotation_13 <= -4
 hc1_1_14: x_1 - x_14 - 35 delta_1_14_0 + rotation_1 <= -3
 hc2_1_14: - x_1 + x_14 - 35 delta_1_14_2 + 2 rotation_14 <= -4
 hc1_1_15: x_1 - x_15 - 35 delta_1_15_0 + rotation_1 <= -3
 hc2_1_15: - x_1 + x_15 - 35 delta_1_15_2 + 3 rotation_15 <= -4
 hc1_1_16: x_1 - x_16 - 35 delta_1_16_0 + rotation_1 <= -3
 hc2_1_16: - x_1 + x_16 - 35 delta_1_16_2 + 4 rotation_16 <= -4
 hc1_1_17: x_1 - x_17 - 35 delta_1_17_0 + rotation_1 <= -3
 hc2_1_17: - x_1 + x_17 - 35 delta_1_17_2 + 8 rotation_17 <= -4
 hc1_1_18: x_1 - x_18 - 35 delta_1_18_0 + rotation_1 <= -3
 hc2_1_18: - x_1 + x_18 - 35 delta_1_18_2 + 13 rotation_18 <= -4
 hc1_1_19: x_1 - x_19 - 35 delta_1_19_0 + rotation_1 <= -3
 hc2_1_19: - x_1 + x_19 - 35 delta_1_19_2 + 16 rotation_19 <= -4
 hc1_1_20: x_1 - x_20 - 35 delta_1_20_0 + rotation_1 <= -3
 hc2_1_20: - x_1 + x_20 - 35 delta_1_20_2 + 19 rotation_20 <= -4
 hc1_1_21: x_1 - x_21 - 35 delta_1_21_0 + rotation_1 <= -3
 hc2_1_21: - x_1 + x_21 - 35 delta_1_21_2 + 21 rotation_21 <= -14
 hc1_2_3: x_2 - x_3 - 35 delta_2_3_0 + 2 rotation_2 <= -3
 hc2_2_3: - x_2 + x_3 - 35 delta_2_3_2 + 3 rotation_3 <= -3
 hc1_2_4: x_2 - x_4 - 35 delta_2_4_0 + 2 rotation_2 <= -3
 hc2_2_4: - x_2 + x_4 - 35 delta_2_4_2 + 4 rotation_4 <= -3
 hc1_2_5: x_2 - x_5 - 35 delta_2_5_0 + 2 rotation_2 <= -3
 hc2_2_5: - x_2 + x_5 - 35 delta_2_5_2 + 5 rotation_5 <= -3
 hc1_2_6: x_2 - x_6 - 35 delta_2_6_0 + 2 rotation_2 <= -3
 hc2_2_6: - x_2 + x_6 - 35 delta_2_6_2 + 6 rotation_6 <= -3
 hc1_2_7: x_2 - x_7 - 35 delta_2_7_0 + 2 rotation_2 <= -3
 hc2_2_7: - x_2 + x_7 - 35 delta_2_7_2 + 7 rotation_7 <= -3
 hc1_2_8: x_2 - x_8 - 35 delta_2_8_0 + 2 rotation_2 <= -3
 hc2_2_8: - x_2 + x_8 - 35 delta_2_8_2 + 9 rotation_8 <= -3
 hc1_2_9: x_2 - x_9 - 35 delta_2_9_0 + 2 rotation_2 <= -3
 hc2_2_9: - x_2 + x_9 - 35 delta_2_9_2 + 16 rotation_9 <= -3
 hc1_2_10: x_2 - x_10 - 35 delta_2_10_0 + 2 rotation_2 <= -3
 hc2_2_10: - x_2 + x_10 - 35 delta_2_10_2 + 19 rotation_10 <= -3
 hc1_2_11: x_2 - x_11 - 35 delta_2_11_0 + 2 rotation_2 <= -3
 hc2_2_11: - x_2 + x_11 - 35 delta_2_11_2 - rotation_11 <= -4
 hc1_2_12: x_2 - x_12 - 35 delta_2_12_0 + 2 rotation_2 <= -3
 hc2_2_12: - x_2 + x_12 - 35 delta_2_12_2 <= -4
 hc1_2_13: x_2 - x_13 - 35 delta_2_13_0 + 2 rotation_2 <= -3
 hc2_2_13: - x_2 + x_13 - 35 delta_2_13_2 + rotation_13 <= -4
 hc1_2_14: x_2 - x_14 - 35 delta_2_14_0 + 2 rotation_2 <= -3
 hc2_2_14: - x_2 + x_14 - 35 delta_2_14_2 + 2 rotation_14 <= -4
 hc1_2_15: x_2 - x_15 - 35 delta_2_15_0 + 2 rotation_2 <= -3
 hc2_2_15: - x_2 + x_15 - 35 delta_2_15_2 + 3 rotation_15 <= -4
 hc1_2_16: x_2 - x_16 - 35 delta_2_16_0 + 2 rotation_2 <= -3
 hc2_2_16: - x_2 + x_16 - 35 delta_2_16_2 + 4 rotation_16 <= -4
 hc1_2_17: x_2 - x_17 - 35 delta_2_17_0 + 2 rotation_2 <= -3
 hc2_2_17: - x_2 + x_17 - 35 delta_2_17_2 + 8 rotation_17 <= -4
 hc1_2_18: x_2 - x_18 - 35 delta_2_18_0 + 2 rotation_2 <= -3
 hc2_2_18: - x_2 + x_18 - 35 delta_2_18_2 + 13 rotation_18 <= -4
 hc1_2_19: x_2 - x_19 - 35 delta_2_19_0 + 2 rotation_2 <= -3
 hc2_2_19: - x_2 + x_19 - 35 delta_2_19_2 + 16 rotation_19 <= -4
 hc1_2_20: x_2 - x_20 - 35 delta_2_20_0 + 2 rotation_2 <= -3
 hc2_2_20: - x_2 + x_20 - 35 delta_2_20_2 + 19 rotation_20 <= -4
 hc1_2_21: x_2 - x_21 - 35 delta_2_21_0 + 2 rotation_2 <= -3
 hc2_2_21: - x_2 + x_21 - 35 delta_2_21_2 + 21 rotation_21 <= -14
 hc1_3_4: x_3 - x_4 - 35 delta_3_4_0 + 3 rotation_3 <= -3
 hc2_3_4: - x_3 + x_4 - 35 delta_3_4_2 + 4 rotation_4 <= -3
 hc1_3_5: x_3 - x_5 - 35 delta_3_5_0 + 3 rotation_3 <= -3
 hc2_3_5: - x_3 + x_5 - 35 delta_3_5_2 + 5 rotation_5 <= -3
 hc1_3_6: x_3 - x_6 - 35 delta_3_6_0 + 3 rotation_3 <= -3
 hc2_3_6: - x_3 + x_6 - 35 delta_3_6_2 + 6 rotation_6 <= -3
 hc1_3_7: x_3 - x_7 - 35 delta_3_7_0 + 3 rotation_3 <= -3
 hc2_3_7: - x_3 + x_7 - 35 delta_3_7_2 + 7 rotation_7 <= -3
 hc1_3_8: x_3 - x_8 - 35 delta_3_8_0 + 3 rotation_3 <= -3
 hc2_3_8: - x_3 + x_8 - 35 delta_3_8_2 + 9 rotation_8 <= -3
 hc1_3_9: x_3 - x_9 - 35 delta_3_9_0 + 3 rotation_3 <= -3
 hc2_3_9: - x_3 + x_9 - 35 delta_3_9_2 + 16 rotation_9 <= -3
 hc1_3_10: x_3 - x_10 - 35 delta_3_10_0 + 3 rotation_3 <= -3
 hc2_3_10: - x_3 + x_10 - 35 delta_3_10_2 + 19 rotation_10 <= -3
 hc1_3_11: x_3 - x_11 - 35 delta_3_11_0 + 3 rotation_3 <= -3
 hc2_3_11: - x_3 + x_11 - 35 delta_3_11_2 - rotation_11 <= -4
 hc1_3_12: x_3 - x_12 - 35 delta_3_12_0 + 3 rotation_3 <= -3
 hc2_3_12: - x_3 + x_12 - 35 delta_3_12_2 <= -4
 hc1_3_13: x_3 - x_13 - 35 delta_3_13_0 + 3 rotation_3 <= -3
 hc2_3_13: - x_3 + x_13 - 35 delta_3_13_2 + rotation_13 <= -4
 hc1_3_14: x_3 - x_14 - 35 delta_3_14_0 + 3 rotation_3 <= -3
 hc2_3_14: - x_3 + x_14 - 35 delta_3_14_2 + 2 rotation_14 <= -4
 hc1_3_15: x_3 - x_15 - 35 delta_3_15_0 + 3 rotation_3 <= -3
 hc2_3_15: - x_3 + x_15 - 35 delta_3_15_2 + 3 rotation_15 <= -4
 hc1_3_16: x_3 - x_16 - 35 delta_3_16_0 + 3 rotation_3 <= -3
 hc2_3_16: - x_3 + x_16 - 35 delta_3_16_2 + 4 rotation_16 <= -4
 hc1_3_17: x_3 - x_17 - 35 delta_3_17_0 + 3 rotation_3 <= -3
 hc2_3_17: - x_3 + x_17 - 35 delta_3_17_2 + 8 rotation_17 <= -4
 hc1_3_18: x_3 - x_18 - 35 delta_3_18_0 + 3 rotation_3 <= -3
 hc2_3_18: - x_3 + x_18 - 35 delta_3_18_2 + 13 rotation_18 <= -4
 hc1_3_19: x_3 - x_19 - 35 delta_3_19_0 + 3 rotation_3 <= -3
 hc2_3_19: - x_3 + x_19 - 35 delta_3_19_2 + 16 rotation_19 <= -4
 hc1_3_20: x_3 - x_20 - 35 delta_3_20_0 + 3 rotation_3 <= -3
 hc2_3_20: - x_3 + x_20 - 35 delta_3_20_2 + 19 rotation_20 <= -4
 hc1_3_21: x_3 - x_21 - 35 delta_3_21_0 + 3 rotation_3 <= -3
 hc2_3_21: - x_3 + x_21 - 35 delta_3_21_2 + 21 rotation_21 <= -14
 hc1_4_5: x_4 - x_5 - 35 delta_4_5_0 + 4 rotation_4 <= -3
 hc2_4_5: - x_4 + x_5 - 35 delta_4_5_2 + 5 rotation_5 <= -3
 hc1_4_6: x_4 - x_6 - 35 delta_4_6_0 + 4 rotation_4 <= -3
 hc2_4_6: - x_4 + x_6 - 35 delta_4_6_2 + 6 rotation_6 <= -3
 hc1_4_7: x_4 - x_7 - 35 delta_4_7_0 + 4 rotation_4 <= -3
 hc2_4_7: - x_4 + x_7 - 35 delta_4_7_2 + 7 rotation_7 <= -3
 hc1_4_8: x_4 - x_8 - 35 delta_4_8_0 + 4 rotation_4 <= -3
 hc2_4_8: - x_4 + x_8 - 35 delta_4_8_2 + 9 rotation_8 <= -3
 hc1_4_9: x_4 - x_9 - 35 delta_4_9_0 + 4 rotation_4 <= -3
 hc2_4_9: - x_4 + x_9 - 35 delta_4_9_2 + 16 rotation_9 <= -3
 hc1_4_10: x_4 - x_10 - 35 delta_4_10_0 + 4 rotation_4 <= -3
 hc2_4_10: - x_4 + x_10 - 35 delta_4_10_2 + 19 rotation_10 <= -3
 hc1_4_11: x_4 - x_11 - 35 delta_4_11_0 + 4 rotation_4 <= -3
 hc2_4_11: - x_4 + x_11 - 35 delta_4_11_2 - rotation_11 <= -4
 hc1_4_12: x_4 - x_12 - 35 delta_4_12_0 + 4 rotation_4 <= -3
 hc2_4_12: - x_4 + x_12 - 35 delta_4_12_2 <= -4
 hc1_4_13: x_4 - x_13 - 35 delta_4_13_0 + 4 rotation_4 <= -3
 hc2_4_13: - x_4 + x_13 - 35 delta_4_13_2 + rotation_13 <= -4
 hc1_4_14: x_4 - x_14 - 35 delta_4_14_0 + 4 rotation_4 <= -3
 hc2_4_14: - x_4 + x_14 - 35 delta_4_14_2 + 2 rotation_14 <= -4
 hc1_4_15: x_4 - x_15 - 35 delta_4_15_0 + 4 rotation_4 <= -3
 hc2_4_15: - x_4 + x_15 - 35 delta_4_15_2 + 3 rotation_15 <= -4
 hc1_4_16: x_4 - x_16 - 35 delta_4_16_0 + 4 rotation_4 <= -3
 hc2_4_16: - x_4 + x_16 - 35 delta_4_16_2 + 4 rotation_16 <= -4
 hc1_4_17: x_4 - x_17 - 35 delta_4_17_0 + 4 rotation_4 <= -3
 hc2_4_17: - x_4 + x_17 - 35 delta_4_17_2 + 8 rotation_17 <= -4
 hc1_4_18: x_4 - x_18 - 35 delta_4_18_0 + 4 rotation_4 <= -3
 hc2_4_18: - x_4 + x_18 - 35 delta_4_18_2 + 13 rotation_18 <= -4
 hc1_4_19: x_4 - x_19 - 35 delta_4_19_0 + 4 rotation_4 <= -3
 hc2_4_19: - x_4 + x_19 - 35 delta_4_19_2 + 16 rotation_19 <= -4
 hc1_4_20: x_4 - x_20 - 35 delta_4_20_0 + 4 rotation_4 <= -3
 hc2_4_20: - x_4 + x_20 - 35 delta_4_20_2 + 19 rotation_20 <= -4
 hc1_4_21: x_4 - x_21 - 35 delta_4_21_0 + 4 rotation_4 <= -3
 hc2_4_21: - x_4 + x_21 - 35 delta_4_21_2 + 21 rotation_21 <= -14
 hc1_5_6: x_5 - x_6 - 35 delta_5_6_0 + 5 rotation_5 <= -3
 hc2_5_6: - x_5 + x_6 - 35 delta_5_6_2 + 6 rotation_6 <= -3
 hc1_5_7: x_5 - x_7 - 35 delta_5_7_0 + 5 rotation_5 <= -3
 hc2_5_7: - x_5 + x_7 - 35 delta_5_7_2 + 7 rotation_7 <= -3
 hc1_5_8: x_5 - x_8 - 35 delta_5_8_0 + 5 rotation_5 <= -3
 hc2_5_8: - x_5 + x_8 - 35 delta_5_8_2 + 9 rotation_8 <= -3
 hc1_5_9: x_5 - x_9 - 35 delta_5_9_0 + 5 rotation_5 <= -3
 hc2_5_9: - x_5 + x_9 - 35 delta_5_9_2 + 16 rotation_9 <= -3
 hc1_5_10: x_5 - x_10 - 35 delta_5_10_0 + 5 rotation_5 <= -3
 hc2_5_10: - x_5 + x_10 - 35 delta_5_10_2 + 19 rotation_10 <= -3
 hc1_5_11: x_5 - x_11 - 35 delta_5_11_0 + 5 rotation_5 <= -3
 hc2_5_11: - x_5 + x_11 - 35 delta_5_11_2 - rotation_11 <= -4
 hc1_5_12: x_5 - x_12 - 35 delta_5_12_0 + 5 rotation_5 <= -3
 hc2_5_12: - x_5 + x_12 - 35 delta_5_12_2 <= -4
 hc1_5_13: x_5 - x_13 - 35 delta_5_13_0 + 5 rotation_5 <= -3
 hc2_5_13: - x_5 + x_13 - 35 delta_5_13_2 + rotation_13 <= -4
 hc1_5_14: x_5 - x_14 - 35 delta_5_14_0 + 5 rotation_5 <= -3
 hc2_5_14: - x_5 + x_14 - 35 delta_5_14_2 + 2 rotation_14 <= -4
 hc1_5_15: x_5 - x_15 - 35 delta_5_15_0 + 5 rotation_5 <= -3
 hc2_5_15: - x_5 + x_15 - 35 delta_5_15_2 + 3 rotation_15 <= -4
 hc1_5_16: x_5 - x_16 - 35 delta_5_16_0 + 5 rotation_5 <= -3
 hc2_5_16: - x_5 + x_16 - 35 delta_5_16_2 + 4 rotation_16 <= -4
 hc1_5_17: x_5 - x_17 - 35 delta_5_17_0 + 5 rotation_5 <= -3
 hc2_5_17: - x_5 + x_17 - 35 delta_5_17_2 + 8 rotation_17 <= -4
 hc1_5_18: x_5 - x_18 - 35 delta_5_18_0 + 5 rotation_5 <= -3
 hc2_5_18: - x_5 + x_18 - 35 delta_5_18_2 + 13 rotation_18 <= -4
 hc1_5_19: x_5 - x_19 - 35 delta_5_19_0 + 5 rotation_5 <= -3
 hc2_5_19: - x_5 + x_19 - 35 delta_5_19_2 + 16 rotation_19 <= -4
 hc1_5_20: x_5 - x_20 - 35 delta_5_20_0 + 5 rotation_5 <= -3
 hc2_5_20: - x_5 + x_20 - 35 delta_5_20_2 + 19 rotation_20 <= -4
 hc1_5_21: x_5 - x_21 - 35 delta_5_21_0 + 5 rotation_5 <= -3
 hc2_5_21: - x_5 + x_21 - 35 delta_5_21_2 + 21 rotation_21 <= -14
 hc1_6_7: x_6 - x_7 - 35 delta_6_7_0 + 6 rotation_6 <= -3
 hc2_6_7: - x_6 + x_7 - 35 delta_6_7_2 + 7 rotation_7 <= -3
 hc1_6_8: x_6 - x_8 - 35 delta_6_8_0 + 6 rotation_6 <= -3
 hc2_6_8: - x_6 + x_8 - 35 delta_6_8_2 + 9 rotation_8 <= -3
 hc1_6_9: x_6 - x_9 - 35 delta_6_9_0 + 6 rotation_6 <= -3
 hc2_6_9: - x_6 + x_9 - 35 delta_6_9_2 + 16 rotation_9 <= -3
 hc1_6_10: x_6 - x_10 - 35 delta_6_10_0 + 6 rotation_6 <= -3
 hc2_6_10: - x_6 + x_10 - 35 delta_6_10_2 + 19 rotation_10 <= -3
 hc1_6_11: x_6 - x_11 - 35 delta_6_11_0 + 6 rotation_6 <= -3
 hc2_6_11: - x_6 + x_11 - 35 delta_6_11_2 - rotation_11 <= -4
 hc1_6_12: x_6 - x_12 - 35 delta_6_12_0 + 6 rotation_6 <= -3
 hc2_6_12: - x_6 + x_12 - 35 delta_6_12_2 <= -4
 hc1_6_13: x_6 - x_13 - 35 delta_6_13_0 + 6 rotation_6 <= -3
 hc2_6_13: - x_6 + x_13 - 35 delta_6_13_2 + rotation_13 <= -4
 hc1_6_14: x_6 - x_14 - 35 delta_6_14_0 + 6 rotation_6 <= -3
 hc2_6_14: - x_6 + x_14 - 35 delta_6_14_2 + 2 rotation_14 <= -4
 hc1_6_15: x_6 - x_15 - 35 delta_6_15_0 + 6 rotation_6 <= -3
 hc2_6_15: - x_6 + x_15 - 35 delta_6_15_2 + 3 rotation_15 <= -4
 hc1_6_16: x_6 - x_16 - 35 delta_6_16_0 + 6 rotation_6 <= -3
 hc2_6_16: - x_6 + x_16 - 35 delta_6_16_2 + 4 rotation_16 <= -4
 hc1_6_17: x_6 - x_17 - 35 delta_6_17_0 + 6 rotation_6 <= -3
 hc2_6_17: - x_6 + x_17 - 35 delta_6_17_2 + 8 rotation_17 <= -4
 hc1_6_18: x_6 - x_18 - 35 delta_6_18_0 + 6 rotation_6 <= -3
 hc2_6_18: - x_6 + x_18 - 35 delta_6_18_2 + 13 rotation_18 <= -4
 hc1_6_19: x_6 - x_19 - 35 delta_6_19_0 + 6 rotation_6 <= -3
 hc2_6_19: - x_6 + x_19 - 35 delta_6_19_2 + 16 rotation_19 <= -4
 hc1_6_20: x_6 - x_20 - 35 delta_6_20_0 + 6 rotation_6 <= -3
 hc2_6_20: - x_6 + x_20 - 35 delta_6_20_2 + 19 rotation_20 <= -4
 hc1_6_21: x_6 - x_21 - 35 delta_6_21_0 + 6 rotation_6 <= -3
 hc2_6_21: - x_6 + x_21 - 35 delta_6_21_2 + 21 rotation_21 <= -14
 hc1_7_8: x_7 - x_8 - 35 delta_7_8_0 + 7 rotation_7 <= -3
 hc2_7_8: - x_7 + x_8 - 35 delta_7_8_2 + 9 rotation_8 <= -3
 hc1_7_9: x_7 - x_9 - 35 delta_7_9_0 + 7 rotation_7 <= -3
 hc2_7_9: - x_7 + x_9 - 35 delta_7_9_2 + 16 rotation_9 <= -3
 hc1_7_10: x_7 - x_10 - 35 delta_7_10_0 + 7 rotation_7 <= -3
 hc2_7_10: - x_7 + x_10 - 35 delta_7_10_2 + 19 rotation_10 <= -3
 hc1_7_11: x_7 - x_11 - 35 delta_7_11_0 + 7 rotation_7 <= -3
 hc2_7_11: - x_7 + x_11 - 35 delta_7_11_2 - rotation_11 <= -4
 hc1_7_12: x_7 - x_12 - 35 delta_7_12_0 + 7 rotation_7 <= -3
 hc2_7_12: - x_7 + x_12 - 35 delta_7_12_2 <= -4
 hc1_7_13: x_7 - x_13 - 35 delta_7_13_0 + 7 rotation_7 <= -3
 hc2_7_13: - x_7 + x_13 - 35 delta_7_13_2 + rotation_13 <= -4
 hc1_7_14: x_7 - x_14 - 35 delta_7_14_0 + 7 rotation_7 <= -3
 hc2_7_14: - x_7 + x_14 - 35 delta_7_14_2 + 2 rotation_14 <= -4
 hc1_7_15: x_7 - x_15 - 35 delta_7_15_0 + 7 rotation_7 <= -3
 hc2_7_15: - x_7 + x_15 - 35 delta_7_15_2 + 3 rotation_15 <= -4
 hc1_7_16: x_7 - x_16 - 35 delta_7_16_0 + 7 rotation_7 <= -3
 hc2_7_16: - x_7 + x_16 - 35 delta_7_16_2 + 4 rotation_16 <= -4
 hc1_7_17: x_7 - x_17 - 35 delta_7_17_0 + 7 rotation_7 <= -3
 hc2_7_17: - x_7 + x_17 - 35 delta_7_17_2 + 8 rotation_17 <= -4
 hc1_7_18: x_7 - x_18 - 35 delta_7_18_0 + 7 rotation_7 <= -3
 hc2_7_18: - x_7 + x_18 - 35 delta_7_18_2 + 13 rotation_18 <= -4
 hc1_7_19: x_7 - x_19 - 35 delta_7_19_0 + 7 rotation_7 <= -3
 hc2_7_19: - x_7 + x_19 - 35 delta_7_19_2 + 16 rotation_19 <= -4
 hc1_7_20: x_7 - x_20 - 35 delta_7_20_0 + 7 rotation_7 <= -3
 hc2_7_20: - x_7 + x_20 - 35 delta_7_20_2 + 19 rotation_20 <= -4
 hc1_7_21: x_7 - x_21 - 35 delta_7_21_0 + 7 rotation_7 <= -3
 hc2_7_21: - x_7 + x_21 - 35 delta_7_21_2 + 21 rotation_21 <= -14
 hc1_8_9: x_8 - x_9 - 35 delta_8_9_0 + 9 rotation_8 <= -3
 hc2_8_9: - x_8 + x_9 - 35 delta_8_9_2 + 16 rotation_9 <= -3
 hc1_8_10: x_8 - x_10 - 35 delta_8_10_0 + 9 rotation_8 <= -3
 hc2_8_10: - x_8 + x_10 - 35 delta_8_10_2 + 19 rotation_10 <= -3
 hc1_8_11: x_8 - x_11 - 35 delta_8_11_0 + 9 rotation_8 <= -3
 hc2_8_11: - x_8 + x_11 - 35 delta_8_11_2 - rotation_11 <= -4
 hc1_8_12: x_8 - x_12 - 35 delta_8_12_0 + 9 rotation_8 <= -3
 hc2_8_12: - x_8 + x_12 - 35 delta_8_12_2 <= -4
 hc1_8_13: x_8 - x_13 - 35 delta_8_13_0 + 9 rotation_8 <= -3
 hc2_8_13: - x_8 + x_13 - 35 delta_8_13_2 + rotation_13 <= -4
 hc1_8_14: x_8 - x_14 - 35 delta_8_14_0 + 9 rotation_8 <= -3
 hc2_8_14: - x_8 + x_14 - 35 delta_8_14_2 + 2 rotation_14 <= -4
 hc1_8_15: x_8 - x_15 - 35 delta_8_15_0 + 9 rotation_8 <= -3
 hc2_8_15: - x_8 + x_15 - 35 delta_8_15_2 + 3 rotation_15 <= -4
 hc1_8_16: x_8 - x_16 - 35 delta_8_16_0 + 9 rotation_8 <= -3
 hc2_8_16: - x_8 + x_16 - 35 delta_8_16_2 + 4 rotation_16 <= -4
 hc1_8_17: x_8 - x_17 - 35 delta_8_17_0 + 9 rotation_8 <= -3
 hc2_8_17: - x_8 + x_17 - 35 delta_8_17_2 + 8 rotation_17 <= -4
 hc1_8_18: x_8 - x_18 - 35 delta_8_18_0 + 9 rotation_8 <= -3
 hc2_8_18: - x_8 + x_18 - 35 delta_8_18_2 + 13 rotation_18 <= -4
 hc1_8_19: x_8 - x_19 - 35 delta_8_19_0 + 9 rotation_8 <= -3
 hc2_8_19: - x_8 + x_19 - 35 delta_8_19_2 + 16 rotation_19 <= -4
 hc1_8_20: x_8 - x_20 - 35 delta_8_20_0 + 9 rotation_8 <= -3
 hc2_8_20: - x_8 + x_20 - 35 delta_8_20_2 + 19 rotation_20 <= -4
 hc1_8_21: x_8 - x_21 - 35 delta_8_21_0 + 9 rotation_8 <= -3
 hc2_8_21: - x_8 + x_21 - 35 delta_8_21_2 + 21 rotation_21 <= -14
 hc1_9_10: x_9 - x_10 - 35 delta_9_10_0 + 16 rotation_9 <= -3
 hc2_9_10: - x_9 + x_10 - 35 delta_9_10_2 + 19 rotation_10 <= -3
 hc1_9_11: x_9 - x_11 - 35 delta_9_11_0 + 16 rotation_9 <= -3
 hc2_9_11: - x_9 + x_11 - 35 delta_9_11_2 - rotation_11 <= -4
 hc1_9_12: x_9 - x_12 - 35 delta_9_12_0 + 16 rotation_9 <= -3
 hc2_9_12: - x_9 + x_12 - 35 delta_9_12_2 <= -4
 hc1_9_13: x_9 - x_13 - 35 delta_9_13_0 + 16 rotation_9 <= -3
 hc2_9_13: - x_9 + x_13 - 35 delta_9_13_2 + rotation_13 <= -4
 hc1_9_14: x_9 - x_14 - 35 delta_9_14_0 + 16 rotation_9 <= -3
 hc2_9_14: - x_9 + x_14 - 35 delta_9_14_2 + 2 rotation_14 <= -4
 hc1_9_15: x_9 - x_15 - 35 delta_9_15_0 + 16 rotation_9 <= -3
 hc2_9_15: - x_9 + x_15 - 35 delta_9_15_2 + 3 rotation_15 <= -4
 hc1_9_16: x_9 - x_16 - 35 delta_9_16_0 + 16 rotation_9 <= -3
 hc2_9_16: - x_9 + x_16 - 35 delta_9_16_2 + 4 rotation_16 <= -4
 hc1_9_17: x_9 - x_17 - 35 delta_9_17_0 + 16 rotation_9 <= -3
 hc2_9_17: - x_9 + x_17 - 35 delta_9_17_2 + 8 rotation_17 <= -4
 hc1_9_18: x_9 - x_18 - 35 delta_9_18_0 + 16 rotation_9 <= -3
 hc2_9_18: - x_9 + x_18 - 35 delta_9_18_2 + 13 rotation_18 <= -4
 hc1_9_19: x_9 - x_19 - 35 delta_9_19_0 + 16 rotation_9 <= -3
 hc2_9_19: - x_9 + x_19 - 35 delta_9_19_2 + 16 rotation_19 <= -4
 hc1_9_20: x_9 - x_20 - 35 delta_9_20_0 + 16 rotation_9 <= -3
 hc2_9_20: - x_9 + x_20 - 35 delta_9_20_2 + 19 rotation_20 <= -4
 hc1_9_21: x_9 - x_21 - 35 delta_9_21_0 + 16 rotation_9 <= -3
 hc2_9_21: - x_9 + x_21 - 35 delta_9_21_2 + 21 rotation_21 <= -14
 hc1_10_11: x_10 - x_11 - 35 delta_10_11_0 + 19 rotation_10 <= -3
 hc2_10_11: - x_10 + x_11 - 35 delta_10_11_2 - rotation_11 <= -4
 hc1_10_12: x_10 - x_12 - 35 delta_10_12_0 + 19 rotation_10 <= -3
 hc2_10_12: - x_10 + x_12 - 35 delta_10_12_2 <= -4
 hc1_10_13: x_10 - x_13 - 35 delta_10_13_0 + 19 rotation_10 <= -3
 hc2_10_13: - x_10 + x_13 - 35 delta_10_13_2 + rotation_13 <= -4
 hc1_10_14: x_10 - x_14 - 35 delta_10_14_0 + 19 rotation_10 <= -3
 hc2_10_14: - x_10 + x_14 - 35 delta_10_14_2 + 2 rotation_14 <= -4
 hc1_10_15: x_10 - x_15 - 35 delta_10_15_0 + 19 rotation_10 <= -3
 hc2_10_15: - x_10 + x_15 - 35 delta_10_15_2 + 3 rotation_15 <= -4
 hc1_10_16: x_10 - x_16 - 35 delta_10_16_0 + 19 rotation_10 <= -3
 hc2_10_16: - x_10 + x_16 - 35 delta_10_16_2 + 4 rotation_16 <= -4
 hc1_10_17: x_10 - x_17 - 35 delta_10_17_0 + 19 rotation_10 <= -3
 hc2_10_17: - x_10 + x_17 - 35 delta_10_17_2 + 8 rotation_17 <= -4
 hc1_10_18: x_10 - x_18 - 35 delta_10_18_0 + 19 rotation_10 <= -3
 hc2_10_18: - x_10 + x_18 - 35 delta_10_18_2 + 13 rotation_18 <= -4
 hc1_10_19: x_10 - x_19 - 35 delta_10_19_0 + 19 rotation_10 <= -3
 hc2_10_19: - x_10 + x_19 - 35 delta_10_19_2 + 16 rotation_19 <= -4
 hc1_10_20: x_10 - x_20 - 35 delta_10_20_0 + 19 rotation_10 <= -3
 hc2_10_20: - x_10 + x_20 - 35 delta_10_20_2 + 19 rotation_20 <= -4
 hc1_10_21: x_10 - x_21 - 35 delta_10_21_0 + 19 rotation_10 <= -3
 hc2_10_21: - x_10 + x_21 - 35 delta_10_21_2 + 21 rotation_21 <= -14
 hc1_11_12: x_11 - x_12 - 35 delta_11_12_0 - rotation_11 <= -4
 hc2_11_12: - x_11 + x_12 - 35 delta_11_12_2 <= -4
 hc1_11_13: x_11 - x_13 - 35 delta_11_13_0 - rotation_11 <= -4
 hc2_11_13: - x_11 + x_13 - 35 delta_11_13_2 + rotation_13 <= -4
 hc1_11_14: x_11 - x_14 - 35 delta_11_14_0 - rotation_11 <= -4
 hc2_11_14: - x_11 + x_14 - 35 delta_11_14_2 + 2 rotation_14 <= -4
 hc1_11_15: x_11 - x_15 - 35 delta_11_15_0 - rotation_11 <= -4
 hc2_11_15: - x_11 + x_15 - 35 delta_11_15_2 + 3 rotation_15 <= -4
 hc1_11_16: x_11 - x_16 - 35 delta_11_16_0 - rotation_11 <= -4
 hc2_11_16: - x_11 + x_16 - 35 delta_11_16_2 + 4 rotation_16 <= -4
 hc1_11_17: x_11 - x_17 - 35 delta_11_17_0 - rotation_11 <= -4
 hc2_11_17: - x_11 + x_17 - 35 delta_11_17_2 + 8 rotation_17 <= -4
 hc1_11_18: x_11 - x_18 - 35 delta_11_18_0 - rotation_11 <= -4
 hc2_11_18: - x_11 + x_18 - 35 delta_11_18_2 + 13 rotation_18 <= -4
 hc1_11_19: x_11 - x_19 - 35 delta_11_19_0 - rotation_11 <= -4
 hc2_11_19: - x_11 + x_19 - 35 delta_11_19_2 + 16 rotation_19 <= -4
 hc1_11_20: x_11 - x_20 - 35 delta_11_20_0 - rotation_11 <= -4
 hc2_11_20: - x_11 + x_20 - 35 delta_11_20_2 + 19 rotation_20 <= -4
 hc1_11_21: x_11 - x_21 - 35 delta_11_21_0 - rotation_11 <= -4
 hc2_11_21: - x_11 + x_21 - 35 delta_11_21_2 + 21 rotation_21 <= -14
 hc1_12_13: x_12 - x_13 - 35 delta_12_13_0 <= -4
 hc2_12_13: - x_12 + x_13 - 35 delta_12_13_2 + rotation_13 <= -4
 hc1_12_14: x_12 - x_14 - 35 delta_12_14_0 <= -4
 hc2_12_14: - x_12 + x_14 - 35 delta_12_14_2 + 2 rotation_14 <= -4
 hc1_12_15: x_12 - x_15 - 35 delta_12_15_0 <= -4
 hc2_12_15: - x_12 + x_15 - 35 delta_12_15_2 + 3 rotation_15 <= -4
 hc1_12_16: x_12 - x_16 - 35 delta_12_16_0 <= -4
 hc2_12_16: - x_12 + x_16 - 35 delta_12_16_2 + 4 rotation_16 <= -4
 hc1_12_17: x_12 - x_17 - 35 delta_12_17_0 <= -4
 hc2_12_17: - x_12 + x_17 - 35 delta_12_17_2 + 8 rotation_17 <= -4
 hc1_12_18: x_12 - x_18 - 35 delta_12_18_0 <= -4
 hc2_12_18: - x_12 + x_18 - 35 delta_12_18_2 + 13 rotation_18 <= -4
 hc1_12_19: x_12 - x_19 - 35 delta_12_19_0 <= -4
 hc2_12_19: - x_12 + x_19 - 35 delta_12_19_2 + 16 rotation_19 <= -4
 hc1_12_20: x_12 - x_20 - 35 delta_12_20_0 <= -4
 hc2_12_20: - x_12 + x_20 - 35 delta_12_20_2 + 19 rotation_20 <= -4
 hc1_12_21: x_12 - x_21 - 35 delta_12_21_0 <= -4
 hc2_12_21: - x_12 + x_21 - 35 delta_12_21_2 + 21 rotation_21 <= -14
 hc1_13_14: x_13 - x_14 - 35 delta_13_14_0 + rotation_13 <= -4
 hc2_13_14: - x_13 + x_14 - 35 delta_13_14_2 + 2 rotation_14 <= -4
 hc1_13_15: x_13 - x_15 - 35 delta_13_15_0 + rotation_13 <= -4
 hc2_13_15: - x_13 + x_15 - 35 delta_13_15_2 + 3 rotation_15 <= -4
 hc1_13_16: x_13 - x_16 - 35 delta_13_16_0 + rotation_13 <= -4
 hc2_13_16: - x_13 + x_16 - 35 delta_13_16_2 + 4 rotation_16 <= -4
 hc1_13_17: x_13 - x_17 - 35 delta_13_17_0 + rotation_13 <= -4
 hc2_13_17: - x_13 + x_17 - 35 delta_13_17_2 + 8 rotation_17 <= -4
 hc1_13_18: x_13 - x_18 - 35 delta_13_18_0 + rotation_13 <= -4
 hc2_13_18: - x_13 + x_18 - 35 delta_13_18_2 + 13 rotation_18 <= -4
 hc1_13_19: x_13 - x_19 - 35 delta_13_19_0 + rotation_13 <= -4
 hc2_13_19: - x_13 + x_19 - 35 delta_13_19_2 + 16 rotation_19 <= -4
 hc1_13_20: x_13 - x_20 - 35 delta_13_20_0 + rotation_13 <= -4
 hc2_13_20: - x_13 + x_20 - 35 delta_13_20_2 + 19 rotation_20 <= -4
 hc1_13_21: x_13 - x_21 - 35 delta_13_21_0 + rotation_13 <= -4
 hc2_13_21: - x_13 + x_21 - 35 delta_13_21_2 + 21 rotation_21 <= -14
 hc1_14_15: x_14 - x_15 - 35 delta_14_15_0 + 2 rotation_14 <= -4
 hc2_14_15: - x_14 + x_15 - 35 delta_14_15_2 + 3 rotation_15 <= -4
 hc1_14_16: x_14 - x_16 - 35 delta_14_16_0 + 2 rotation_14 <= -4
 hc2_14_16: - x_14 + x_16 - 35 delta_14_16_2 + 4 rotation_16 <= -4
 hc1_14_17: x_14 - x_17 - 35 delta_14_17_0 + 2 rotation_14 <= -4
 hc2_14_17: - x_14 + x_17 - 35 delta_14_17_2 + 8 rotation_17 <= -4
 hc1_14_18: x_14 - x_18 - 35 delta_14_18_0 + 2 rotation_14 <= -4
 hc2_14_18: - x_14 + x_18 - 35 delta_14_18_2 + 13 rotation_18 <= -4
 hc1_14_19: x_14 - x_19 - 35 delta_14_19_0 + 2 rotation_14 <= -4
 hc2_14_19: - x_14 + x_19 - 35 delta_14_19_2 + 16 rotation_19 <= -4
 hc1_14_20: x_14 - x_20 - 35 delta_14_20_0 + 2 rotation_14 <= -4
 hc2_14_20: - x_14 + x_20 - 35 delta_14_20_2 + 19 rotation_20 <= -4
 hc1_14_21: x_14 - x_21 - 35 delta_14_21_0 + 2 rotation_14 <= -4
 hc2_14_21: - x_14 + x_21 - 35 delta_14_21_2 + 21 rotation_21 <= -14
 hc1_15_16: x_15 - x_16 - 35 delta_15_16_0 + 3 rotation_15 <= -4
 hc2_15_16: - x_15 + x_16 - 35 delta_15_16_2 + 4 rotation_16 <= -4
 hc1_15_17: x_15 - x_17 - 35 delta_15_17_0 + 3 rotation_15 <= -4
 hc2_15_17: - x_15 + x_17 - 35 delta_15_17_2 + 8 rotation_17 <= -4
 hc1_15_18: x_15 - x_18 - 35 delta_15_18_0 + 3 rotation_15 <= -4
 hc2_15_18: - x_15 + x_18 - 35 delta_15_18_2 + 13 rotation_18 <= -4
 hc1_15_19: x_15 - x_19 - 35 delta_15_19_0 + 3 rotation_15 <= -4
 hc2_15_19: - x_15 + x_19 - 35 delta_15_19_2 + 16 rotation_19 <= -4
 hc1_15_20: x_15 - x_20 - 35 delta_15_20_0 + 3 rotation_15 <= -4
 hc2_15_20: - x_15 + x_20 - 35 delta_15_20_2 + 19 rotation_20 <= -4
 hc1_15_21: x_15 - x_21 - 35 delta_15_21_0 + 3 rotation_15 <= -4
 hc2_15_21: - x_15 + x_21 - 35 delta_15_21_2 + 21 rotation_21 <= -14
 hc1_16_17: x_16 - x_17 - 35 delta_16_17_0 + 4 rotation_16 <= -4
 hc2_16_17: - x_16 + x_17 - 35 delta_16_17_2 + 8 rotation_17 <= -4
 hc1_16_18: x_16 - x_18 - 35 delta_16_18_0 + 4 rotation_16 <= -4
 hc2_16_18: - x_16 + x_18 - 35 delta_16_18_2 + 13 rotation_18 <= -4
 hc1_16_19: x_16 - x_19 - 35 delta_16_19_0 + 4 rotation_16 <= -4
 hc2_16_19: - x_16 + x_19 - 35 delta_16_19_2 + 16 rotation_19 <= -4
 hc1_16_20: x_16 - x_20 - 35 delta_16_20_0 + 4 rotation_16 <= -4
 hc2_16_20: - x_16 + x_20 - 35 delta_16_20_2 + 19 rotation_20 <= -4
 hc1_16_21: x_16 - x_21 - 35 delta_16_21_0 + 4 rotation_16 <= -4
 hc2_16_21: - x_16 + x_21 - 35 delta_16_21_2 + 21 rotation_21 <= -14
 hc1_17_18: x_17 - x_18 - 35 delta_17_18_0 + 8 rotation_17 <= -4
 hc2_17_18: - x_17 + x_18 - 35 delta_17_18_2 + 13 rotation_18 <= -4
 hc1_17_19: x_17 - x_19 - 35 delta_17_19_0 + 8 rotation_17 <= -4
 hc2_17_19: - x_17 + x_19 - 35 delta_17_19_2 + 16 rotation_19 <= -4
 hc1_17_20: x_17 - x_20 - 35 delta_17_20_0 + 8 rotation_17 <= -4
 hc2_17_20: - x_17 + x_20 - 35 delta_17_20_2 + 19 rotation_20 <= -4
 hc1_17_21: x_17 - x_21 - 35 delta_17_21_0 + 8 rotation_17 <= -4
 hc2_17_21: - x_17 + x_21 - 35 delta_17_21_2 + 21 rotation_21 <= -14
 hc1_18_19: x_18 - x_19 - 35 delta_18_19_0 + 13 rotation_18 <= -4
 hc2_18_19: - x_18 + x_19 - 35 delta_18_19_2 + 16 rotation_19 <= -4
 hc1_18_20: x_18 - x_20 - 35 delta_18_20_0 + 13 rotation_18 <= -4
 hc2_18_20: - x_18 + x_20 - 35 delta_18_20_2 + 19 rotation_20 <= -4
 hc1_18_21: x_18 - x_21 - 35 delta_18_21_0 + 13 rotation_18 <= -4
 hc2_18_21: - x_18 + x_21 - 35 delta_18_21_2 + 21 rotation_21 <= -14
 hc1_19_20: x_19 - x_20 - 35 delta_19_20_0 + 16 rotation_19 <= -4
 hc2_19_20: - x_19 + x_20 - 35 delta_19_20_2 + 19 rotation_20 <= -4
 hc1_19_21: x_19 - x_21 - 35 delta_19_21_0 + 16 rotation_19 <= -4
 hc2_19_21: - x_19 + x_21 - 35 delta_19_21_2 + 21 rotation_21 <= -14
 hc1_20_21: x_20 - x_21 - 35 delta_20_21_0 + 19 rotation_20 <= -4
 hc2_20_21: - x_20 + x_21 - 35 delta_20_21_2 + 21 rotation_21 <= -14
 no_overlap_0_0: delta_0_0_0 + delta_0_0_1 + delta_0_0_2 + delta_0_0_3
   <= 3
 no_overlap_0_1: delta_0_1_0 + delta_0_1_1 + delta_0_1_2 + delta_0_1_3
   <= 3
 no_overlap_0_2: delta_0_2_0 + delta_0_2_1 + delta_0_2_2 + delta_0_2_3
   <= 3
 no_overlap_0_3: delta_0_3_0 + delta_0_3_1 + delta_0_3_2 + delta_0_3_3
   <= 3
 no_overlap_0_4: delta_0_4_0 + delta_0_4_1 + delta_0_4_2 + delta_0_4_3
   <= 3
 no_overlap_0_5: delta_0_5_0 + delta_0_5_1 + delta_0_5_2 + delta_0_5_3
   <= 3
 no_overlap_0_6: delta_0_6_0 + delta_0_6_1 + delta_0_6_2 + delta_0_6_3
   <= 3
 no_overlap_0_7: delta_0_7_0 + delta_0_7_1 + delta_0_7_2 + delta_0_7_3
   <= 3
 no_overlap_0_8: delta_0_8_0 + delta_0_8_1 + delta_0_8_2 + delta_0_8_3
   <= 3
 no_overlap_0_9: delta_0_9_0 + delta_0_9_1 + delta_0_9_2 + delta_0_9_3
   <= 3
 no_overlap_0_10: delta_0_10_0 + delta_0_10_1 + delta_0_10_2 + delta_0_10_3
   <= 3
 no_overlap_0_11: delta_0_11_0 + delta_0_11_1 + delta_0_11_2 + delta_0_11_3
   <= 3
 no_overlap_0_12: delta_0_12_0 + delta_0_12_1 + delta_0_12_2 + delta_0_12_3
   <= 3
 no_overlap_0_13: delta_0_13_0 + delta_0_13_1 + delta_0_13_2 + delta_0_13_3
   <= 3
 no_overlap_0_14: delta_0_14_0 + delta_0_14_1 + delta_0_14_2 + delta_0_14_3
   <= 3
 no_overlap_0_15: delta_0_15_0 + delta_0_15_1 + delta_0_15_2 + delta_0_15_3
   <= 3
 no_overlap_0_16: delta_0_16_0 + delta_0_16_1 + delta_0_16_2 + delta_0_16_3
   <= 3
 no_overlap_0_17: delta_0_17_0 + delta_0_17_1 + delta_0_17_2 + delta_0_17_3
   <= 3
 no_overlap_0_18: delta_0_18_0 + delta_0_18_1 + delta_0_18_2 + delta_0_18_3
   <= 3
 no_overlap_0_19: delta_0_19_0 + delta_0_19_1 + delta_0_19_2 + delta_0_19_3
   <= 3
 no_overlap_0_20: delta_0_20_0 + delta_0_20_1 + delta_0_20_2 + delta_0_20_3
   <= 3
 no_overlap_0_21: delta_0_21_0 + delta_0_21_1 + delta_0_21_2 + delta_0_21_3
   <= 3
 no_overlap_1_0: delta_1_0_0 + delta_1_0_1 + delta_1_0_2 + delta_1_0_3
   <= 3
 no_overlap_1_1: delta_1_1_0 + delta_1_1_1 + delta_1_1_2 + delta_1_1_3
   <= 3
 no_overlap_1_2: delta_1_2_0 + delta_1_2_1 + delta_1_2_2 + delta_1_2_3
   <= 3
 no_overlap_1_3: delta_1_3_0 + delta_1_3_1 + delta_1_3_2 + delta_1_3_3
   <= 3
 no_overlap_1_4: delta_1_4_0 + delta_1_4_1 + delta_1_4_2 + delta_1_4_3
   <= 3
 no_overlap_1_5: delta_1_5_0 + delta_1_5_1 + delta_1_5_2 + delta_1_5_3
   <= 3
 no_overlap_1_6: delta_1_6_0 + delta_1_6_1 + delta_1_6_2 + delta_1_6_3
   <= 3
 no_overlap_1_7: delta_1_7_0 + delta_1_7_1 + delta_1_7_2 + delta_1_7_3
   <= 3
 no_overlap_1_8: delta_1_8_0 + delta_1_8_1 + delta_1_8_2 + delta_1_8_3
   <= 3
 no_overlap_1_9: delta_1_9_0 + delta_1_9_1 + delta_1_9_2 + delta_1_9_3
   <= 3
 no_overlap_1_10: delta_1_10_0 + delta_1_10_1 + delta_1_10_2 + delta_1_10_3
   <= 3
 no_overlap_1_11: delta_1_11_0 + delta_1_11_1 + delta_1_11_2 + delta_1_11_3
   <= 3
 no_overlap_1_12: delta_1_12_0 + delta_1_12_1 + delta_1_12_2 + delta_1_12_3
   <= 3
 no_overlap_1_13: delta_1_13_0 + delta_1_13_1 + delta_1_13_2 + delta_1_13_3
   <= 3
 no_overlap_1_14: delta_1_14_0 + delta_1_14_1 + delta_1_14_2 + delta_1_14_3
   <= 3
 no_overlap_1_15: delta_1_15_0 + delta_1_15_1 + delta_1_15_2 + delta_1_15_3
   <= 3
 no_overlap_1_16: delta_1_16_0 + delta_1_16_1 + delta_1_16_2 + delta_1_16_3
   <= 3
 no_overlap_1_17: delta_1_17_0 + delta_1_17_1 + delta_1_17_2 + delta_1_17_3
   <= 3
 no_overlap_1_18: delta_1_18_0 + delta_1_18_1 + delta_1_18_2 + delta_1_18_3
   <= 3
 no_overlap_1_19: delta_1_19_0 + delta_1_19_1 + delta_1_19_2 + delta_1_19_3
   <= 3
 no_overlap_1_20: delta_1_20_0 + delta_1_20_1 + delta_1_20_2 + delta_1_20_3
   <= 3
 no_overlap_1_21: delta_1_21_0 + delta_1_21_1 + delta_1_21_2 + delta_1_21_3
   <= 3
 no_overlap_2_0: delta_2_0_0 + delta_2_0_1 + delta_2_0_2 + delta_2_0_3
   <= 3
 no_overlap_2_1: delta_2_1_0 + delta_2_1_1 + delta_2_1_2 + delta_2_1_3
   <= 3
 no_overlap_2_2: delta_2_2_0 + delta_2_2_1 + delta_2_2_2 + delta_2_2_3
   <= 3
 no_overlap_2_3: delta_2_3_0 + delta_2_3_1 + delta_2_3_2 + delta_2_3_3
   <= 3
 no_overlap_2_4: delta_2_4_0 + delta_2_4_1 + delta_2_4_2 + delta_2_4_3
   <= 3
 no_overlap_2_5: delta_2_5_0 + delta_2_5_1 + delta_2_5_2 + delta_2_5_3
   <= 3
 no_overlap_2_6: delta_2_6_0 + delta_2_6_1 + delta_2_6_2 + delta_2_6_3
   <= 3
 no_overlap_2_7: delta_2_7_0 + delta_2_7_1 + delta_2_7_2 + delta_2_7_3
   <= 3
 no_overlap_2_8: delta_2_8_0 + delta_2_8_1 + delta_2_8_2 + delta_2_8_3
   <= 3
 no_overlap_2_9: delta_2_9_0 + delta_2_9_1 + delta_2_9_2 + delta_2_9_3
   <= 3
 no_overlap_2_10: delta_2_10_0 + delta_2_10_1 + delta_2_10_2 + delta_2_10_3
   <= 3
 no_overlap_2_11: delta_2_11_0 + delta_2_11_1 + delta_2_11_2 + delta_2_11_3
   <= 3
 no_overlap_2_12: delta_2_12_0 + delta_2_12_1 + delta_2_12_2 + delta_2_12_3
   <= 3
 no_overlap_2_13: delta_2_13_0 + delta_2_13_1 + delta_2_13_2 + delta_2_13_3
   <= 3
 no_overlap_2_14: delta_2_14_0 + delta_2_14_1 + delta_2_14_2 + delta_2_14_3
   <= 3
 no_overlap_2_15: delta_2_15_0 + delta_2_15_1 + delta_2_15_2 + delta_2_15_3
   <= 3
 no_overlap_2_16: delta_2_16_0 + delta_2_16_1 + delta_2_16_2 + delta_2_16_3
   <= 3
 no_overlap_2_17: delta_2_17_0 + delta_2_17_1 + delta_2_17_2 + delta_2_17_3
   <= 3
 no_overlap_2_18: delta_2_18_0 + delta_2_18_1 + delta_2_18_2 + delta_2_18_3
   <= 3
 no_overlap_2_19: delta_2_19_0 + delta_2_19_1 + delta_2_19_2 + delta_2_19_3
   <= 3
 no_overlap_2_20: delta_2_20_0 + delta_2_20_1 + delta_2_20_2 + delta_2_20_3
   <= 3
 no_overlap_2_21: delta_2_21_0 + delta_2_21_1 + delta_2_21_2 + delta_2_21_3
   <= 3
 no_overlap_3_0: delta_3_0_0 + delta_3_0_1 + delta_3_0_2 + delta_3_0_3
   <= 3
 no_overlap_3_1: delta_3_1_0 + delta_3_1_1 + delta_3_1_2 + delta_3_1_3
   <= 3
 no_overlap_3_2: delta_3_2_0 + delta_3_2_1 + delta_3_2_2 + delta_3_2_3
   <= 3
 no_overlap_3_3: delta_3_3_0 + delta_3_3_1 + delta_3_3_2 + delta_3_3_3
   <= 3
 no_overlap_3_4: delta_3_4_0 + delta_3_4_1 + delta_3_4_2 + delta_3_4_3
   <= 3
 no_overlap_3_5: delta_3_5_0 + delta_3_5_1 + delta_3_5_2 + delta_3_5_3
   <= 3
 no_overlap_3_6: delta_3_6_0 + delta_3_6_1 + delta_3_6_2 + delta_3_6_3
   <= 3
 no_overlap_3_7: delta_3_7_0 + delta_3_7_1 + delta_3_7_2 + delta_3_7_3
   <= 3
 no_overlap_3_8: delta_3_8_0 + delta_3_8_1 + delta_3_8_2 + delta_3_8_3
   <= 3
 no_overlap_3_9: delta_3_9_0 + delta_3_9_1 + delta_3_9_2 + delta_3_9_3
   <= 3
 no_overlap_3_10: delta_3_10_0 + delta_3_10_1 + delta_3_10_2 + delta_3_10_3
   <= 3
 no_overlap_3_11: delta_3_11_0 + delta_3_11_1 + delta_3_11_2 + delta_3_11_3
   <= 3
 no_overlap_3_12: delta_3_12_0 + delta_3_12_1 + delta_3_12_2 + delta_3_12_3
   <= 3
 no_overlap_3_13: delta_3_13_0 + delta_3_13_1 + delta_3_13_2 + delta_3_13_3
   <= 3
 no_overlap_3_14: delta_3_14_0 + delta_3_14_1 + delta_3_14_2 + delta_3_14_3
   <= 3
 no_overlap_3_15: delta_3_15_0 + delta_3_15_1 + delta_3_15_2 + delta_3_15_3
   <= 3
 no_overlap_3_16: delta_3_16_0 + delta_3_16_1 + delta_3_16_2 + delta_3_16_3
   <= 3
 no_overlap_3_17: delta_3_17_0 + delta_3_17_1 + delta_3_17_2 + delta_3_17_3
   <= 3
 no_overlap_3_18: delta_3_18_0 + delta_3_18_1 + delta_3_18_2 + delta_3_18_3
   <= 3
 no_overlap_3_19: delta_3_19_0 + delta_3_19_1 + delta_3_19_2 + delta_3_19_3
   <= 3
 no_overlap_3_20: delta_3_20_0 + delta_3_20_1 + delta_3_20_2 + delta_3_20_3
   <= 3
 no_overlap_3_21: delta_3_21_0 + delta_3_21_1 + delta_3_21_2 + delta_3_21_3
   <= 3
 no_overlap_4_0: delta_4_0_0 + delta_4_0_1 + delta_4_0_2 + delta_4_0_3
   <= 3
 no_overlap_4_1: delta_4_1_0 + delta_4_1_1 + delta_4_1_2 + delta_4_1_3
   <= 3
 no_overlap_4_2: delta_4_2_0 + delta_4_2_1 + delta_4_2_2 + delta_4_2_3
   <= 3
 no_overlap_4_3: delta_4_3_0 + delta_4_3_1 + delta_4_3_2 + delta_4_3_3
   <= 3
 no_overlap_4_4: delta_4_4_0 + delta_4_4_1 + delta_4_4_2 + delta_4_4_3
   <= 3
 no_overlap_4_5: delta_4_5_0 + delta_4_5_1 + delta_4_5_2 + delta_4_5_3
   <= 3
 no_overlap_4_6: delta_4_6_0 + delta_4_6_1 + delta_4_6_2 + delta_4_6_3
   <= 3
 no_overlap_4_7: delta_4_7_0 + delta_4_7_1 + delta_4_7_2 + delta_4_7_3
   <= 3
 no_overlap_4_8: delta_4_8_0 + delta_4_8_1 + delta_4_8_2 + delta_4_8_3
   <= 3
 no_overlap_4_9: delta_4_9_0 + delta_4_9_1 + delta_4_9_2 + delta_4_9_3
   <= 3
 no_overlap_4_10: delta_4_10_0 + delta_4_10_1 + delta_4_10_2 + delta_4_10_3
   <= 3
 no_overlap_4_11: delta_4_11_0 + delta_4_11_1 + delta_4_11_2 + delta_4_11_3
   <= 3
 no_overlap_4_12: delta_4_12_0 + delta_4_12_1 + delta_4_12_2 + delta_4_12_3
   <= 3
 no_overlap_4_13: delta_4_13_0 + delta_4_13_1 + delta_4_13_2 + delta_4_13_3
   <= 3
 no_overlap_4_14: delta_4_14_0 + delta_4_14_1 + delta_4_14_2 + delta_4_14_3
   <= 3
 no_overlap_4_15: delta_4_15_0 + delta_4_15_1 + delta_4_15_2 + delta_4_15_3
   <= 3
 no_overlap_4_16: delta_4_16_0 + delta_4_16_1 + delta_4_16_2 + delta_4_16_3
   <= 3
 no_overlap_4_17: delta_4_17_0 + delta_4_17_1 + delta_4_17_2 + delta_4_17_3
   <= 3
 no_overlap_4_18: delta_4_18_0 + delta_4_18_1 + delta_4_18_2 + delta_4_18_3
   <= 3
 no_overlap_4_19: delta_4_19_0 + delta_4_19_1 + delta_4_19_2 + delta_4_19_3
   <= 3
 no_overlap_4_20: delta_4_20_0 + delta_4_20_1 + delta_4_20_2 + delta_4_20_3
   <= 3
 no_overlap_4_21: delta_4_21_0 + delta_4_21_1 + delta_4_21_2 + delta_4_21_3
   <= 3
 no_overlap_5_0: delta_5_0_0 + delta_5_0_1 + delta_5_0_2 + delta_5_0_3
   <= 3
 no_overlap_5_1: delta_5_1_0 + delta_5_1_1 + delta_5_1_2 + delta_5_1_3
   <= 3
 no_overlap_5_2: delta_5_2_0 + delta_5_2_1 + delta_5_2_2 + delta_5_2_3
   <= 3
 no_overlap_5_3: delta_5_3_0 + delta_5_3_1 + delta_5_3_2 + delta_5_3_3
   <= 3
 no_overlap_5_4: delta_5_4_0 + delta_5_4_1 + delta_5_4_2 + delta_5_4_3
   <= 3
 no_overlap_5_5: delta_5_5_0 + delta_5_5_1 + delta_5_5_2 + delta_5_5_3
   <= 3
 no_overlap_5_6: delta_5_6_0 + delta_5_6_1 + delta_5_6_2 + delta_5_6_3
   <= 3
 no_overlap_5_7: delta_5_7_0 + delta_5_7_1 + delta_5_7_2 + delta_5_7_3
   <= 3
 no_overlap_5_8: delta_5_8_0 + delta_5_8_1 + delta_5_8_2 + delta_5_8_3
   <= 3
 no_overlap_5_9: delta_5_9_0 + delta_5_9_1 + delta_5_9_2 + delta_5_9_3
   <= 3
 no_overlap_5_10: delta_5_10_0 + delta_5_10_1 + delta_5_10_2 + delta_5_10_3
   <= 3
 no_overlap_5_11: delta_5_11_0 + delta_5_11_1 + delta_5_11_2 + delta_5_11_3
   <= 3
 no_overlap_5_12: delta_5_12_0 + delta_5_12_1 + delta_5_12_2 + delta_5_12_3
   <= 3
 no_overlap_5_13: delta_5_13_0 + delta_5_13_1 + delta_5_13_2 + delta_5_13_3
   <= 3
 no_overlap_5_14: delta_5_14_0 + delta_5_14_1 + delta_5_14_2 + delta_5_14_3
   <= 3
 no_overlap_5_15: delta_5_15_0 + delta_5_15_1 + delta_5_15_2 + delta_5_15_3
   <= 3
 no_overlap_5_16: delta_5_16_0 + delta_5_16_1 + delta_5_16_2 + delta_5_16_3
   <= 3
 no_overlap_5_17: delta_5_17_0 + delta_5_17_1 + delta_5_17_2 + delta_5_17_3
   <= 3
 no_overlap_5_18: delta_5_18_0 + delta_5_18_1 + delta_5_18_2 + delta_5_18_3
   <= 3
 no_overlap_5_19: delta_5_19_0 + delta_5_19_1 + delta_5_19_2 + delta_5_19_3
   <= 3
 no_overlap_5_20: delta_5_20_0 + delta_5_20_1 + delta_5_20_2 + delta_5_20_3
   <= 3
 no_overlap_5_21: delta_5_21_0 + delta_5_21_1 + delta_5_21_2 + delta_5_21_3
   <= 3
 no_overlap_6_0: delta_6_0_0 + delta_6_0_1 + delta_6_0_2 + delta_6_0_3
   <= 3
 no_overlap_6_1: delta_6_1_0 + delta_6_1_1 + delta_6_1_2 + delta_6_1_3
   <= 3
 no_overlap_6_2: delta_6_2_0 + delta_6_2_1 + delta_6_2_2 + delta_6_2_3
   <= 3
 no_overlap_6_3: delta_6_3_0 + delta_6_3_1 + delta_6_3_2 + delta_6_3_3
   <= 3
 no_overlap_6_4: delta_6_4_0 + delta_6_4_1 + delta_6_4_2 + delta_6_4_3
   <= 3
 no_overlap_6_5: delta_6_5_0 + delta_6_5_1 + delta_6_5_2 + delta_6_5_3
   <= 3
 no_overlap_6_6: delta_6_6_0 + delta_6_6_1 + delta_6_6_2 + delta_6_6_3
   <= 3
 no_overlap_6_7: delta_6_7_0 + delta_6_7_1 + delta_6_7_2 + delta_6_7_3
   <= 3
 no_overlap_6_8: delta_6_8_0 + delta_6_8_1 + delta_6_8_2 + delta_6_8_3
   <= 3
 no_overlap_6_9: delta_6_9_0 + delta_6_9_1 + delta_6_9_2 + delta_6_9_3
   <= 3
 no_overlap_6_10: delta_6_10_0 + delta_6_10_1 + delta_6_10_2 + delta_6_10_3
   <= 3
 no_overlap_6_11: delta_6_11_0 + delta_6_11_1 + delta_6_11_2 + delta_6_11_3
   <= 3
 no_overlap_6_12: delta_6_12_0 + delta_6_12_1 + delta_6_12_2 + delta_6_12_3
   <= 3
 no_overlap_6_13: delta_6_13_0 + delta_6_13_1 + delta_6_13_2 + delta_6_13_3
   <= 3
 no_overlap_6_14: delta_6_14_0 + delta_6_14_1 + delta_6_14_2 + delta_6_14_3
   <= 3
 no_overlap_6_15: delta_6_15_0 + delta_6_15_1 + delta_6_15_2 + delta_6_15_3
   <= 3
 no_overlap_6_16: delta_6_16_0 + delta_6_16_1 + delta_6_16_2 + delta_6_16_3
   <= 3
 no_overlap_6_17: delta_6_17_0 + delta_6_17_1 + delta_6_17_2 + delta_6_17_3
   <= 3
 no_overlap_6_18: delta_6_18_0 + delta_6_18_1 + delta_6_18_2 + delta_6_18_3
   <= 3
 no_overlap_6_19: delta_6_19_0 + delta_6_19_1 + delta_6_19_2 + delta_6_19_3
   <= 3
 no_overlap_6_20: delta_6_20_0 + delta_6_20_1 + delta_6_20_2 + delta_6_20_3
   <= 3
 no_overlap_6_21: delta_6_21_0 + delta_6_21_1 + delta_6_21_2 + delta_6_21_3
   <= 3
 no_overlap_7_0: delta_7_0_0 + delta_7_0_1 + delta_7_0_2 + delta_7_0_3
   <= 3
 no_overlap_7_1: delta_7_1_0 + delta_7_1_1 + delta_7_1_2 + delta_7_1_3
   <= 3
 no_overlap_7_2: delta_7_2_0 + delta_7_2_1 + delta_7_2_2 + delta_7_2_3
   <= 3
 no_overlap_7_3: delta_7_3_0 + delta_7_3_1 + delta_7_3_2 + delta_7_3_3
   <= 3
 no_overlap_7_4: delta_7_4_0 + delta_7_4_1 + delta_7_4_2 + delta_7_4_3
   <= 3
 no_overlap_7_5: delta_7_5_0 + delta_7_5_1 + delta_7_5_2 + delta_7_5_3
   <= 3
 no_overlap_7_6: delta_7_6_0 + delta_7_6_1 + delta_7_6_2 + delta_7_6_3
   <= 3
 no_overlap_7_7: delta_7_7_0 + delta_7_7_1 + delta_7_7_2 + delta_7_7_3
   <= 3
 no_overlap_7_8: delta_7_8_0 + delta_7_8_1 + delta_7_8_2 + delta_7_8_3
   <= 3
 no_overlap_7_9: delta_7_9_0 + delta_7_9_1 + delta_7_9_2 + delta_7_9_3
   <= 3
 no_overlap_7_10: delta_7_10_0 + delta_7_10_1 + delta_7_10_2 + delta_7_10_3
   <= 3
 no_overlap_7_11: delta_7_11_0 + delta_7_11_1 + delta_7_11_2 + delta_7_11_3
   <= 3
 no_overlap_7_12: delta_7_12_0 + delta_7_12_1 + delta_7_12_2 + delta_7_12_3
   <= 3
 no_overlap_7_13: delta_7_13_0 + delta_7_13_1 + delta_7_13_2 + delta_7_13_3
   <= 3
 no_overlap_7_14: delta_7_14_0 + delta_7_14_1 + delta_7_14_2 + delta_7_14_3
   <= 3
 no_overlap_7_15: delta_7_15_0 + delta_7_15_1 + delta_7_15_2 + delta_7_15_3
   <= 3
 no_overlap_7_16: delta_7_16_0 + delta_7_16_1 + delta_7_16_2 + delta_7_16_3
   <= 3
 no_overlap_7_17: delta_7_17_0 + delta_7_17_1 + delta_7_17_2 + delta_7_17_3
   <= 3
 no_overlap_7_18: delta_7_18_0 + delta_7_18_1 + delta_7_18_2 + delta_7_18_3
   <= 3
 no_overlap_7_19: delta_7_19_0 + delta_7_19_1 + delta_7_19_2 + delta_7_19_3
   <= 3
 no_overlap_7_20: delta_7_20_0 + delta_7_20_1 + delta_7_20_2 + delta_7_20_3
   <= 3
 no_overlap_7_21: delta_7_21_0 + delta_7_21_1 + delta_7_21_2 + delta_7_21_3
   <= 3
 no_overlap_8_0: delta_8_0_0 + delta_8_0_1 + delta_8_0_2 + delta_8_0_3
   <= 3
 no_overlap_8_1: delta_8_1_0 + delta_8_1_1 + delta_8_1_2 + delta_8_1_3
   <= 3
 no_overlap_8_2: delta_8_2_0 + delta_8_2_1 + delta_8_2_2 + delta_8_2_3
   <= 3
 no_overlap_8_3: delta_8_3_0 + delta_8_3_1 + delta_8_3_2 + delta_8_3_3
   <= 3
 no_overlap_8_4: delta_8_4_0 + delta_8_4_1 + delta_8_4_2 + delta_8_4_3
   <= 3
 no_overlap_8_5: delta_8_5_0 + delta_8_5_1 + delta_8_5_2 + delta_8_5_3
   <= 3
 no_overlap_8_6: delta_8_6_0 + delta_8_6_1 + delta_8_6_2 + delta_8_6_3
   <= 3
 no_overlap_8_7: delta_8_7_0 + delta_8_7_1 + delta_8_7_2 + delta_8_7_3
   <= 3
 no_overlap_8_8: delta_8_8_0 + delta_8_8_1 + delta_8_8_2 + delta_8_8_3
   <= 3
 no_overlap_8_9: delta_8_9_0 + delta_8_9_1 + delta_8_9_2 + delta_8_9_3
   <= 3
 no_overlap_8_10: delta_8_10_0 + delta_8_10_1 + delta_8_10_2 + delta_8_10_3
   <= 3
 no_overlap_8_11: delta_8_11_0 + delta_8_11_1 + delta_8_11_2 + delta_8_11_3
   <= 3
 no_overlap_8_12: delta_8_12_0 + delta_8_12_1 + delta_8_12_2 + delta_8_12_3
   <= 3
 no_overlap_8_13: delta_8_13_0 + delta_8_13_1 + delta_8_13_2 + delta_8_13_3
   <= 3
 no_overlap_8_14: delta_8_14_0 + delta_8_14_1 + delta_8_14_2 + delta_8_14_3
   <= 3
 no_overlap_8_15: delta_8_15_0 + delta_8_15_1 + delta_8_15_2 + delta_8_15_3
   <= 3
 no_overlap_8_16: delta_8_16_0 + delta_8_16_1 + delta_8_16_2 + delta_8_16_3
   <= 3
 no_overlap_8_17: delta_8_17_0 + delta_8_17_1 + delta_8_17_2 + delta_8_17_3
   <= 3
 no_overlap_8_18: delta_8_18_0 + delta_8_18_1 + delta_8_18_2 + delta_8_18_3
   <= 3
 no_overlap_8_19: delta_8_19_0 + delta_8_19_1 + delta_8_19_2 + delta_8_19_3
   <= 3
 no_overlap_8_20: delta_8_20_0 + delta_8_20_1 + delta_8_20_2 + delta_8_20_3
   <= 3
 no_overlap_8_21: delta_8_21_0 + delta_8_21_1 + delta_8_21_2 + delta_8_21_3
   <= 3
 no_overlap_9_0: delta_9_0_0 + delta_9_0_1 + delta_9_0_2 + delta_9_0_3
   <= 3
 no_overlap_9_1: delta_9_1_0 + delta_9_1_1 + delta_9_1_2 + delta_9_1_3
   <= 3
 no_overlap_9_2: delta_9_2_0 + delta_9_2_1 + delta_9_2_2 + delta_9_2_3
   <= 3
 no_overlap_9_3: delta_9_3_0 + delta_9_3_1 + delta_9_3_2 + delta_9_3_3
   <= 3
 no_overlap_9_4: delta_9_4_0 + delta_9_4_1 + delta_9_4_2 + delta_9_4_3
   <= 3
 no_overlap_9_5: delta_9_5_0 + delta_9_5_1 + delta_9_5_2 + delta_9_5_3
   <= 3
 no_overlap_9_6: delta_9_6_0 + delta_9_6_1 + delta_9_6_2 + delta_9_6_3
   <= 3
 no_overlap_9_7: delta_9_7_0 + delta_9_7_1 + delta_9_7_2 + delta_9_7_3
   <= 3
 no_overlap_9_8: delta_9_8_0 + delta_9_8_1 + delta_9_8_2 + delta_9_8_3
   <= 3
 no_overlap_9_9: delta_9_9_0 + delta_9_9_1 + delta_9_9_2 + delta_9_9_3
   <= 3
 no_overlap_9_10: delta_9_10_0 + delta_9_10_1 + delta_9_10_2 + delta_9_10_3
   <= 3
 no_overlap_9_11: delta_9_11_0 + delta_9_11_1 + delta_9_11_2 + delta_9_11_3
   <= 3
 no_overlap_9_12: delta_9_12_0 + delta_9_12_1 + delta_9_12_2 + delta_9_12_3
   <= 3
 no_overlap_9_13: delta_9_13_0 + delta_9_13_1 + delta_9_13_2 + delta_9_13_3
   <= 3
 no_overlap_9_14: delta_9_14_0 + delta_9_14_1 + delta_9_14_2 + delta_9_14_3
   <= 3
 no_overlap_9_15: delta_9_15_0 + delta_9_15_1 + delta_9_15_2 + delta_9_15_3
   <= 3
 no_overlap_9_16: delta_9_16_0 + delta_9_16_1 + delta_9_16_2 + delta_9_16_3
   <= 3
 no_overlap_9_17: delta_9_17_0 + delta_9_17_1 + delta_9_17_2 + delta_9_17_3
   <= 3
 no_overlap_9_18: delta_9_18_0 + delta_9_18_1 + delta_9_18_2 + delta_9_18_3
   <= 3
 no_overlap_9_19: delta_9_19_0 + delta_9_19_1 + delta_9_19_2 + delta_9_19_3
   <= 3
 no_overlap_9_20: delta_9_20_0 + delta_9_20_1 + delta_9_20_2 + delta_9_20_3
   <= 3
 no_overlap_9_21: delta_9_21_0 + delta_9_21_1 + delta_9_21_2 + delta_9_21_3
   <= 3
 no_overlap_10_0: delta_10_0_0 + delta_10_0_1 + delta_10_0_2 + delta_10_0_3
   <= 3
 no_overlap_10_1: delta_10_1_0 + delta_10_1_1 + delta_10_1_2 + delta_10_1_3
   <= 3
 no_overlap_10_2: delta_10_2_0 + delta_10_2_1 + delta_10_2_2 + delta_10_2_3
   <= 3
 no_overlap_10_3: delta_10_3_0 + delta_10_3_1 + delta_10_3_2 + delta_10_3_3
   <= 3
 no_overlap_10_4: delta_10_4_0 + delta_10_4_1 + delta_10_4_2 + delta_10_4_3
   <= 3
 no_overlap_10_5: delta_10_5_0 + delta_10_5_1 + delta_10_5_2 + delta_10_5_3
   <= 3
 no_overlap_10_6: delta_10_6_0 + delta_10_6_1 + delta_10_6_2 + delta_10_6_3
   <= 3
 no_overlap_10_7: delta_10_7_0 + delta_10_7_1 + delta_10_7_2 + delta_10_7_3
   <= 3
 no_overlap_10_8: delta_10_8_0 + delta_10_8_1 + delta_10_8_2 + delta_10_8_3
   <= 3
 no_overlap_10_9: delta_10_9_0 + delta_10_9_1 + delta_10_9_2 + delta_10_9_3
   <= 3
 no_overlap_10_10: delta_10_10_0 + delta_10_10_1 + delta_10_10_2
   + delta_10_10_3 <= 3
 no_overlap_10_11: delta_10_11_0 + delta_10_11_1 + delta_10_11_2
   + delta_10_11_3 <= 3
 no_overlap_10_12: delta_10_12_0 + delta_10_12_1 + delta_10_12_2
   + delta_10_12_3 <= 3
 no_overlap_10_13: delta_10_13_0 + delta_10_13_1 + delta_10_13_2
   + delta_10_13_3 <= 3
 no_overlap_10_14: delta_10_14_0 + delta_10_14_1 + delta_10_14_2
   + delta_10_14_3 <= 3
 no_overlap_10_15: delta_10_15_0 + delta_10_15_1 + delta_10_15_2
   + delta_10_15_3 <= 3
 no_overlap_10_16: delta_10_16_0 + delta_10_16_1 + delta_10_16_2
   + delta_10_16_3 <= 3
 no_overlap_10_17: delta_10_17_0 + delta_10_17_1 + delta_10_17_2
   + delta_10_17_3 <= 3
 no_overlap_10_18: delta_10_18_0 + delta_10_18_1 + delta_10_18_2
   + delta_10_18_3 <= 3
 no_overlap_10_19: delta_10_19_0 + delta_10_19_1 + delta_10_19_2
   + delta_10_19_3 <= 3
 no_overlap_10_20: delta_10_20_0 + delta_10_20_1 + delta_10_20_2
   + delta_10_20_3 <= 3
 no_overlap_10_21: delta_10_21_0 + delta_10_21_1 + delta_10_21_2
   + delta_10_21_3 <= 3
 no_overlap_11_0: delta_11_0_0 + delta_11_0_1 + delta_11_0_2 + delta_11_0_3
   <= 3
 no_overlap_11_1: delta_11_1_0 + delta_11_1_1 + delta_11_1_2 + delta_11_1_3
   <= 3
 no_overlap_11_2: delta_11_2_0 + delta_11_2_1 + delta_11_2_2 + delta_11_2_3
   <= 3
 no_overlap_11_3: delta_11_3_0 + delta_11_3_1 + delta_11_3_2 + delta_11_3_3
   <= 3
 no_overlap_11_4: delta_11_4_0 + delta_11_4_1 + delta_11_4_2 + delta_11_4_3
   <= 3
 no_overlap_11_5: delta_11_5_0 + delta_11_5_1 + delta_11_5_2 + delta_11_5_3
   <= 3
 no_overlap_11_6: delta_11_6_0 + delta_11_6_1 + delta_11_6_2 + delta_11_6_3
   <= 3
 no_overlap_11_7: delta_11_7_0 + delta_11_7_1 + delta_11_7_2 + delta_11_7_3
   <= 3
 no_overlap_11_8: delta_11_8_0 + delta_11_8_1 + delta_11_8_2 + delta_11_8_3
   <= 3
 no_overlap_11_9: delta_11_9_0 + delta_11_9_1 + delta_11_9_2 + delta_11_9_3
   <= 3
 no_overlap_11_10: delta_11_10_0 + delta_11_10_1 + delta_11_10_2
   + delta_11_10_3 <= 3
 no_overlap_11_11: delta_11_11_0 + delta_11_11_1 + delta_11_11_2
   + delta_11_11_3 <= 3
 no_overlap_11_12: delta_11_12_0 + delta_11_12_1 + delta_11_12_2
   + delta_11_12_3 <= 3
 no_overlap_11_13: delta_11_13_0 + delta_11_13_1 + delta_11_13_2
   + delta_11_13_3 <= 3
 no_overlap_11_14: delta_11_14_0 + delta_11_14_1 + delta_11_14_2
   + delta_11_14_3 <= 3
 no_overlap_11_15: delta_11_15_0 + delta_11_15_1 + delta_11_15_2
   + delta_11_15_3 <= 3
 no_overlap_11_16: delta_11_16_0 + delta_11_16_1 + delta_11_16_2
   + delta_11_16_3 <= 3
 no_overlap_11_17: delta_11_17_0 + delta_11_17_1 + delta_11_17_2
   + delta_11_17_3 <= 3
 no_overlap_11_18: delta_11_18_0 + delta_11_18_1 + delta_11_18_2
   + delta_11_18_3 <= 3
 no_overlap_11_19: delta_11_19_0 + delta_11_19_1 + delta_11_19_2
   + delta_11_19_3 <= 3
 no_overlap_11_20: delta_11_20_0 + delta_11_20_1 + delta_11_20_2
   + delta_11_20_3 <= 3
 no_overlap_11_21: delta_11_21_0 + delta_11_21_1 + delta_11_21_2
   + delta_11_21_3 <= 3
 no_overlap_12_0: delta_12_0_0 + delta_12_0_1 + delta_12_0_2 + delta_12_0_3
   <= 3
 no_overlap_12_1: delta_12_1_0 + delta_12_1_1 + delta_12_1_2 + delta_12_1_3
   <= 3
 no_overlap_12_2: delta_12_2_0 + delta_12_2_1 + delta_12_2_2 + delta_12_2_3
   <= 3
 no_overlap_12_3: delta_12_3_0 + delta_12_3_1 + delta_12_3_2 + delta_12_3_3
   <= 3
 no_overlap_12_4: delta_12_4_0 + delta_12_4_1 + delta_12_4_2 + delta_12_4_3
   <= 3
 no_overlap_12_5: delta_12_5_0 + delta_12_5_1 + delta_12_5_2 + delta_12_5_3
   <= 3
 no_overlap_12_6: delta_12_6_0 + delta_12_6_1 + delta_12_6_2 + delta_12_6_3
   <= 3
 no_overlap_12_7: delta_12_7_0 + delta_12_7_1 + delta_12_7_2 + delta_12_7_3
   <= 3
 no_overlap_12_8: delta_12_8_0 + delta_12_8_1 + delta_12_8_2 + delta_12_8_3
   <= 3
 no_overlap_12_9: delta_12_9_0 + delta_12_9_1 + delta_12_9_2 + delta_12_9_3
   <= 3
 no_overlap_12_10: delta_12_10_0 + delta_12_10_1 + delta_12_10_2
   + delta_12_10_3 <= 3
 no_overlap_12_11: delta_12_11_0 + delta_12_11_1 + delta_12_11_2
   + delta_12_11_3 <= 3
 no_overlap_12_12: delta_12_12_0 + delta_12_12_1 + delta_12_12_2
   + delta_12_12_3 <= 3
 no_overlap_12_13: delta_12_13_0 + delta_12_13_1 + delta_12_13_2
   + delta_12_13_3 <= 3
 no_overlap_12_14: delta_12_14_0 + delta_12_14_1 + delta_12_14_2
   + delta_12_14_3 <= 3
 no_overlap_12_15: delta_12_15_0 + delta_12_15_1 + delta_12_15_2
   + delta_12_15_3 <= 3
 no_overlap_12_16: delta_12_16_0 + delta_12_16_1 + delta_12_16_2
   + delta_12_16_3 <= 3
 no_overlap_12_17: delta_12_17_0 + delta_12_17_1 + delta_12_17_2
   + delta_12_17_3 <= 3
 no_overlap_12_18: delta_12_18_0 + delta_12_18_1 + delta_12_18_2
   + delta_12_18_3 <= 3
 no_overlap_12_19: delta_12_19_0 + delta_12_19_1 + delta_12_19_2
   + delta_12_19_3 <= 3
 no_overlap_12_20: delta_12_20_0 + delta_12_20_1 + delta_12_20_2
   + delta_12_20_3 <= 3
 no_overlap_12_21: delta_12_21_0 + delta_12_21_1 + delta_12_21_2
   + delta_12_21_3 <= 3
 no_overlap_13_0: delta_13_0_0 + delta_13_0_1 + delta_13_0_2 + delta_13_0_3
   <= 3
 no_overlap_13_1: delta_13_1_0 + delta_13_1_1 + delta_13_1_2 + delta_13_1_3
   <= 3
 no_overlap_13_2: delta_13_2_0 + delta_13_2_1 + delta_13_2_2 + delta_13_2_3
   <= 3
 no_overlap_13_3: delta_13_3_0 + delta_13_3_1 + delta_13_3_2 + delta_13_3_3
   <= 3
 no_overlap_13_4: delta_13_4_0 + delta_13_4_1 + delta_13_4_2 + delta_13_4_3
   <= 3
 no_overlap_13_5: delta_13_5_0 + delta_13_5_1 + delta_13_5_2 + delta_13_5_3
   <= 3
 no_overlap_13_6: delta_13_6_0 + delta_13_6_1 + delta_13_6_2 + delta_13_6_3
   <= 3
 no_overlap_13_7: delta_13_7_0 + delta_13_7_1 + delta_13_7_2 + delta_13_7_3
   <= 3
 no_overlap_13_8: delta_13_8_0 + delta_13_8_1 + delta_13_8_2 + delta_13_8_3
   <= 3
 no_overlap_13_9: delta_13_9_0 + delta_13_9_1 + delta_13_9_2 + delta_13_9_3
   <= 3
 no_overlap_13_10: delta_13_10_0 + delta_13_10_1 + delta_13_10_2
   + delta_13_10_3 <= 3
 no_overlap_13_11: delta_13_11_0 + delta_13_11_1 + delta_13_11_2
   + delta_13_11_3 <= 3
 no_overlap_13_12: delta_13_12_0 + delta_13_12_1 + delta_13_12_2
   + delta_13_12_3 <= 3
 no_overlap_13_13: delta_13_13_0 + delta_13_13_1 + delta_13_13_2
   + delta_13_13_3 <= 3
 no_overlap_13_14: delta_13_14_0 + delta_13_14_1 + delta_13_14_2
   + delta_13_14_3 <= 3
 no_overlap_13_15: delta_13_15_0 + delta_13_15_1 + delta_13_15_2
   + delta_13_15_3 <= 3
 no_overlap_13_16: delta_13_16_0 + delta_13_16_1 + delta_13_16_2
   + delta_13_16_3 <= 3
 no_overlap_13_17: delta_13_17_0 + delta_13_17_1 + delta_13_17_2
   + delta_13_17_3 <= 3
 no_overlap_13_18: delta_13_18_0 + delta_13_18_1 + delta_13_18_2
   + delta_13_18_3 <= 3
 no_overlap_13_19: delta_13_19_0 + delta_13_19_1 + delta_13_19_2
   + delta_13_19_3 <= 3
 no_overlap_13_20: delta_13_20_0 + delta_13_20_1 + delta_13_20_2
   + delta_13_20_3 <= 3
 no_overlap_13_21: delta_13_21_0 + delta_13_21_1 + delta_13_21_2
   + delta_13_21_3 <= 3
 no_overlap_14_0: delta_14_0_0 + delta_14_0_1 + delta_14_0_2 + delta_14_0_3
   <= 3
 no_overlap_14_1: delta_14_1_0 + delta_14_1_1 + delta_14_1_2 + delta_14_1_3
   <= 3
 no_overlap_14_2: delta_14_2_0 + delta_14_2_1 + delta_14_2_2 + delta_14_2_3
   <= 3
 no_overlap_14_3: delta_14_3_0 + delta_14_3_1 + delta_14_3_2 + delta_14_3_3
   <= 3
 no_overlap_14_4: delta_14_4_0 + delta_14_4_1 + delta_14_4_2 + delta_14_4_3
   <= 3
 no_overlap_14_5: delta_14_5_0 + delta_14_5_1 + delta_14_5_2 + delta_14_5_3
   <= 3
 no_overlap_14_6: delta_14_6_0 + delta_14_6_1 + delta_14_6_2 + delta_14_6_3
   <= 3
 no_overlap_14_7: delta_14_7_0 + delta_14_7_1 + delta_14_7_2 + delta_14_7_3
   <= 3
 no_overlap_14_8: delta_14_8_0 + delta_14_8_1 + delta_14_8_2 + delta_14_8_3
   <= 3
 no_overlap_14_9: delta_14_9_0 + delta_14_9_1 + delta_14_9_2 + delta_14_9_3
   <= 3
 no_overlap_14_10: delta_14_10_0 + delta_14_10_1 + delta_14_10_2
   + delta_14_10_3 <= 3
 no_overlap_14_11: delta_14_11_0 + delta_14_11_1 + delta_14_11_2
   + delta_14_11_3 <= 3
 no_overlap_14_12: delta_14_12_0 + delta_14_12_1 + delta_14_12_2
   + delta_14_12_3 <= 3
 no_overlap_14_13: delta_14_13_0 + delta_14_13_1 + delta_14_13_2
   + delta_14_13_3 <= 3
 no_overlap_14_14: delta_14_14_0 + delta_14_14_1 + delta_14_14_2
   + delta_14_14_3 <= 3
 no_overlap_14_15: delta_14_15_0 + delta_14_15_1 + delta_14_15_2
   + delta_14_15_3 <= 3
 no_overlap_14_16: delta_14_16_0 + delta_14_16_1 + delta_14_16_2
   + delta_14_16_3 <= 3
 no_overlap_14_17: delta_14_17_0 + delta_14_17_1 + delta_14_17_2
   + delta_14_17_3 <= 3
 no_overlap_14_18: delta_14_18_0 + delta_14_18_1 + delta_14_18_2
   + delta_14_18_3 <= 3
 no_overlap_14_19: delta_14_19_0 + delta_14_19_1 + delta_14_19_2
   + delta_14_19_3 <= 3
 no_overlap_14_20: delta_14_20_0 + delta_14_20_1 + delta_14_20_2
   + delta_14_20_3 <= 3
 no_overlap_14_21: delta_14_21_0 + delta_14_21_1 + delta_14_21_2
   + delta_14_21_3 <= 3
 no_overlap_15_0: delta_15_0_0 + delta_15_0_1 + delta_15_0_2 + delta_15_0_3
   <= 3
 no_overlap_15_1: delta_15_1_0 + delta_15_1_1 + delta_15_1_2 + delta_15_1_3
   <= 3
 no_overlap_15_2: delta_15_2_0 + delta_15_2_1 + delta_15_2_2 + delta_15_2_3
   <= 3
 no_overlap_15_3: delta_15_3_0 + delta_15_3_1 + delta_15_3_2 + delta_15_3_3
   <= 3
 no_overlap_15_4: delta_15_4_0 + delta_15_4_1 + delta_15_4_2 + delta_15_4_3
   <= 3
 no_overlap_15_5: delta_15_5_0 + delta_15_5_1 + delta_15_5_2 + delta_15_5_3
   <= 3
 no_overlap_15_6: delta_15_6_0 + delta_15_6_1 + delta_15_6_2 + delta_15_6_3
   <= 3
 no_overlap_15_7: delta_15_7_0 + delta_15_7_1 + delta_15_7_2 + delta_15_7_3
   <= 3
 no_overlap_15_8: delta_15_8_0 + delta_15_8_1 + delta_15_8_2 + delta_15_8_3
   <= 3
 no_overlap_15_9: delta_15_9_0 + delta_15_9_1 + delta_15_9_2 + delta_15_9_3
   <= 3
 no_overlap_15_10: delta_15_10_0 + delta_15_10_1 + delta_15_10_2
   + delta_15_10_3 <= 3
 no_overlap_15_11: delta_15_11_0 + delta_15_11_1 + delta_15_11_2
   + delta_15_11_3 <= 3
 no_overlap_15_12: delta_15_12_0 + delta_15_12_1 + delta_15_12_2
   + delta_15_12_3 <= 3
 no_overlap_15_13: delta_15_13_0 + delta_15_13_1 + delta_15_13_2
   + delta_15_13_3 <= 3
 no_overlap_15_14: delta_15_14_0 + delta_15_14_1 + delta_15_14_2
   + delta_15_14_3 <= 3
 no_overlap_15_15: delta_15_15_0 + delta_15_15_1 + delta_15_15_2
   + delta_15_15_3 <= 3
 no_overlap_15_16: delta_15_16_0 + delta_15_16_1 + delta_15_16_2
   + delta_15_16_3 <= 3
 no_overlap_15_17: delta_15_17_0 + delta_15_17_1 + delta_15_17_2
   + delta_15_17_3 <= 3
 no_overlap_15_18: delta_15_18_0 + delta_15_18_1 + delta_15_18_2
   + delta_15_18_3 <= 3
 no_overlap_15_19: delta_15_19_0 + delta_15_19_1 + delta_15_19_2
   + delta_15_19_3 <= 3
 no_overlap_15_20: delta_15_20_0 + delta_15_20_1 + delta_15_20_2
   + delta_15_20_3 <= 3
 no_overlap_15_21: delta_15_21_0 + delta_15_21_1 + delta_15_21_2
   + delta_15_21_3 <= 3
 no_overlap_16_0: delta_16_0_0 + delta_16_0_1 + delta_16_0_2 + delta_16_0_3
   <= 3
 no_overlap_16_1: delta_16_1_0 + delta_16_1_1 + delta_16_1_2 + delta_16_1_3
   <= 3
 no_overlap_16_2: delta_16_2_0 + delta_16_2_1 + delta_16_2_2 + delta_16_2_3
   <= 3
 no_overlap_16_3: delta_16_3_0 + delta_16_3_1 + delta_16_3_2 + delta_16_3_3
   <= 3
 no_overlap_16_4: delta_16_4_0 + delta_16_4_1 + delta_16_4_2 + delta_16_4_3
   <= 3
 no_overlap_16_5: delta_16_5_0 + delta_16_5_1 + delta_16_5_2 + delta_16_5_3
   <= 3
 no_overlap_16_6: delta_16_6_0 + delta_16_6_1 + delta_16_6_2 + delta_16_6_3
   <= 3
 no_overlap_16_7: delta_16_7_0 + delta_16_7_1 + delta_16_7_2 + delta_16_7_3
   <= 3
 no_overlap_16_8: delta_16_8_0 + delta_16_8_1 + delta_16_8_2 + delta_16_8_3
   <= 3
 no_overlap_16_9: delta_16_9_0 + delta_16_9_1 + delta_16_9_2 + delta_16_9_3
   <= 3
 no_overlap_16_10: delta_16_10_0 + delta_16_10_1 + delta_16_10_2
   + delta_16_10_3 <= 3
 no_overlap_16_11: delta_16_11_0 + delta_16_11_1 + delta_16_11_2
   + delta_16_11_3 <= 3
 no_overlap_16_12: delta_16_12_0 + delta_16_12_1 + delta_16_12_2
   + delta_16_12_3 <= 3
 no_overlap_16_13: delta_16_13_0 + delta_16_13_1 + delta_16_13_2
   + delta_16_13_3 <= 3
 no_overlap_16_14: delta_16_14_0 + delta_16_14_1 + delta_16_14_2
   + delta_16_14_3 <= 3
 no_overlap_16_15: delta_16_15_0 + delta_16_15_1 + delta_16_15_2
   + delta_16_15_3 <= 3
 no_overlap_16_16: delta_16_16_0 + delta_16_16_1 + delta_16_16_2
   + delta_16_16_3 <= 3
 no_overlap_16_17: delta_16_17_0 + delta_16_17_1 + delta_16_17_2
   + delta_16_17_3 <= 3
 no_overlap_16_18: delta_16_18_0 + delta_16_18_1 + delta_16_18_2
   + delta_16_18_3 <= 3
 no_overlap_16_19: delta_16_19_0 + delta_16_19_1 + delta_16_19_2
   + delta_16_19_3 <= 3
 no_overlap_16_20: delta_16_20_0 + delta_16_20_1 + delta_16_20_2
   + delta_16_20_3 <= 3
 no_overlap_16_21: delta_16_21_0 + delta_16_21_1 + delta_16_21_2
   + delta_16_21_3 <= 3
 no_overlap_17_0: delta_17_0_0 + delta_17_0_1 + delta_17_0_2 + delta_17_0_3
   <= 3
 no_overlap_17_1: delta_17_1_0 + delta_17_1_1 + delta_17_1_2 + delta_17_1_3
   <= 3
 no_overlap_17_2: delta_17_2_0 + delta_17_2_1 + delta_17_2_2 + delta_17_2_3
   <= 3
 no_overlap_17_3: delta_17_3_0 + delta_17_3_1 + delta_17_3_2 + delta_17_3_3
   <= 3
 no_overlap_17_4: delta_17_4_0 + delta_17_4_1 + delta_17_4_2 + delta_17_4_3
   <= 3
 no_overlap_17_5: delta_17_5_0 + delta_17_5_1 + delta_17_5_2 + delta_17_5_3
   <= 3
 no_overlap_17_6: delta_17_6_0 + delta_17_6_1 + delta_17_6_2 + delta_17_6_3
   <= 3
 no_overlap_17_7: delta_17_7_0 + delta_17_7_1 + delta_17_7_2 + delta_17_7_3
   <= 3
 no_overlap_17_8: delta_17_8_0 + delta_17_8_1 + delta_17_8_2 + delta_17_8_3
   <= 3
 no_overlap_17_9: delta_17_9_0 + delta_17_9_1 + delta_17_9_2 + delta_17_9_3
   <= 3
 no_overlap_17_10: delta_17_10_0 + delta_17_10_1 + delta_17_10_2
   + delta_17_10_3 <= 3
 no_overlap_17_11: delta_17_11_0 + delta_17_11_1 + delta_17_11_2
   + delta_17_11_3 <= 3
 no_overlap_17_12: delta_17_12_0 + delta_17_12_1 + delta_17_12_2
   + delta_17_12_3 <= 3
 no_overlap_17_13: delta_17_13_0 + delta_17_13_1 + delta_17_13_2
   + delta_17_13_3 <= 3
 no_overlap_17_14: delta_17_14_0 + delta_17_14_1 + delta_17_14_2
   + delta_17_14_3 <= 3
 no_overlap_17_15: delta_17_15_0 + delta_17_15_1 + delta_17_15_2
   + delta_17_15_3 <= 3
 no_overlap_17_16: delta_17_16_0 + delta_17_16_1 + delta_17_16_2
   + delta_17_16_3 <= 3
 no_overlap_17_17: delta_17_17_0 + delta_17_17_1 + delta_17_17_2
   + delta_17_17_3 <= 3
 no_overlap_17_18: delta_17_18_0 + delta_17_18_1 + delta_17_18_2
   + delta_17_18_3 <= 3
 no_overlap_17_19: delta_17_19_0 + delta_17_19_1 + delta_17_19_2
   + delta_17_19_3 <= 3
 no_overlap_17_20: delta_17_20_0 + delta_17_20_1 + delta_17_20_2
   + delta_17_20_3 <= 3
 no_overlap_17_21: delta_17_21_0 + delta_17_21_1 + delta_17_21_2
   + delta_17_21_3 <= 3
 no_overlap_18_0: delta_18_0_0 + delta_18_0_1 + delta_18_0_2 + delta_18_0_3
   <= 3
 no_overlap_18_1: delta_18_1_0 + delta_18_1_1 + delta_18_1_2 + delta_18_1_3
   <= 3
 no_overlap_18_2: delta_18_2_0 + delta_18_2_1 + delta_18_2_2 + delta_18_2_3
   <= 3
 no_overlap_18_3: delta_18_3_0 + delta_18_3_1 + delta_18_3_2 + delta_18_3_3
   <= 3
 no_overlap_18_4: delta_18_4_0 + delta_18_4_1 + delta_18_4_2 + delta_18_4_3
   <= 3
 no_overlap_18_5: delta_18_5_0 + delta_18_5_1 + delta_18_5_2 + delta_18_5_3
   <= 3
 no_overlap_18_6: delta_18_6_0 + delta_18_6_1 + delta_18_6_2 + delta_18_6_3
   <= 3
 no_overlap_18_7: delta_18_7_0 + delta_18_7_1 + delta_18_7_2 + delta_18_7_3
   <= 3
 no_overlap_18_8: delta_18_8_0 + delta_18_8_1 + delta_18_8_2 + delta_18_8_3
   <= 3
 no_overlap_18_9: delta_18_9_0 + delta_18_9_1 + delta_18_9_2 + delta_18_9_3
   <= 3
 no_overlap_18_10: delta_18_10_0 + delta_18_10_1 + delta_18_10_2
   + delta_18_10_3 <= 3
 no_overlap_18_11: delta_18_11_0 + delta_18_11_1 + delta_18_11_2
   + delta_18_11_3 <= 3
 no_overlap_18_12: delta_18_12_0 + delta_18_12_1 + delta_18_12_2
   + delta_18_12_3 <= 3
 no_overlap_18_13: delta_18_13_0 + delta_18_13_1 + delta_18_13_2
   + delta_18_13_3 <= 3
 no_overlap_18_14: delta_18_14_0 + delta_18_14_1 + delta_18_14_2
   + delta_18_14_3 <= 3
 no_overlap_18_15: delta_18_15_0 + delta_18_15_1 + delta_18_15_2
   + delta_18_15_3 <= 3
 no_overlap_18_16: delta_18_16_0 + delta_18_16_1 + delta_18_16_2
   + delta_18_16_3 <= 3
 no_overlap_18_17: delta_18_17_0 + delta_18_17_1 + delta_18_17_2
   + delta_18_17_3 <= 3
 no_overlap_18_18: delta_18_18_0 + delta_18_18_1 + delta_18_18_2
   + delta_18_18_3 <= 3
 no_overlap_18_19: delta_18_19_0 + delta_18_19_1 + delta_18_19_2
   + delta_18_19_3 <= 3
 no_overlap_18_20: delta_18_20_0 + delta_18_20_1 + delta_18_20_2
   + delta_18_20_3 <= 3
 no_overlap_18_21: delta_18_21_0 + delta_18_21_1 + delta_18_21_2
   + delta_18_21_3 <= 3
 no_overlap_19_0: delta_19_0_0 + delta_19_0_1 + delta_19_0_2 + delta_19_0_3
   <= 3
 no_overlap_19_1: delta_19_1_0 + delta_19_1_1 + delta_19_1_2 + delta_19_1_3
   <= 3
 no_overlap_19_2: delta_19_2_0 + delta_19_2_1 + delta_19_2_2 + delta_19_2_3
   <= 3
 no_overlap_19_3: delta_19_3_0 + delta_19_3_1 + delta_19_3_2 + delta_19_3_3
   <= 3
 no_overlap_19_4: delta_19_4_0 + delta_19_4_1 + delta_19_4_2 + delta_19_4_3
   <= 3
 no_overlap_19_5: delta_19_5_0 + delta_19_5_1 + delta_19_5_2 + delta_19_5_3
   <= 3
 no_overlap_19_6: delta_19_6_0 + delta_19_6_1 + delta_19_6_2 + delta_19_6_3
   <= 3
 no_overlap_19_7: delta_19_7_0 + delta_19_7_1 + delta_19_7_2 + delta_19_7_3
   <= 3
 no_overlap_19_8: delta_19_8_0 + delta_19_8_1 + delta_19_8_2 + delta_19_8_3
   <= 3
 no_overlap_19_9: delta_19_9_0 + delta_19_9_1 + delta_19_9_2 + delta_19_9_3
   <= 3
 no_overlap_19_10: delta_19_10_0 + delta_19_10_1 + delta_19_10_2
   + delta_19_10_3 <= 3
 no_overlap_19_11: delta_19_11_0 + delta_19_11_1 + delta_19_11_2
   + delta_19_11_3 <= 3
 no_overlap_19_12: delta_19_12_0 + delta_19_12_1 + delta_19_12_2
   + delta_19_12_3 <= 3
 no_overlap_19_13: delta_19_13_0 + delta_19_13_1 + delta_19_13_2
   + delta_19_13_3 <= 3
 no_overlap_19_14: delta_19_14_0 + delta_19_14_1 + delta_19_14_2
   + delta_19_14_3 <= 3
 no_overlap_19_15: delta_19_15_0 + delta_19_15_1 + delta_19_15_2
   + delta_19_15_3 <= 3
 no_overlap_19_16: delta_19_16_0 + delta_19_16_1 + delta_19_16_2
   + delta_19_16_3 <= 3
 no_overlap_19_17: delta_19_17_0 + delta_19_17_1 + delta_19_17_2
   + delta_19_17_3 <= 3
 no_overlap_19_18: delta_19_18_0 + delta_19_18_1 + delta_19_18_2
   + delta_19_18_3 <= 3
 no_overlap_19_19: delta_19_19_0 + delta_19_19_1 + delta_19_19_2
   + delta_19_19_3 <= 3
 no_overlap_19_20: delta_19_20_0 + delta_19_20_1 + delta_19_20_2
   + delta_19_20_3 <= 3
 no_overlap_19_21: delta_19_21_0 + delta_19_21_1 + delta_19_21_2
   + delta_19_21_3 <= 3
 no_overlap_20_0: delta_20_0_0 + delta_20_0_1 + delta_20_0_2 + delta_20_0_3
   <= 3
 no_overlap_20_1: delta_20_1_0 + delta_20_1_1 + delta_20_1_2 + delta_20_1_3
   <= 3
 no_overlap_20_2: delta_20_2_0 + delta_20_2_1 + delta_20_2_2 + delta_20_2_3
   <= 3
 no_overlap_20_3: delta_20_3_0 + delta_20_3_1 + delta_20_3_2 + delta_20_3_3
   <= 3
 no_overlap_20_4: delta_20_4_0 + delta_20_4_1 + delta_20_4_2 + delta_20_4_3
   <= 3
 no_overlap_20_5: delta_20_5_0 + delta_20_5_1 + delta_20_5_2 + delta_20_5_3
   <= 3
 no_overlap_20_6: delta_20_6_0 + delta_20_6_1 + delta_20_6_2 + delta_20_6_3
   <= 3
 no_overlap_20_7: delta_20_7_0 + delta_20_7_1 + delta_20_7_2 + delta_20_7_3
   <= 3
 no_overlap_20_8: delta_20_8_0 + delta_20_8_1 + delta_20_8_2 + delta_20_8_3
   <= 3
 no_overlap_20_9: delta_20_9_0 + delta_20_9_1 + delta_20_9_2 + delta_20_9_3
   <= 3
 no_overlap_20_10: delta_20_10_0 + delta_20_10_1 + delta_20_10_2
   + delta_20_10_3 <= 3
 no_overlap_20_11: delta_20_11_0 + delta_20_11_1 + delta_20_11_2
   + delta_20_11_3 <= 3
 no_overlap_20_12: delta_20_12_0 + delta_20_12_1 + delta_20_12_2
   + delta_20_12_3 <= 3
 no_overlap_20_13: delta_20_13_0 + delta_20_13_1 + delta_20_13_2
   + delta_20_13_3 <= 3
 no_overlap_20_14: delta_20_14_0 + delta_20_14_1 + delta_20_14_2
   + delta_20_14_3 <= 3
 no_overlap_20_15: delta_20_15_0 + delta_20_15_1 + delta_20_15_2
   + delta_20_15_3 <= 3
 no_overlap_20_16: delta_20_16_0 + delta_20_16_1 + delta_20_16_2
   + delta_20_16_3 <= 3
 no_overlap_20_17: delta_20_17_0 + delta_20_17_1 + delta_20_17_2
   + delta_20_17_3 <= 3
 no_overlap_20_18: delta_20_18_0 + delta_20_18_1 + delta_20_18_2
   + delta_20_18_3 <= 3
 no_overlap_20_19: delta_20_19_0 + delta_20_19_1 + delta_20_19_2
   + delta_20_19_3 <= 3
 no_overlap_20_20: delta_20_20_0 + delta_20_20_1 + delta_20_20_2
   + delta_20_20_3 <= 3
 no_overlap_20_21: delta_20_21_0 + delta_20_21_1 + delta_20_21_2
   + delta_20_21_3 <= 3
 no_overlap_21_0: delta_21_0_0 + delta_21_0_1 + delta_21_0_2 + delta_21_0_3
   <= 3
 no_overlap_21_1: delta_21_1_0 + delta_21_1_1 + delta_21_1_2 + delta_21_1_3
   <= 3
 no_overlap_21_2: delta_21_2_0 + delta_21_2_1 + delta_21_2_2 + delta_21_2_3
   <= 3
 no_overlap_21_3: delta_21_3_0 + delta_21_3_1 + delta_21_3_2 + delta_21_3_3
   <= 3
 no_overlap_21_4: delta_21_4_0 + delta_21_4_1 + delta_21_4_2 + delta_21_4_3
   <= 3
 no_overlap_21_5: delta_21_5_0 + delta_21_5_1 + delta_21_5_2 + delta_21_5_3
   <= 3
 no_overlap_21_6: delta_21_6_0 + delta_21_6_1 + delta_21_6_2 + delta_21_6_3
   <= 3
 no_overlap_21_7: delta_21_7_0 + delta_21_7_1 + delta_21_7_2 + delta_21_7_3
   <= 3
 no_overlap_21_8: delta_21_8_0 + delta_21_8_1 + delta_21_8_2 + delta_21_8_3
   <= 3
 no_overlap_21_9: delta_21_9_0 + delta_21_9_1 + delta_21_9_2 + delta_21_9_3
   <= 3
 no_overlap_21_10: delta_21_10_0 + delta_21_10_1 + delta_21_10_2
   + delta_21_10_3 <= 3
 no_overlap_21_11: delta_21_11_0 + delta_21_11_1 + delta_21_11_2
   + delta_21_11_3 <= 3
 no_overlap_21_12: delta_21_12_0 + delta_21_12_1 + delta_21_12_2
   + delta_21_12_3 <= 3
 no_overlap_21_13: delta_21_13_0 + delta_21_13_1 + delta_21_13_2
   + delta_21_13_3 <= 3
 no_overlap_21_14: delta_21_14_0 + delta_21_14_1 + delta_21_14_2
   + delta_21_14_3 <= 3
 no_overlap_21_15: delta_21_15_0 + delta_21_15_1 + delta_21_15_2
   + delta_21_15_3 <= 3
 no_overlap_21_16: delta_21_16_0 + delta_21_16_1 + delta_21_16_2
   + delta_21_16_3 <= 3
 no_overlap_21_17: delta_21_17_0 + delta_21_17_1 + delta_21_17_2
   + delta_21_17_3 <= 3
 no_overlap_21_18: delta_21_18_0 + delta_21_18_1 + delta_21_18_2
   + delta_21_18_3 <= 3
 no_overlap_21_19: delta_21_19_0 + delta_21_19_1 + delta_21_19_2
   + delta_21_19_3 <= 3
 no_overlap_21_20: delta_21_20_0 + delta_21_20_1 + delta_21_20_2
   + delta_21_20_3 <= 3
 no_overlap_21_21: delta_21_21_0 + delta_21_21_1 + delta_21_21_2
   + delta_21_21_3 <= 3
 vc1_0_1: y_0 - y_1 + [ - height * delta_0_1_1 ] <= -3
 vc2_0_1: - y_0 + y_1 - rotation_1 + [ - height * delta_0_1_3 ] <= -4
 vc1_0_2: y_0 - y_2 + [ - height * delta_0_2_1 ] <= -3
 vc2_0_2: - y_0 + y_2 - 2 rotation_2 + [ - height * delta_0_2_3 ] <= -5
 vc1_0_3: y_0 - y_3 + [ - height * delta_0_3_1 ] <= -3
 vc2_0_3: - y_0 + y_3 - 3 rotation_3 + [ - height * delta_0_3_3 ] <= -6
 vc1_0_4: y_0 - y_4 + [ - height * delta_0_4_1 ] <= -3
 vc2_0_4: - y_0 + y_4 - 4 rotation_4 + [ - height * delta_0_4_3 ] <= -7
 vc1_0_5: y_0 - y_5 + [ - height * delta_0_5_1 ] <= -3
 vc2_0_5: - y_0 + y_5 - 5 rotation_5 + [ - height * delta_0_5_3 ] <= -8
 vc1_0_6: y_0 - y_6 + [ - height * delta_0_6_1 ] <= -3
 vc2_0_6: - y_0 + y_6 - 6 rotation_6 + [ - height * delta_0_6_3 ] <= -9
 vc1_0_7: y_0 - y_7 + [ - height * delta_0_7_1 ] <= -3
 vc2_0_7: - y_0 + y_7 - 7 rotation_7 + [ - height * delta_0_7_3 ] <= -10
 vc1_0_8: y_0 - y_8 + [ - height * delta_0_8_1 ] <= -3
 vc2_0_8: - y_0 + y_8 - 9 rotation_8 + [ - height * delta_0_8_3 ] <= -12
 vc1_0_9: y_0 - y_9 + [ - height * delta_0_9_1 ] <= -3
 vc2_0_9: - y_0 + y_9 - 16 rotation_9 + [ - height * delta_0_9_3 ] <= -19
 vc1_0_10: y_0 - y_10 + [ - height * delta_0_10_1 ] <= -3
 vc2_0_10: - y_0 + y_10 - 19 rotation_10 + [ - height * delta_0_10_3 ]
   <= -22
 vc1_0_11: y_0 - y_11 + [ - height * delta_0_11_1 ] <= -3
 vc2_0_11: - y_0 + y_11 + rotation_11 + [ - height * delta_0_11_3 ] <= -3
 vc1_0_12: y_0 - y_12 + [ - height * delta_0_12_1 ] <= -3
 vc2_0_12: - y_0 + y_12 + [ - height * delta_0_12_3 ] <= -4
 vc1_0_13: y_0 - y_13 + [ - height * delta_0_13_1 ] <= -3
 vc2_0_13: - y_0 + y_13 - rotation_13 + [ - height * delta_0_13_3 ] <= -5
 vc1_0_14: y_0 - y_14 + [ - height * delta_0_14_1 ] <= -3
 vc2_0_14: - y_0 + y_14 - 2 rotation_14 + [ - height * delta_0_14_3 ]
   <= -6
 vc1_0_15: y_0 - y_15 + [ - height * delta_0_15_1 ] <= -3
 vc2_0_15: - y_0 + y_15 - 3 rotation_15 + [ - height * delta_0_15_3 ]
   <= -7
 vc1_0_16: y_0 - y_16 + [ - height * delta_0_16_1 ] <= -3
 vc2_0_16: - y_0 + y_16 - 4 rotation_16 + [ - height * delta_0_16_3 ]
   <= -8
 vc1_0_17: y_0 - y_17 + [ - height * delta_0_17_1 ] <= -3
 vc2_0_17: - y_0 + y_17 - 8 rotation_17 + [ - height * delta_0_17_3 ]
   <= -12
 vc1_0_18: y_0 - y_18 + [ - height * delta_0_18_1 ] <= -3
 vc2_0_18: - y_0 + y_18 - 13 rotation_18 + [ - height * delta_0_18_3 ]
   <= -17
 vc1_0_19: y_0 - y_19 + [ - height * delta_0_19_1 ] <= -3
 vc2_0_19: - y_0 + y_19 - 16 rotation_19 + [ - height * delta_0_19_3 ]
   <= -20
 vc1_0_20: y_0 - y_20 + [ - height * delta_0_20_1 ] <= -3
 vc2_0_20: - y_0 + y_20 - 19 rotation_20 + [ - height * delta_0_20_3 ]
   <= -23
 vc1_0_21: y_0 - y_21 + [ - height * delta_0_21_1 ] <= -3
 vc2_0_21: - y_0 + y_21 - 21 rotation_21 + [ - height * delta_0_21_3 ]
   <= -35
 vc1_1_2: y_1 - y_2 - rotation_1 + [ - height * delta_1_2_1 ] <= -4
 vc2_1_2: - y_1 + y_2 - 2 rotation_2 + [ - height * delta_1_2_3 ] <= -5
 vc1_1_3: y_1 - y_3 - rotation_1 + [ - height * delta_1_3_1 ] <= -4
 vc2_1_3: - y_1 + y_3 - 3 rotation_3 + [ - height * delta_1_3_3 ] <= -6
 vc1_1_4: y_1 - y_4 - rotation_1 + [ - height * delta_1_4_1 ] <= -4
 vc2_1_4: - y_1 + y_4 - 4 rotation_4 + [ - height * delta_1_4_3 ] <= -7
 vc1_1_5: y_1 - y_5 - rotation_1 + [ - height * delta_1_5_1 ] <= -4
 vc2_1_5: - y_1 + y_5 - 5 rotation_5 + [ - height * delta_1_5_3 ] <= -8
 vc1_1_6: y_1 - y_6 - rotation_1 + [ - height * delta_1_6_1 ] <= -4
 vc2_1_6: - y_1 + y_6 - 6 rotation_6 + [ - height * delta_1_6_3 ] <= -9
 vc1_1_7: y_1 - y_7 - rotation_1 + [ - height * delta_1_7_1 ] <= -4
 vc2_1_7: - y_1 + y_7 - 7 rotation_7 + [ - height * delta_1_7_3 ] <= -10
 vc1_1_8: y_1 - y_8 - rotation_1 + [ - height * delta_1_8_1 ] <= -4
 vc2_1_8: - y_1 + y_8 - 9 rotation_8 + [ - height * delta_1_8_3 ] <= -12
 vc1_1_9: y_1 - y_9 - rotation_1 + [ - height * delta_1_9_1 ] <= -4
 vc2_1_9: - y_1 + y_9 - 16 rotation_9 + [ - height * delta_1_9_3 ] <= -19
 vc1_1_10: y_1 - y_10 - rotation_1 + [ - height * delta_1_10_1 ] <= -4
 vc2_1_10: - y_1 + y_10 - 19 rotation_10 + [ - height * delta_1_10_3 ]
   <= -22
 vc1_1_11: y_1 - y_11 - rotation_1 + [ - height * delta_1_11_1 ] <= -4
 vc2_1_11: - y_1 + y_11 + rotation_11 + [ - height * delta_1_11_3 ] <= -3
 vc1_1_12: y_1 - y_12 - rotation_1 + [ - height * delta_1_12_1 ] <= -4
 vc2_1_12: - y_1 + y_12 + [ - height * delta_1_12_3 ] <= -4
 vc1_1_13: y_1 - y_13 - rotation_1 + [ - height * delta_1_13_1 ] <= -4
 vc2_1_13: - y_1 + y_13 - rotation_13 + [ - height * delta_1_13_3 ] <= -5
 vc1_1_14: y_1 - y_14 - rotation_1 + [ - height * delta_1_14_1 ] <= -4
 vc2_1_14: - y_1 + y_14 - 2 rotation_14 + [ - height * delta_1_14_3 ]
   <= -6
 vc1_1_15: y_1 - y_15 - rotation_1 + [ - height * delta_1_15_1 ] <= -4
 vc2_1_15: - y_1 + y_15 - 3 rotation_15 + [ - height * delta_1_15_3 ]
   <= -7
 vc1_1_16: y_1 - y_16 - rotation_1 + [ - height * delta_1_16_1 ] <= -4
 vc2_1_16: - y_1 + y_16 - 4 rotation_16 + [ - height * delta_1_16_3 ]
   <= -8
 vc1_1_17: y_1 - y_17 - rotation_1 + [ - height * delta_1_17_1 ] <= -4
 vc2_1_17: - y_1 + y_17 - 8 rotation_17 + [ - height * delta_1_17_3 ]
   <= -12
 vc1_1_18: y_1 - y_18 - rotation_1 + [ - height * delta_1_18_1 ] <= -4
 vc2_1_18: - y_1 + y_18 - 13 rotation_18 + [ - height * delta_1_18_3 ]
   <= -17
 vc1_1_19: y_1 - y_19 - rotation_1 + [ - height * delta_1_19_1 ] <= -4
 vc2_1_19: - y_1 + y_19 - 16 rotation_19 + [ - height * delta_1_19_3 ]
   <= -20
 vc1_1_20: y_1 - y_20 - rotation_1 + [ - height * delta_1_20_1 ] <= -4
 vc2_1_20: - y_1 + y_20 - 19 rotation_20 + [ - height * delta_1_20_3 ]
   <= -23
 vc1_1_21: y_1 - y_21 - rotation_1 + [ - height * delta_1_21_1 ] <= -4
 vc2_1_21: - y_1 + y_21 - 21 rotation_21 + [ - height * delta_1_21_3 ]
   <= -35
 vc1_2_3: y_2 - y_3 - 2 rotation_2 + [ - height * delta_2_3_1 ] <= -5
 vc2_2_3: - y_2 + y_3 - 3 rotation_3 + [ - height * delta_2_3_3 ] <= -6
 vc1_2_4: y_2 - y_4 - 2 rotation_2 + [ - height * delta_2_4_1 ] <= -5
 vc2_2_4: - y_2 + y_4 - 4 rotation_4 + [ - height * delta_2_4_3 ] <= -7
 vc1_2_5: y_2 - y_5 - 2 rotation_2 + [ - height * delta_2_5_1 ] <= -5
 vc2_2_5: - y_2 + y_5 - 5 rotation_5 + [ - height * delta_2_5_3 ] <= -8
 vc1_2_6: y_2 - y_6 - 2 rotation_2 + [ - height * delta_2_6_1 ] <= -5
 vc2_2_6: - y_2 + y_6 - 6 rotation_6 + [ - height * delta_2_6_3 ] <= -9
 vc1_2_7: y_2 - y_7 - 2 rotation_2 + [ - height * delta_2_7_1 ] <= -5
 vc2_2_7: - y_2 + y_7 - 7 rotation_7 + [ - height * delta_2_7_3 ] <= -10
 vc1_2_8: y_2 - y_8 - 2 rotation_2 + [ - height * delta_2_8_1 ] <= -5
 vc2_2_8: - y_2 + y_8 - 9 rotation_8 + [ - height * delta_2_8_3 ] <= -12
 vc1_2_9: y_2 - y_9 - 2 rotation_2 + [ - height * delta_2_9_1 ] <= -5
 vc2_2_9: - y_2 + y_9 - 16 rotation_9 + [ - height * delta_2_9_3 ] <= -19
 vc1_2_10: y_2 - y_10 - 2 rotation_2 + [ - height * delta_2_10_1 ] <= -5
 vc2_2_10: - y_2 + y_10 - 19 rotation_10 + [ - height * delta_2_10_3 ]
   <= -22
 vc1_2_11: y_2 - y_11 - 2 rotation_2 + [ - height * delta_2_11_1 ] <= -5
 vc2_2_11: - y_2 + y_11 + rotation_11 + [ - height * delta_2_11_3 ] <= -3
 vc1_2_12: y_2 - y_12 - 2 rotation_2 + [ - height * delta_2_12_1 ] <= -5
 vc2_2_12: - y_2 + y_12 + [ - height * delta_2_12_3 ] <= -4
 vc1_2_13: y_2 - y_13 - 2 rotation_2 + [ - height * delta_2_13_1 ] <= -5
 vc2_2_13: - y_2 + y_13 - rotation_13 + [ - height * delta_2_13_3 ] <= -5
 vc1_2_14: y_2 - y_14 - 2 rotation_2 + [ - height * delta_2_14_1 ] <= -5
 vc2_2_14: - y_2 + y_14 - 2 rotation_14 + [ - height * delta_2_14_3 ]
   <= -6
 vc1_2_15: y_2 - y_15 - 2 rotation_2 + [ - height * delta_2_15_1 ] <= -5
 vc2_2_15: - y_2 + y_15 - 3 rotation_15 + [ - height * delta_2_15_3 ]
   <= -7
 vc1_2_16: y_2 - y_16 - 2 rotation_2 + [ - height * delta_2_16_1 ] <= -5
 vc2_2_16: - y_2 + y_16 - 4 rotation_16 + [ - height * delta_2_16_3 ]
   <= -8
 vc1_2_17: y_2 - y_17 - 2 rotation_2 + [ - height * delta_2_17_1 ] <= -5
 vc2_2_17: - y_2 + y_17 - 8 rotation_17 + [ - height * delta_2_17_3 ]
   <= -12
 vc1_2_18: y_2 - y_18 - 2 rotation_2 + [ - height * delta_2_18_1 ] <= -5
 vc2_2_18: - y_2 + y_18 - 13 rotation_18 + [ - height * delta_2_18_3 ]
   <= -17
 vc1_2_19: y_2 - y_19 - 2 rotation_2 + [ - height * delta_2_19_1 ] <= -5
 vc2_2_19: - y_2 + y_19 - 16 rotation_19 + [ - height * delta_2_19_3 ]
   <= -20
 vc1_2_20: y_2 - y_20 - 2 rotation_2 + [ - height * delta_2_20_1 ] <= -5
 vc2_2_20: - y_2 + y_20 - 19 rotation_20 + [ - height * delta_2_20_3 ]
   <= -23
 vc1_2_21: y_2 - y_21 - 2 rotation_2 + [ - height * delta_2_21_1 ] <= -5
 vc2_2_21: - y_2 + y_21 - 21 rotation_21 + [ - height * delta_2_21_3 ]
   <= -35
 vc1_3_4: y_3 - y_4 - 3 rotation_3 + [ - height * delta_3_4_1 ] <= -6
 vc2_3_4: - y_3 + y_4 - 4 rotation_4 + [ - height * delta_3_4_3 ] <= -7
 vc1_3_5: y_3 - y_5 - 3 rotation_3 + [ - height * delta_3_5_1 ] <= -6
 vc2_3_5: - y_3 + y_5 - 5 rotation_5 + [ - height * delta_3_5_3 ] <= -8
 vc1_3_6: y_3 - y_6 - 3 rotation_3 + [ - height * delta_3_6_1 ] <= -6
 vc2_3_6: - y_3 + y_6 - 6 rotation_6 + [ - height * delta_3_6_3 ] <= -9
 vc1_3_7: y_3 - y_7 - 3 rotation_3 + [ - height * delta_3_7_1 ] <= -6
 vc2_3_7: - y_3 + y_7 - 7 rotation_7 + [ - height * delta_3_7_3 ] <= -10
 vc1_3_8: y_3 - y_8 - 3 rotation_3 + [ - height * delta_3_8_1 ] <= -6
 vc2_3_8: - y_3 + y_8 - 9 rotation_8 + [ - height * delta_3_8_3 ] <= -12
 vc1_3_9: y_3 - y_9 - 3 rotation_3 + [ - height * delta_3_9_1 ] <= -6
 vc2_3_9: - y_3 + y_9 - 16 rotation_9 + [ - height * delta_3_9_3 ] <= -19
 vc1_3_10: y_3 - y_10 - 3 rotation_3 + [ - height * delta_3_10_1 ] <= -6
 vc2_3_10: - y_3 + y_10 - 19 rotation_10 + [ - height * delta_3_10_3 ]
   <= -22
 vc1_3_11: y_3 - y_11 - 3 rotation_3 + [ - height * delta_3_11_1 ] <= -6
 vc2_3_11: - y_3 + y_11 + rotation_11 + [ - height * delta_3_11_3 ] <= -3
 vc1_3_12: y_3 - y_12 - 3 rotation_3 + [ - height * delta_3_12_1 ] <= -6
 vc2_3_12: - y_3 + y_12 + [ - height * delta_3_12_3 ] <= -4
 vc1_3_13: y_3 - y_13 - 3 rotation_3 + [ - height * delta_3_13_1 ] <= -6
 vc2_3_13: - y_3 + y_13 - rotation_13 + [ - height * delta_3_13_3 ] <= -5
 vc1_3_14: y_3 - y_14 - 3 rotation_3 + [ - height * delta_3_14_1 ] <= -6
 vc2_3_14: - y_3 + y_14 - 2 rotation_14 + [ - height * delta_3_14_3 ]
   <= -6
 vc1_3_15: y_3 - y_15 - 3 rotation_3 + [ - height * delta_3_15_1 ] <= -6
 vc2_3_15: - y_3 + y_15 - 3 rotation_15 + [ - height * delta_3_15_3 ]
   <= -7
 vc1_3_16: y_3 - y_16 - 3 rotation_3 + [ - height * delta_3_16_1 ] <= -6
 vc2_3_16: - y_3 + y_16 - 4 rotation_16 + [ - height * delta_3_16_3 ]
   <= -8
 vc1_3_17: y_3 - y_17 - 3 rotation_3 + [ - height * delta_3_17_1 ] <= -6
 vc2_3_17: - y_3 + y_17 - 8 rotation_17 + [ - height * delta_3_17_3 ]
   <= -12
 vc1_3_18: y_3 - y_18 - 3 rotation_3 + [ - height * delta_3_18_1 ] <= -6
 vc2_3_18: - y_3 + y_18 - 13 rotation_18 + [ - height * delta_3_18_3 ]
   <= -17
 vc1_3_19: y_3 - y_19 - 3 rotation_3 + [ - height * delta_3_19_1 ] <= -6
 vc2_3_19: - y_3 + y_19 - 16 rotation_19 + [ - height * delta_3_19_3 ]
   <= -20
 vc1_3_20: y_3 - y_20 - 3 rotation_3 + [ - height * delta_3_20_1 ] <= -6
 vc2_3_20: - y_3 + y_20 - 19 rotation_20 + [ - height * delta_3_20_3 ]
   <= -23
 vc1_3_21: y_3 - y_21 - 3 rotation_3 + [ - height * delta_3_21_1 ] <= -6
 vc2_3_21: - y_3 + y_21 - 21 rotation_21 + [ - height * delta_3_21_3 ]
   <= -35
 vc1_4_5: y_4 - y_5 - 4 rotation_4 + [ - height * delta_4_5_1 ] <= -7
 vc2_4_5: - y_4 + y_5 - 5 rotation_5 + [ - height * delta_4_5_3 ] <= -8
 vc1_4_6: y_4 - y_6 - 4 rotation_4 + [ - height * delta_4_6_1 ] <= -7
 vc2_4_6: - y_4 + y_6 - 6 rotation_6 + [ - height * delta_4_6_3 ] <= -9
 vc1_4_7: y_4 - y_7 - 4 rotation_4 + [ - height * delta_4_7_1 ] <= -7
 vc2_4_7: - y_4 + y_7 - 7 rotation_7 + [ - height * delta_4_7_3 ] <= -10
 vc1_4_8: y_4 - y_8 - 4 rotation_4 + [ - height * delta_4_8_1 ] <= -7
 vc2_4_8: - y_4 + y_8 - 9 rotation_8 + [ - height * delta_4_8_3 ] <= -12
 vc1_4_9: y_4 - y_9 - 4 rotation_4 + [ - height * delta_4_9_1 ] <= -7
 vc2_4_9: - y_4 + y_9 - 16 rotation_9 + [ - height * delta_4_9_3 ] <= -19
 vc1_4_10: y_4 - y_10 - 4 rotation_4 + [ - height * delta_4_10_1 ] <= -7
 vc2_4_10: - y_4 + y_10 - 19 rotation_10 + [ - height * delta_4_10_3 ]
   <= -22
 vc1_4_11: y_4 - y_11 - 4 rotation_4 + [ - height * delta_4_11_1 ] <= -7
 vc2_4_11: - y_4 + y_11 + rotation_11 + [ - height * delta_4_11_3 ] <= -3
 vc1_4_12: y_4 - y_12 - 4 rotation_4 + [ - height * delta_4_12_1 ] <= -7
 vc2_4_12: - y_4 + y_12 + [ - height * delta_4_12_3 ] <= -4
 vc1_4_13: y_4 - y_13 - 4 rotation_4 + [ - height * delta_4_13_1 ] <= -7
 vc2_4_13: - y_4 + y_13 - rotation_13 + [ - height * delta_4_13_3 ] <= -5
 vc1_4_14: y_4 - y_14 - 4 rotation_4 + [ - height * delta_4_14_1 ] <= -7
 vc2_4_14: - y_4 + y_14 - 2 rotation_14 + [ - height * delta_4_14_3 ]
   <= -6
 vc1_4_15: y_4 - y_15 - 4 rotation_4 + [ - height * delta_4_15_1 ] <= -7
 vc2_4_15: - y_4 + y_15 - 3 rotation_15 + [ - height * delta_4_15_3 ]
   <= -7
 vc1_4_16: y_4 - y_16 - 4 rotation_4 + [ - height * delta_4_16_1 ] <= -7
 vc2_4_16: - y_4 + y_16 - 4 rotation_16 + [ - height * delta_4_16_3 ]
   <= -8
 vc1_4_17: y_4 - y_17 - 4 rotation_4 + [ - height * delta_4_17_1 ] <= -7
 vc2_4_17: - y_4 + y_17 - 8 rotation_17 + [ - height * delta_4_17_3 ]
   <= -12
 vc1_4_18: y_4 - y_18 - 4 rotation_4 + [ - height * delta_4_18_1 ] <= -7
 vc2_4_18: - y_4 + y_18 - 13 rotation_18 + [ - height * delta_4_18_3 ]
   <= -17
 vc1_4_19: y_4 - y_19 - 4 rotation_4 + [ - height * delta_4_19_1 ] <= -7
 vc2_4_19: - y_4 + y_19 - 16 rotation_19 + [ - height * delta_4_19_3 ]
   <= -20
 vc1_4_20: y_4 - y_20 - 4 rotation_4 + [ - height * delta_4_20_1 ] <= -7
 vc2_4_20: - y_4 + y_20 - 19 rotation_20 + [ - height * delta_4_20_3 ]
   <= -23
 vc1_4_21: y_4 - y_21 - 4 rotation_4 + [ - height * delta_4_21_1 ] <= -7
 vc2_4_21: - y_4 + y_21 - 21 rotation_21 + [ - height * delta_4_21_3 ]
   <= -35
 vc1_5_6: y_5 - y_6 - 5 rotation_5 + [ - height * delta_5_6_1 ] <= -8
 vc2_5_6: - y_5 + y_6 - 6 rotation_6 + [ - height * delta_5_6_3 ] <= -9
 vc1_5_7: y_5 - y_7 - 5 rotation_5 + [ - height * delta_5_7_1 ] <= -8
 vc2_5_7: - y_5 + y_7 - 7 rotation_7 + [ - height * delta_5_7_3 ] <= -10
 vc1_5_8: y_5 - y_8 - 5 rotation_5 + [ - height * delta_5_8_1 ] <= -8
 vc2_5_8: - y_5 + y_8 - 9 rotation_8 + [ - height * delta_5_8_3 ] <= -12
 vc1_5_9: y_5 - y_9 - 5 rotation_5 + [ - height * delta_5_9_1 ] <= -8
 vc2_5_9: - y_5 + y_9 - 16 rotation_9 + [ - height * delta_5_9_3 ] <= -19
 vc1_5_10: y_5 - y_10 - 5 rotation_5 + [ - height * delta_5_10_1 ] <= -8
 vc2_5_10: - y_5 + y_10 - 19 rotation_10 + [ - height * delta_5_10_3 ]
   <= -22
 vc1_5_11: y_5 - y_11 - 5 rotation_5 + [ - height * delta_5_11_1 ] <= -8
 vc2_5_11: - y_5 + y_11 + rotation_11 + [ - height * delta_5_11_3 ] <= -3
 vc1_5_12: y_5 - y_12 - 5 rotation_5 + [ - height * delta_5_12_1 ] <= -8
 vc2_5_12: - y_5 + y_12 + [ - height * delta_5_12_3 ] <= -4
 vc1_5_13: y_5 - y_13 - 5 rotation_5 + [ - height * delta_5_13_1 ] <= -8
 vc2_5_13: - y_5 + y_13 - rotation_13 + [ - height * delta_5_13_3 ] <= -5
 vc1_5_14: y_5 - y_14 - 5 rotation_5 + [ - height * delta_5_14_1 ] <= -8
 vc2_5_14: - y_5 + y_14 - 2 rotation_14 + [ - height * delta_5_14_3 ]
   <= -6
 vc1_5_15: y_5 - y_15 - 5 rotation_5 + [ - height * delta_5_15_1 ] <= -8
 vc2_5_15: - y_5 + y_15 - 3 rotation_15 + [ - height * delta_5_15_3 ]
   <= -7
 vc1_5_16: y_5 - y_16 - 5 rotation_5 + [ - height * delta_5_16_1 ] <= -8
 vc2_5_16: - y_5 + y_16 - 4 rotation_16 + [ - height * delta_5_16_3 ]
   <= -8
 vc1_5_17: y_5 - y_17 - 5 rotation_5 + [ - height * delta_5_17_1 ] <= -8
 vc2_5_17: - y_5 + y_17 - 8 rotation_17 + [ - height * delta_5_17_3 ]
   <= -12
 vc1_5_18: y_5 - y_18 - 5 rotation_5 + [ - height * delta_5_18_1 ] <= -8
 vc2_5_18: - y_5 + y_18 - 13 rotation_18 + [ - height * delta_5_18_3 ]
   <= -17
 vc1_5_19: y_5 - y_19 - 5 rotation_5 + [ - height * delta_5_19_1 ] <= -8
 vc2_5_19: - y_5 + y_19 - 16 rotation_19 + [ - height * delta_5_19_3 ]
   <= -20
 vc1_5_20: y_5 - y_20 - 5 rotation_5 + [ - height * delta_5_20_1 ] <= -8
 vc2_5_20: - y_5 + y_20 - 19 rotation_20 + [ - height * delta_5_20_3 ]
   <= -23
 vc1_5_21: y_5 - y_21 - 5 rotation_5 + [ - height * delta_5_21_1 ] <= -8
 vc2_5_21: - y_5 + y_21 - 21 rotation_21 + [ - height * delta_5_21_3 ]
   <= -35
 vc1_6_7: y_6 - y_7 - 6 rotation_6 + [ - height * delta_6_7_1 ] <= -9
 vc2_6_7: - y_6 + y_7 - 7 rotation_7 + [ - height * delta_6_7_3 ] <= -10
 vc1_6_8: y_6 - y_8 - 6 rotation_6 + [ - height * delta_6_8_1 ] <= -9
 vc2_6_8: - y_6 + y_8 - 9 rotation_8 + [ - height * delta_6_8_3 ] <= -12
 vc1_6_9: y_6 - y_9 - 6 rotation_6 + [ - height * delta_6_9_1 ] <= -9
 vc2_6_9: - y_6 + y_9 - 16 rotation_9 + [ - height * delta_6_9_3 ] <= -19
 vc1_6_10: y_6 - y_10 - 6 rotation_6 + [ - height * delta_6_10_1 ] <= -9
 vc2_6_10: - y_6 + y_10 - 19 rotation_10 + [ - height * delta_6_10_3 ]
   <= -22
 vc1_6_11: y_6 - y_11 - 6 rotation_6 + [ - height * delta_6_11_1 ] <= -9
 vc2_6_11: - y_6 + y_11 + rotation_11 + [ - height * delta_6_11_3 ] <= -3
 vc1_6_12: y_6 - y_12 - 6 rotation_6 + [ - height * delta_6_12_1 ] <= -9
 vc2_6_12: - y_6 + y_12 + [ - height * delta_6_12_3 ] <= -4
 vc1_6_13: y_6 - y_13 - 6 rotation_6 + [ - height * delta_6_13_1 ] <= -9
 vc2_6_13: - y_6 + y_13 - rotation_13 + [ - height * delta_6_13_3 ] <= -5
 vc1_6_14: y_6 - y_14 - 6 rotation_6 + [ - height * delta_6_14_1 ] <= -9
 vc2_6_14: - y_6 + y_14 - 2 rotation_14 + [ - height * delta_6_14_3 ]
   <= -6
 vc1_6_15: y_6 - y_15 - 6 rotation_6 + [ - height * delta_6_15_1 ] <= -9
 vc2_6_15: - y_6 + y_15 - 3 rotation_15 + [ - height * delta_6_15_3 ]
   <= -7
 vc1_6_16: y_6 - y_16 - 6 rotation_6 + [ - height * delta_6_16_1 ] <= -9
 vc2_6_16: - y_6 + y_16 - 4 rotation_16 + [ - height * delta_6_16_3 ]
   <= -8
 vc1_6_17: y_6 - y_17 - 6 rotation_6 + [ - height * delta_6_17_1 ] <= -9
 vc2_6_17: - y_6 + y_17 - 8 rotation_17 + [ - height * delta_6_17_3 ]
   <= -12
 vc1_6_18: y_6 - y_18 - 6 rotation_6 + [ - height * delta_6_18_1 ] <= -9
 vc2_6_18: - y_6 + y_18 - 13 rotation_18 + [ - height * delta_6_18_3 ]
   <= -17
 vc1_6_19: y_6 - y_19 - 6 rotation_6 + [ - height * delta_6_19_1 ] <= -9
 vc2_6_19: - y_6 + y_19 - 16 rotation_19 + [ - height * delta_6_19_3 ]
   <= -20
 vc1_6_20: y_6 - y_20 - 6 rotation_6 + [ - height * delta_6_20_1 ] <= -9
 vc2_6_20: - y_6 + y_20 - 19 rotation_20 + [ - height * delta_6_20_3 ]
   <= -23
 vc1_6_21: y_6 - y_21 - 6 rotation_6 + [ - height * delta_6_21_1 ] <= -9
 vc2_6_21: - y_6 + y_21 - 21 rotation_21 + [ - height * delta_6_21_3 ]
   <= -35
 vc1_7_8: y_7 - y_8 - 7 rotation_7 + [ - height * delta_7_8_1 ] <= -10
 vc2_7_8: - y_7 + y_8 - 9 rotation_8 + [ - height * delta_7_8_3 ] <= -12
 vc1_7_9: y_7 - y_9 - 7 rotation_7 + [ - height * delta_7_9_1 ] <= -10
 vc2_7_9: - y_7 + y_9 - 16 rotation_9 + [ - height * delta_7_9_3 ] <= -19
 vc1_7_10: y_7 - y_10 - 7 rotation_7 + [ - height * delta_7_10_1 ] <= -10
 vc2_7_10: - y_7 + y_10 - 19 rotation_10 + [ - height * delta_7_10_3 ]
   <= -22
 vc1_7_11: y_7 - y_11 - 7 rotation_7 + [ - height * delta_7_11_1 ] <= -10
 vc2_7_11: - y_7 + y_11 + rotation_11 + [ - height * delta_7_11_3 ] <= -3
 vc1_7_12: y_7 - y_12 - 7 rotation_7 + [ - height * delta_7_12_1 ] <= -10
 vc2_7_12: - y_7 + y_12 + [ - height * delta_7_12_3 ] <= -4
 vc1_7_13: y_7 - y_13 - 7 rotation_7 + [ - height * delta_7_13_1 ] <= -10
 vc2_7_13: - y_7 + y_13 - rotation_13 + [ - height * delta_7_13_3 ] <= -5
 vc1_7_14: y_7 - y_14 - 7 rotation_7 + [ - height * delta_7_14_1 ] <= -10
 vc2_7_14: - y_7 + y_14 - 2 rotation_14 + [ - height * delta_7_14_3 ]
   <= -6
 vc1_7_15: y_7 - y_15 - 7 rotation_7 + [ - height * delta_7_15_1 ] <= -10
 vc2_7_15: - y_7 + y_15 - 3 rotation_15 + [ - height * delta_7_15_3 ]
   <= -7
 vc1_7_16: y_7 - y_16 - 7 rotation_7 + [ - height * delta_7_16_1 ] <= -10
 vc2_7_16: - y_7 + y_16 - 4 rotation_16 + [ - height * delta_7_16_3 ]
   <= -8
 vc1_7_17: y_7 - y_17 - 7 rotation_7 + [ - height * delta_7_17_1 ] <= -10
 vc2_7_17: - y_7 + y_17 - 8 rotation_17 + [ - height * delta_7_17_3 ]
   <= -12
 vc1_7_18: y_7 - y_18 - 7 rotation_7 + [ - height * delta_7_18_1 ] <= -10
 vc2_7_18: - y_7 + y_18 - 13 rotation_18 + [ - height * delta_7_18_3 ]
   <= -17
 vc1_7_19: y_7 - y_19 - 7 rotation_7 + [ - height * delta_7_19_1 ] <= -10
 vc2_7_19: - y_7 + y_19 - 16 rotation_19 + [ - height * delta_7_19_3 ]
   <= -20
 vc1_7_20: y_7 - y_20 - 7 rotation_7 + [ - height * delta_7_20_1 ] <= -10
 vc2_7_20: - y_7 + y_20 - 19 rotation_20 + [ - height * delta_7_20_3 ]
   <= -23
 vc1_7_21: y_7 - y_21 - 7 rotation_7 + [ - height * delta_7_21_1 ] <= -10
 vc2_7_21: - y_7 + y_21 - 21 rotation_21 + [ - height * delta_7_21_3 ]
   <= -35
 vc1_8_9: y_8 - y_9 - 9 rotation_8 + [ - height * delta_8_9_1 ] <= -12
 vc2_8_9: - y_8 + y_9 - 16 rotation_9 + [ - height * delta_8_9_3 ] <= -19
 vc1_8_10: y_8 - y_10 - 9 rotation_8 + [ - height * delta_8_10_1 ] <= -12
 vc2_8_10: - y_8 + y_10 - 19 rotation_10 + [ - height * delta_8_10_3 ]
   <= -22
 vc1_8_11: y_8 - y_11 - 9 rotation_8 + [ - height * delta_8_11_1 ] <= -12
 vc2_8_11: - y_8 + y_11 + rotation_11 + [ - height * delta_8_11_3 ] <= -3
 vc1_8_12: y_8 - y_12 - 9 rotation_8 + [ - height * delta_8_12_1 ] <= -12
 vc2_8_12: - y_8 + y_12 + [ - height * delta_8_12_3 ] <= -4
 vc1_8_13: y_8 - y_13 - 9 rotation_8 + [ - height * delta_8_13_1 ] <= -12
 vc2_8_13: - y_8 + y_13 - rotation_13 + [ - height * delta_8_13_3 ] <= -5
 vc1_8_14: y_8 - y_14 - 9 rotation_8 + [ - height * delta_8_14_1 ] <= -12
 vc2_8_14: - y_8 + y_14 - 2 rotation_14 + [ - height * delta_8_14_3 ]
   <= -6
 vc1_8_15: y_8 - y_15 - 9 rotation_8 + [ - height * delta_8_15_1 ] <= -12
 vc2_8_15: - y_8 + y_15 - 3 rotation_15 + [ - height * delta_8_15_3 ]
   <= -7
 vc1_8_16: y_8 - y_16 - 9 rotation_8 + [ - height * delta_8_16_1 ] <= -12
 vc2_8_16: - y_8 + y_16 - 4 rotation_16 + [ - height * delta_8_16_3 ]
   <= -8
 vc1_8_17: y_8 - y_17 - 9 rotation_8 + [ - height * delta_8_17_1 ] <= -12
 vc2_8_17: - y_8 + y_17 - 8 rotation_17 + [ - height * delta_8_17_3 ]
   <= -12
 vc1_8_18: y_8 - y_18 - 9 rotation_8 + [ - height * delta_8_18_1 ] <= -12
 vc2_8_18: - y_8 + y_18 - 13 rotation_18 + [ - height * delta_8_18_3 ]
   <= -17
 vc1_8_19: y_8 - y_19 - 9 rotation_8 + [ - height * delta_8_19_1 ] <= -12
 vc2_8_19: - y_8 + y_19 - 16 rotation_19 + [ - height * delta_8_19_3 ]
   <= -20
 vc1_8_20: y_8 - y_20 - 9 rotation_8 + [ - height * delta_8_20_1 ] <= -12
 vc2_8_20: - y_8 + y_20 - 19 rotation_20 + [ - height * delta_8_20_3 ]
   <= -23
 vc1_8_21: y_8 - y_21 - 9 rotation_8 + [ - height * delta_8_21_1 ] <= -12
 vc2_8_21: - y_8 + y_21 - 21 rotation_21 + [ - height * delta_8_21_3 ]
   <= -35
 vc1_9_10: y_9 - y_10 - 16 rotation_9 + [ - height * delta_9_10_1 ] <= -19
 vc2_9_10: - y_9 + y_10 - 19 rotation_10 + [ - height * delta_9_10_3 ]
   <= -22
 vc1_9_11: y_9 - y_11 - 16 rotation_9 + [ - height * delta_9_11_1 ] <= -19
 vc2_9_11: - y_9 + y_11 + rotation_11 + [ - height * delta_9_11_3 ] <= -3
 vc1_9_12: y_9 - y_12 - 16 rotation_9 + [ - height * delta_9_12_1 ] <= -19
 vc2_9_12: - y_9 + y_12 + [ - height * delta_9_12_3 ] <= -4
 vc1_9_13: y_9 - y_13 - 16 rotation_9 + [ - height * delta_9_13_1 ] <= -19
 vc2_9_13: - y_9 + y_13 - rotation_13 + [ - height * delta_9_13_3 ] <= -5
 vc1_9_14: y_9 - y_14 - 16 rotation_9 + [ - height * delta_9_14_1 ] <= -19
 vc2_9_14: - y_9 + y_14 - 2 rotation_14 + [ - height * delta_9_14_3 ]
   <= -6
 vc1_9_15: y_9 - y_15 - 16 rotation_9 + [ - height * delta_9_15_1 ] <= -19
 vc2_9_15: - y_9 + y_15 - 3 rotation_15 + [ - height * delta_9_15_3 ]
   <= -7
 vc1_9_16: y_9 - y_16 - 16 rotation_9 + [ - height * delta_9_16_1 ] <= -19
 vc2_9_16: - y_9 + y_16 - 4 rotation_16 + [ - height * delta_9_16_3 ]
   <= -8
 vc1_9_17: y_9 - y_17 - 16 rotation_9 + [ - height * delta_9_17_1 ] <= -19
 vc2_9_17: - y_9 + y_17 - 8 rotation_17 + [ - height * delta_9_17_3 ]
   <= -12
 vc1_9_18: y_9 - y_18 - 16 rotation_9 + [ - height * delta_9_18_1 ] <= -19
 vc2_9_18: - y_9 + y_18 - 13 rotation_18 + [ - height * delta_9_18_3 ]
   <= -17
 vc1_9_19: y_9 - y_19 - 16 rotation_9 + [ - height * delta_9_19_1 ] <= -19
 vc2_9_19: - y_9 + y_19 - 16 rotation_19 + [ - height * delta_9_19_3 ]
   <= -20
 vc1_9_20: y_9 - y_20 - 16 rotation_9 + [ - height * delta_9_20_1 ] <= -19
 vc2_9_20: - y_9 + y_20 - 19 rotation_20 + [ - height * delta_9_20_3 ]
   <= -23
 vc1_9_21: y_9 - y_21 - 16 rotation_9 + [ - height * delta_9_21_1 ] <= -19
 vc2_9_21: - y_9 + y_21 - 21 rotation_21 + [ - height * delta_9_21_3 ]
   <= -35
 vc1_10_11: y_10 - y_11 - 19 rotation_10 + [ - height * delta_10_11_1 ]
   <= -22
 vc2_10_11: - y_10 + y_11 + rotation_11 + [ - height * delta_10_11_3 ]
   <= -3
 vc1_10_12: y_10 - y_12 - 19 rotation_10 + [ - height * delta_10_12_1 ]
   <= -22
 vc2_10_12: - y_10 + y_12 + [ - height * delta_10_12_3 ] <= -4
 vc1_10_13: y_10 - y_13 - 19 rotation_10 + [ - height * delta_10_13_1 ]
   <= -22
 vc2_10_13: - y_10 + y_13 - rotation_13 + [ - height * delta_10_13_3 ]
   <= -5
 vc1_10_14: y_10 - y_14 - 19 rotation_10 + [ - height * delta_10_14_1 ]
   <= -22
 vc2_10_14: - y_10 + y_14 - 2 rotation_14 + [ - height * delta_10_14_3 ]
   <= -6
 vc1_10_15: y_10 - y_15 - 19 rotation_10 + [ - height * delta_10_15_1 ]
   <= -22
 vc2_10_15: - y_10 + y_15 - 3 rotation_15 + [ - height * delta_10_15_3 ]
   <= -7
 vc1_10_16: y_10 - y_16 - 19 rotation_10 + [ - height * delta_10_16_1 ]
   <= -22
 vc2_10_16: - y_10 + y_16 - 4 rotation_16 + [ - height * delta_10_16_3 ]
   <= -8
 vc1_10_17: y_10 - y_17 - 19 rotation_10 + [ - height * delta_10_17_1 ]
   <= -22
 vc2_10_17: - y_10 + y_17 - 8 rotation_17 + [ - height * delta_10_17_3 ]
   <= -12
 vc1_10_18: y_10 - y_18 - 19 rotation_10 + [ - height * delta_10_18_1 ]
   <= -22
 vc2_10_18: - y_10 + y_18 - 13 rotation_18 + [ - height * delta_10_18_3 ]
   <= -17
 vc1_10_19: y_10 - y_19 - 19 rotation_10 + [ - height * delta_10_19_1 ]
   <= -22
 vc2_10_19: - y_10 + y_19 - 16 rotation_19 + [ - height * delta_10_19_3 ]
   <= -20
 vc1_10_20: y_10 - y_20 - 19 rotation_10 + [ - height * delta_10_20_1 ]
   <= -22
 vc2_10_20: - y_10 + y_20 - 19 rotation_20 + [ - height * delta_10_20_3 ]
   <= -23
 vc1_10_21: y_10 - y_21 - 19 rotation_10 + [ - height * delta_10_21_1 ]
   <= -22
 vc2_10_21: - y_10 + y_21 - 21 rotation_21 + [ - height * delta_10_21_3 ]
   <= -35
 vc1_11_12: y_11 - y_12 + rotation_11 + [ - height * delta_11_12_1 ] <= -3
 vc2_11_12: - y_11 + y_12 + [ - height * delta_11_12_3 ] <= -4
 vc1_11_13: y_11 - y_13 + rotation_11 + [ - height * delta_11_13_1 ] <= -3
 vc2_11_13: - y_11 + y_13 - rotation_13 + [ - height * delta_11_13_3 ]
   <= -5
 vc1_11_14: y_11 - y_14 + rotation_11 + [ - height * delta_11_14_1 ] <= -3
 vc2_11_14: - y_11 + y_14 - 2 rotation_14 + [ - height * delta_11_14_3 ]
   <= -6
 vc1_11_15: y_11 - y_15 + rotation_11 + [ - height * delta_11_15_1 ] <= -3
 vc2_11_15: - y_11 + y_15 - 3 rotation_15 + [ - height * delta_11_15_3 ]
   <= -7
 vc1_11_16: y_11 - y_16 + rotation_11 + [ - height * delta_11_16_1 ] <= -3
 vc2_11_16: - y_11 + y_16 - 4 rotation_16 + [ - height * delta_11_16_3 ]
   <= -8
 vc1_11_17: y_11 - y_17 + rotation_11 + [ - height * delta_11_17_1 ] <= -3
 vc2_11_17: - y_11 + y_17 - 8 rotation_17 + [ - height * delta_11_17_3 ]
   <= -12
 vc1_11_18: y_11 - y_18 + rotation_11 + [ - height * delta_11_18_1 ] <= -3
 vc2_11_18: - y_11 + y_18 - 13 rotation_18 + [ - height * delta_11_18_3 ]
   <= -17
 vc1_11_19: y_11 - y_19 + rotation_11 + [ - height * delta_11_19_1 ] <= -3
 vc2_11_19: - y_11 + y_19 - 16 rotation_19 + [ - height * delta_11_19_3 ]
   <= -20
 vc1_11_20: y_11 - y_20 + rotation_11 + [ - height * delta_11_20_1 ] <= -3
 vc2_11_20: - y_11 + y_20 - 19 rotation_20 + [ - height * delta_11_20_3 ]
   <= -23
 vc1_11_21: y_11 - y_21 + rotation_11 + [ - height * delta_11_21_1 ] <= -3
 vc2_11_21: - y_11 + y_21 - 21 rotation_21 + [ - height * delta_11_21_3 ]
   <= -35
 vc1_12_13: y_12 - y_13 + [ - height * delta_12_13_1 ] <= -4
 vc2_12_13: - y_12 + y_13 - rotation_13 + [ - height * delta_12_13_3 ]
   <= -5
 vc1_12_14: y_12 - y_14 + [ - height * delta_12_14_1 ] <= -4
 vc2_12_14: - y_12 + y_14 - 2 rotation_14 + [ - height * delta_12_14_3 ]
   <= -6
 vc1_12_15: y_12 - y_15 + [ - height * delta_12_15_1 ] <= -4
 vc2_12_15: - y_12 + y_15 - 3 rotation_15 + [ - height * delta_12_15_3 ]
   <= -7
 vc1_12_16: y_12 - y_16 + [ - height * delta_12_16_1 ] <= -4
 vc2_12_16: - y_12 + y_16 - 4 rotation_16 + [ - height * delta_12_16_3 ]
   <= -8
 vc1_12_17: y_12 - y_17 + [ - height * delta_12_17_1 ] <= -4
 vc2_12_17: - y_12 + y_17 - 8 rotation_17 + [ - height * delta_12_17_3 ]
   <= -12
 vc1_12_18: y_12 - y_18 + [ - height * delta_12_18_1 ] <= -4
 vc2_12_18: - y_12 + y_18 - 13 rotation_18 + [ - height * delta_12_18_3 ]
   <= -17
 vc1_12_19: y_12 - y_19 + [ - height * delta_12_19_1 ] <= -4
 vc2_12_19: - y_12 + y_19 - 16 rotation_19 + [ - height * delta_12_19_3 ]
   <= -20
 vc1_12_20: y_12 - y_20 + [ - height * delta_12_20_1 ] <= -4
 vc2_12_20: - y_12 + y_20 - 19 rotation_20 + [ - height * delta_12_20_3 ]
   <= -23
 vc1_12_21: y_12 - y_21 + [ - height * delta_12_21_1 ] <= -4
 vc2_12_21: - y_12 + y_21 - 21 rotation_21 + [ - height * delta_12_21_3 ]
   <= -35
 vc1_13_14: y_13 - y_14 - rotation_13 + [ - height * delta_13_14_1 ] <= -5
 vc2_13_14: - y_13 + y_14 - 2 rotation_14 + [ - height * delta_13_14_3 ]
   <= -6
 vc1_13_15: y_13 - y_15 - rotation_13 + [ - height * delta_13_15_1 ] <= -5
 vc2_13_15: - y_13 + y_15 - 3 rotation_15 + [ - height * delta_13_15_3 ]
   <= -7
 vc1_13_16: y_13 - y_16 - rotation_13 + [ - height * delta_13_16_1 ] <= -5
 vc2_13_16: - y_13 + y_16 - 4 rotation_16 + [ - height * delta_13_16_3 ]
   <= -8
 vc1_13_17: y_13 - y_17 - rotation_13 + [ - height * delta_13_17_1 ] <= -5
 vc2_13_17: - y_13 + y_17 - 8 rotation_17 + [ - height * delta_13_17_3 ]
   <= -12
 vc1_13_18: y_13 - y_18 - rotation_13 + [ - height * delta_13_18_1 ] <= -5
 vc2_13_18: - y_13 + y_18 - 13 rotation_18 + [ - height * delta_13_18_3 ]
   <= -17
 vc1_13_19: y_13 - y_19 - rotation_13 + [ - height * delta_13_19_1 ] <= -5
 vc2_13_19: - y_13 + y_19 - 16 rotation_19 + [ - height * delta_13_19_3 ]
   <= -20
 vc1_13_20: y_13 - y_20 - rotation_13 + [ - height * delta_13_20_1 ] <= -5
 vc2_13_20: - y_13 + y_20 - 19 rotation_20 + [ - height * delta_13_20_3 ]
   <= -23
 vc1_13_21: y_13 - y_21 - rotation_13 + [ - height * delta_13_21_1 ] <= -5
 vc2_13_21: - y_13 + y_21 - 21 rotation_21 + [ - height * delta_13_21_3 ]
   <= -35
 vc1_14_15: y_14 - y_15 - 2 rotation_14 + [ - height * delta_14_15_1 ]
   <= -6
 vc2_14_15: - y_14 + y_15 - 3 rotation_15 + [ - height * delta_14_15_3 ]
   <= -7
 vc1_14_16: y_14 - y_16 - 2 rotation_14 + [ - height * delta_14_16_1 ]
   <= -6
 vc2_14_16: - y_14 + y_16 - 4 rotation_16 + [ - height * delta_14_16_3 ]
   <= -8
 vc1_14_17: y_14 - y_17 - 2 rotation_14 + [ - height * delta_14_17_1 ]
   <= -6
 vc2_14_17: - y_14 + y_17 - 8 rotation_17 + [ - height * delta_14_17_3 ]
   <= -12
 vc1_14_18: y_14 - y_18 - 2 rotation_14 + [ - height * delta_14_18_1 ]
   <= -6
 vc2_14_18: - y_14 + y_18 - 13 rotation_18 + [ - height * delta_14_18_3 ]
   <= -17
 vc1_14_19: y_14 - y_19 - 2 rotation_14 + [ - height * delta_14_19_1 ]
   <= -6
 vc2_14_19: - y_14 + y_19 - 16 rotation_19 + [ - height * delta_14_19_3 ]
   <= -20
 vc1_14_20: y_14 - y_20 - 2 rotation_14 + [ - height * delta_14_20_1 ]
   <= -6
 vc2_14_20: - y_14 + y_20 - 19 rotation_20 + [ - height * delta_14_20_3 ]
   <= -23
 vc1_14_21: y_14 - y_21 - 2 rotation_14 + [ - height * delta_14_21_1 ]
   <= -6
 vc2_14_21: - y_14 + y_21 - 21 rotation_21 + [ - height * delta_14_21_3 ]
   <= -35
 vc1_15_16: y_15 - y_16 - 3 rotation_15 + [ - height * delta_15_16_1 ]
   <= -7
 vc2_15_16: - y_15 + y_16 - 4 rotation_16 + [ - height * delta_15_16_3 ]
   <= -8
 vc1_15_17: y_15 - y_17 - 3 rotation_15 + [ - height * delta_15_17_1 ]
   <= -7
 vc2_15_17: - y_15 + y_17 - 8 rotation_17 + [ - height * delta_15_17_3 ]
   <= -12
 vc1_15_18: y_15 - y_18 - 3 rotation_15 + [ - height * delta_15_18_1 ]
   <= -7
 vc2_15_18: - y_15 + y_18 - 13 rotation_18 + [ - height * delta_15_18_3 ]
   <= -17
 vc1_15_19: y_15 - y_19 - 3 rotation_15 + [ - height * delta_15_19_1 ]
   <= -7
 vc2_15_19: - y_15 + y_19 - 16 rotation_19 + [ - height * delta_15_19_3 ]
   <= -20
 vc1_15_20: y_15 - y_20 - 3 rotation_15 + [ - height * delta_15_20_1 ]
   <= -7
 vc2_15_20: - y_15 + y_20 - 19 rotation_20 + [ - height * delta_15_20_3 ]
   <= -23
 vc1_15_21: y_15 - y_21 - 3 rotation_15 + [ - height * delta_15_21_1 ]
   <= -7
 vc2_15_21: - y_15 + y_21 - 21 rotation_21 + [ - height * delta_15_21_3 ]
   <= -35
 vc1_16_17: y_16 - y_17 - 4 rotation_16 + [ - height * delta_16_17_1 ]
   <= -8
 vc2_16_17: - y_16 + y_17 - 8 rotation_17 + [ - height * delta_16_17_3 ]
   <= -12
 vc1_16_18: y_16 - y_18 - 4 rotation_16 + [ - height * delta_16_18_1 ]
   <= -8
 vc2_16_18: - y_16 + y_18 - 13 rotation_18 + [ - height * delta_16_18_3 ]
   <= -17
 vc1_16_19: y_16 - y_19 - 4 rotation_16 + [ - height * delta_16_19_1 ]
   <= -8
 vc2_16_19: - y_16 + y_19 - 16 rotation_19 + [ - height * delta_16_19_3 ]
   <= -20
 vc1_16_20: y_16 - y_20 - 4 rotation_16 + [ - height * delta_16_20_1 ]
   <= -8
 vc2_16_20: - y_16 + y_20 - 19 rotation_20 + [ - height * delta_16_20_3 ]
   <= -23
 vc1_16_21: y_16 - y_21 - 4 rotation_16 + [ - height * delta_16_21_1 ]
   <= -8
 vc2_16_21: - y_16 + y_21 - 21 rotation_21 + [ - height * delta_16_21_3 ]
   <= -35
 vc1_17_18: y_17 - y_18 - 8 rotation_17 + [ - height * delta_17_18_1 ]
   <= -12
 vc2_17_18: - y_17 + y_18 - 13 rotation_18 + [ - height * delta_17_18_3 ]
   <= -17
 vc1_17_19: y_17 - y_19 - 8 rotation_17 + [ - height * delta_17_19_1 ]
   <= -12
 vc2_17_19: - y_17 + y_19 - 16 rotation_19 + [ - height * delta_17_19_3 ]
   <= -20
 vc1_17_20: y_17 - y_20 - 8 rotation_17 + [ - height * delta_17_20_1 ]
   <= -12
 vc2_17_20: - y_17 + y_20 - 19 rotation_20 + [ - height * delta_17_20_3 ]
   <= -23
 vc1_17_21: y_17 - y_21 - 8 rotation_17 + [ - height * delta_17_21_1 ]
   <= -12
 vc2_17_21: - y_17 + y_21 - 21 rotation_21 + [ - height * delta_17_21_3 ]
   <= -35
 vc1_18_19: y_18 - y_19 - 13 rotation_18 + [ - height * delta_18_19_1 ]
   <= -17
 vc2_18_19: - y_18 + y_19 - 16 rotation_19 + [ - height * delta_18_19_3 ]
   <= -20
 vc1_18_20: y_18 - y_20 - 13 rotation_18 + [ - height * delta_18_20_1 ]
   <= -17
 vc2_18_20: - y_18 + y_20 - 19 rotation_20 + [ - height * delta_18_20_3 ]
   <= -23
 vc1_18_21: y_18 - y_21 - 13 rotation_18 + [ - height * delta_18_21_1 ]
   <= -17
 vc2_18_21: - y_18 + y_21 - 21 rotation_21 + [ - height * delta_18_21_3 ]
   <= -35
 vc1_19_20: y_19 - y_20 - 16 rotation_19 + [ - height * delta_19_20_1 ]
   <= -20
 vc2_19_20: - y_19 + y_20 - 19 rotation_20 + [ - height * delta_19_20_3 ]
   <= -23
 vc1_19_21: y_19 - y_21 - 16 rotation_19 + [ - height * delta_19_21_1 ]
   <= -20
 vc2_19_21: - y_19 + y_21 - 21 rotation_21 + [ - height * delta_19_21_3 ]
   <= -35
 vc1_20_21: y_20 - y_21 - 19 rotation_20 + [ - height * delta_20_21_1 ]
   <= -23
 vc2_20_21: - y_20 + y_21 - 21 rotation_21 + [ - height * delta_20_21_3 ]
   <= -35
Bounds
 x_0 <= 32
 y_0 <= 242
 x_1 <= 32
 y_1 <= 242
 x_2 <= 32
 y_2 <= 242
 x_3 <= 32
 y_3 <= 242
 x_4 <= 32
 y_4 <= 242
 x_5 <= 32
 y_5 <= 242
 x_6 <= 32
 y_6 <= 242
 x_7 <= 32
 y_7 <= 242
 x_8 <= 32
 y_8 <= 242
 x_9 <= 32
 y_9 <= 242
 x_10 <= 32
 y_10 <= 242
 x_11 <= 32
 y_11 <= 242
 x_12 <= 32
 y_12 <= 242
 x_13 <= 32
 y_13 <= 242
 x_14 <= 32
 y_14 <= 242
 x_15 <= 32
 y_15 <= 242
 x_16 <= 32
 y_16 <= 242
 x_17 <= 32
 y_17 <= 242
 x_18 <= 32
 y_18 <= 242
 x_19 <= 32
 y_19 <= 242
 x_20 <= 32
 y_20 <= 242
 x_21 <= 32
 y_21 <= 242
 35 <= height <= 245
Binaries
 delta_0_0_0 delta_0_0_1 delta_0_0_2 delta_0_0_3 delta_0_1_0 delta_0_1_1
 delta_0_1_2 delta_0_1_3 delta_0_2_0 delta_0_2_1 delta_0_2_2 delta_0_2_3
 delta_0_3_0 delta_0_3_1 delta_0_3_2 delta_0_3_3 delta_0_4_0 delta_0_4_1
 delta_0_4_2 delta_0_4_3 delta_0_5_0 delta_0_5_1 delta_0_5_2 delta_0_5_3
 delta_0_6_0 delta_0_6_1 delta_0_6_2 delta_0_6_3 delta_0_7_0 delta_0_7_1
 delta_0_7_2 delta_0_7_3 delta_0_8_0 delta_0_8_1 delta_0_8_2 delta_0_8_3
 delta_0_9_0 delta_0_9_1 delta_0_9_2 delta_0_9_3 delta_0_10_0 delta_0_10_1
 delta_0_10_2 delta_0_10_3 delta_0_11_0 delta_0_11_1 delta_0_11_2
 delta_0_11_3 delta_0_12_0 delta_0_12_1 delta_0_12_2 delta_0_12_3
 delta_0_13_0 delta_0_13_1 delta_0_13_2 delta_0_13_3 delta_0_14_0
 delta_0_14_1 delta_0_14_2 delta_0_14_3 delta_0_15_0 delta_0_15_1
 delta_0_15_2 delta_0_15_3 delta_0_16_0 delta_0_16_1 delta_0_16_2
 delta_0_16_3 delta_0_17_0 delta_0_17_1 delta_0_17_2 delta_0_17_3
 delta_0_18_0 delta_0_18_1 delta_0_18_2 delta_0_18_3 delta_0_19_0
 delta_0_19_1 delta_0_19_2 delta_0_19_3 delta_0_20_0 delta_0_20_1
 delta_0_20_2 delta_0_20_3 delta_0_21_0 delta_0_21_1 delta_0_21_2
 delta_0_21_3 delta_1_0_0 delta_1_0_1 delta_1_0_2 delta_1_0_3 delta_1_1_0
 delta_1_1_1 delta_1_1_2 delta_1_1_3 delta_1_2_0 delta_1_2_1 delta_1_2_2
 delta_1_2_3 delta_1_3_0 delta_1_3_1 delta_1_3_2 delta_1_3_3 delta_1_4_0
 delta_1_4_1 delta_1_4_2 delta_1_4_3 delta_1_5_0 delta_1_5_1 delta_1_5_2
 delta_1_5_3 delta_1_6_0 delta_1_6_1 delta_1_6_2 delta_1_6_3 delta_1_7_0
 delta_1_7_1 delta_1_7_2 delta_1_7_3 delta_1_8_0 delta_1_8_1 delta_1_8_2
 delta_1_8_3 delta_1_9_0 delta_1_9_1 delta_1_9_2 delta_1_9_3 delta_1_10_0
 delta_1_10_1 delta_1_10_2 delta_1_10_3 delta_1_11_0 delta_1_11_1
 delta_1_11_2 delta_1_11_3 delta_1_12_0 delta_1_12_1 delta_1_12_2
 delta_1_12_3 delta_1_13_0 delta_1_13_1 delta_1_13_2 delta_1_13_3
 delta_1_14_0 delta_1_14_1 delta_1_14_2 delta_1_14_3 delta_1_15_0
 delta_1_15_1 delta_1_15_2 delta_1_15_3 delta_1_16_0 delta_1_16_1
 delta_1_16_2 delta_1_16_3 delta_1_17_0 delta_1_17_1 delta_1_17_2
 delta_1_17_3 delta_1_18_0 delta_1_18_1 delta_1_18_2 delta_1_18_3
 delta_1_19_0 delta_1_19_1 delta_1_19_2 delta_1_19_3 delta_1_20_0
 delta_1_20_1 delta_1_20_2 delta_1_20_3 delta_1_21_0 delta_1_21_1
 delta_1_21_2 delta_1_21_3 delta_2_0_0 delta_2_0_1 delta_2_0_2 delta_2_0_3
 delta_2_1_0 delta_2_1_1 delta_2_1_2 delta_2_1_3 delta_2_2_0 delta_2_2_1
 delta_2_2_2 delta_2_2_3 delta_2_3_0 delta_2_3_1 delta_2_3_2 delta_2_3_3
 delta_2_4_0 delta_2_4_1 delta_2_4_2 delta_2_4_3 delta_2_5_0 delta_2_5_1
 delta_2_5_2 delta_2_5_3 delta_2_6_0 delta_2_6_1 delta_2_6_2 delta_2_6_3
 delta_2_7_0 delta_2_7_1 delta_2_7_2 delta_2_7_3 delta_2_8_0 delta_2_8_1
 delta_2_8_2 delta_2_8_3 delta_2_9_0 delta_2_9_1 delta_2_9_2 delta_2_9_3
 delta_2_10_0 delta_2_10_1 delta_2_10_2 delta_2_10_3 delta_2_11_0
 delta_2_11_1 delta_2_11_2 delta_2_11_3 delta_2_12_0 delta_2_12_1
 delta_2_12_2 delta_2_12_3 delta_2_13_0 delta_2_13_1 delta_2_13_2
 delta_2_13_3 delta_2_14_0 delta_2_14_1 delta_2_14_2 delta_2_14_3
 delta_2_15_0 delta_2_15_1 delta_2_15_2 delta_2_15_3 delta_2_16_0
 delta_2_16_1 delta_2_16_2 delta_2_16_3 delta_2_17_0 delta_2_17_1
 delta_2_17_2 delta_2_17_3 delta_2_18_0 delta_2_18_1 delta_2_18_2
 delta_2_18_3 delta_2_19_0 delta_2_19_1 delta_2_19_2 delta_2_19_3
 delta_2_20_0 delta_2_20_1 delta_2_20_2 delta_2_20_3 delta_2_21_0
 delta_2_21_1 delta_2_21_2 delta_2_21_3 delta_3_0_0 delta_3_0_1 delta_3_0_2
 delta_3_0_3 delta_3_1_0 delta_3_1_1 delta_3_1_2 delta_3_1_3 delta_3_2_0
 delta_3_2_1 delta_3_2_2 delta_3_2_3 delta_3_3_0 delta_3_3_1 delta_3_3_2
 delta_3_3_3 delta_3_4_0 delta_3_4_1 delta_3_4_2 delta_3_4_3 delta_3_5_0
 delta_3_5_1 delta_3_5_2 delta_3_5_3 delta_3_6_0 delta_3_6_1 delta_3_6_2
 delta_3_6_3 delta_3_7_0 delta_3_7_1 delta_3_7_2 delta_3_7_3 delta_3_8_0
 delta_3_8_1 delta_3_8_2 delta_3_8_3 delta_3_9_0 delta_3_9_1 delta_3_9_2
 delta_3_9_3 delta_3_10_0 delta_3_10_1 delta_3_10_2 delta_3_10_3
 delta_3_11_0 delta_3_11_1 delta_3_11_2 delta_3_11_3 delta_3_12_0
 delta_3_12_1 delta_3_12_2 delta_3_12_3 delta_3_13_0 delta_3_13_1
 delta_3_13_2 delta_3_13_3 delta_3_14_0 delta_3_14_1 delta_3_14_2
 delta_3_14_3 delta_3_15_0 delta_3_15_1 delta_3_15_2 delta_3_15_3
 delta_3_16_0 delta_3_16_1 delta_3_16_2 delta_3_16_3 delta_3_17_0
 delta_3_17_1 delta_3_17_2 delta_3_17_3 delta_3_18_0 delta_3_18_1
 delta_3_18_2 delta_3_18_3 delta_3_19_0 delta_3_19_1 delta_3_19_2
 delta_3_19_3 delta_3_20_0 delta_3_20_1 delta_3_20_2 delta_3_20_3
 delta_3_21_0 delta_3_21_1 delta_3_21_2 delta_3_21_3 delta_4_0_0
 delta_4_0_1 delta_4_0_2 delta_4_0_3 delta_4_1_0 delta_4_1_1 delta_4_1_2
 delta_4_1_3 delta_4_2_0 delta_4_2_1 delta_4_2_2 delta_4_2_3 delta_4_3_0
 delta_4_3_1 delta_4_3_2 delta_4_3_3 delta_4_4_0 delta_4_4_1 delta_4_4_2
 delta_4_4_3 delta_4_5_0 delta_4_5_1 delta_4_5_2 delta_4_5_3 delta_4_6_0
 delta_4_6_1 delta_4_6_2 delta_4_6_3 delta_4_7_0 delta_4_7_1 delta_4_7_2
 delta_4_7_3 delta_4_8_0 delta_4_8_1 delta_4_8_2 delta_4_8_3 delta_4_9_0
 delta_4_9_1 delta_4_9_2 delta_4_9_3 delta_4_10_0 delta_4_10_1 delta_4_10_2
 delta_4_10_3 delta_4_11_0 delta_4_11_1 delta_4_11_2 delta_4_11_3
 delta_4_12_0 delta_4_12_1 delta_4_12_2 delta_4_12_3 delta_4_13_0
 delta_4_13_1 delta_4_13_2 delta_4_13_3 delta_4_14_0 delta_4_14_1
 delta_4_14_2 delta_4_14_3 delta_4_15_0 delta_4_15_1 delta_4_15_2
 delta_4_15_3 delta_4_16_0 delta_4_16_1 delta_4_16_2 delta_4_16_3
 delta_4_17_0 delta_4_17_1 delta_4_17_2 delta_4_17_3 delta_4_18_0
 delta_4_18_1 delta_4_18_2 delta_4_18_3 delta_4_19_0 delta_4_19_1
 delta_4_19_2 delta_4_19_3 delta_4_20_0 delta_4_20_1 delta_4_20_2
 delta_4_20_3 delta_4_21_0 delta_4_21_1 delta_4_21_2 delta_4_21_3
 delta_5_0_0 delta_5_0_1 delta_5_0_2 delta_5_0_3 delta_5_1_0 delta_5_1_1
 delta_5_1_2 delta_5_1_3 delta_5_2_0 delta_5_2_1 delta_5_2_2 delta_5_2_3
 delta_5_3_0 delta_5_3_1 delta_5_3_2 delta_5_3_3 delta_5_4_0 delta_5_4_1
 delta_5_4_2 delta_5_4_3 delta_5_5_0 delta_5_5_1 delta_5_5_2 delta_5_5_3
 delta_5_6_0 delta_5_6_1 delta_5_6_2 delta_5_6_3 delta_5_7_0 delta_5_7_1
 delta_5_7_2 delta_5_7_3 delta_5_8_0 delta_5_8_1 delta_5_8_2 delta_5_8_3
 delta_5_9_0 delta_5_9_1 delta_5_9_2 delta_5_9_3 delta_5_10_0 delta_5_10_1
 delta_5_10_2 delta_5_10_3 delta_5_11_0 delta_5_11_1 delta_5_11_2
 delta_5_11_3 delta_5_12_0 delta_5_12_1 delta_5_12_2 delta_5_12_3
 delta_5_13_0 delta_5_13_1 delta_5_13_2 delta_5_13_3 delta_5_14_0
 delta_5_14_1 delta_5_14_2 delta_5_14_3 delta_5_15_0 delta_5_15_1
 delta_5_15_2 delta_5_15_3 delta_5_16_0 delta_5_16_1 delta_5_16_2
 delta_5_16_3 delta_5_17_0 delta_5_17_1 delta_5_17_2 delta_5_17_3
 delta_5_18_0 delta_5_18_1 delta_5_18_2 delta_5_18_3 delta_5_19_0
 delta_5_19_1 delta_5_19_2 delta_5_19_3 delta_5_20_0 delta_5_20_1
 delta_5_20_2 delta_5_20_3 delta_5_21_0 delta_5_21_1 delta_5_21_2
 delta_5_21_3 delta_6_0_0 delta_6_0_1 delta_6_0_2 delta_6_0_3 delta_6_1_0
 delta_6_1_1 delta_6_1_2 delta_6_1_3 delta_6_2_0 delta_6_2_1 delta_6_2_2
 delta_6_2_3 delta_6_3_0 delta_6_3_1 delta_6_3_2 delta_6_3_3 delta_6_4_0
 delta_6_4_1 delta_6_4_2 delta_6_4_3 delta_6_5_0 delta_6_5_1 delta_6_5_2
 delta_6_5_3 delta_6_6_0 delta_6_6_1 delta_6_6_2 delta_6_6_3 delta_6_7_0
 delta_6_7_1 delta_6_7_2 delta_6_7_3 delta_6_8_0 delta_6_8_1 delta_6_8_2
 delta_6_8_3 delta_6_9_0 delta_6_9_1 delta_6_9_2 delta_6_9_3 delta_6_10_0
 delta_6_10_1 delta_6_10_2 delta_6_10_3 delta_6_11_0 delta_6_11_1
 delta_6_11_2 delta_6_11_3 delta_6_12_0 delta_6_12_1 delta_6_12_2
 delta_6_12_3 delta_6_13_0 delta_6_13_1 delta_6_13_2 delta_6_13_3
 delta_6_14_0 delta_6_14_1 delta_6_14_2 delta_6_14_3 delta_6_15_0
 delta_6_15_1 delta_6_15_2 delta_6_15_3 delta_6_16_0 delta_6_16_1
 delta_6_16_2 delta_6_16_3 delta_6_17_0 delta_6_17_1 delta_6_17_2
 delta_6_17_3 delta_6_18_0 delta_6_18_1 delta_6_18_2 delta_6_18_3
 delta_6_19_0 delta_6_19_1 delta_6_19_2 delta_6_19_3 delta_6_20_0
 delta_6_20_1 delta_6_20_2 delta_6_20_3 delta_6_21_0 delta_6_21_1
 delta_6_21_2 delta_6_21_3 delta_7_0_0 delta_7_0_1 delta_7_0_2 delta_7_0_3
 delta_7_1_0 delta_7_1_1 delta_7_1_2 delta_7_1_3 delta_7_2_0 delta_7_2_1
 delta_7_2_2 delta_7_2_3 delta_7_3_0 delta_7_3_1 delta_7_3_2 delta_7_3_3
 delta_7_4_0 delta_7_4_1 delta_7_4_2 delta_7_4_3 delta_7_5_0 delta_7_5_1
 delta_7_5_2 delta_7_5_3 delta_7_6_0 delta_7_6_1 delta_7_6_2 delta_7_6_3
 delta_7_7_0 delta_7_7_1 delta_7_7_2 delta_7_7_3 delta_7_8_0 delta_7_8_1
 delta_7_8_2 delta_7_8_3 delta_7_9_0 delta_7_9_1 delta_7_9_2 delta_7_9_3
 delta_7_10_0 delta_7_10_1 delta_7_10_2 delta_7_10_3 delta_7_11_0
 delta_7_11_1 delta_7_11_2 delta_7_11_3 delta_7_12_0 delta_7_12_1
 delta_7_12_2 delta_7_12_3 delta_7_13_0 delta_7_13_1 delta_7_13_2
 delta_7_13_3 delta_7_14_0 delta_7_14_1 delta_7_14_2 delta_7_14_3
 delta_7_15_0 delta_7_15_1 delta_7_15_2 delta_7_15_3 delta_7_16_0
 delta_7_16_1 delta_7_16_2 delta_7_16_3 delta_7_17_0 delta_7_17_1
 delta_7_17_2 delta_7_17_3 delta_7_18_0 delta_7_18_1 delta_7_18_2
 delta_7_18_3 delta_7_19_0 delta_7_19_1 delta_7_19_2 delta_7_19_3
 delta_7_20_0 delta_7_20_1 delta_7_20_2 delta_7_20_3 delta_7_21_0
 delta_7_21_1 delta_7_21_2 delta_7_21_3 delta_8_0_0 delta_8_0_1 delta_8_0_2
 delta_8_0_3 delta_8_1_0 delta_8_1_1 delta_8_1_2 delta_8_1_3 delta_8_2_0
 delta_8_2_1 delta_8_2_2 delta_8_2_3 delta_8_3_0 delta_8_3_1 delta_8_3_2
 delta_8_3_3 delta_8_4_0 delta_8_4_1 delta_8_4_2 delta_8_4_3 delta_8_5_0
 delta_8_5_1 delta_8_5_2 delta_8_5_3 delta_8_6_0 delta_8_6_1 delta_8_6_2
 delta_8_6_3 delta_8_7_0 delta_8_7_1 delta_8_7_2 delta_8_7_3 delta_8_8_0
 delta_8_8_1 delta_8_8_2 delta_8_8_3 delta_8_9_0 delta_8_9_1 delta_8_9_2
 delta_8_9_3 delta_8_10_0 delta_8_10_1 delta_8_10_2 delta_8_10_3
 delta_8_11_0 delta_8_11_1 delta_8_11_2 delta_8_11_3 delta_8_12_0
 delta_8_12_1 delta_8_12_2 delta_8_12_3 delta_8_13_0 delta_8_13_1
 delta_8_13_2 delta_8_13_3 delta_8_14_0 delta_8_14_1 delta_8_14_2
 delta_8_14_3 delta_8_15_0 delta_8_15_1 delta_8_15_2 delta_8_15_3
 delta_8_16_0 delta_8_16_1 delta_8_16_2 delta_8_16_3 delta_8_17_0
 delta_8_17_1 delta_8_17_2 delta_8_17_3 delta_8_18_0 delta_8_18_1
 delta_8_18_2 delta_8_18_3 delta_8_19_0 delta_8_19_1 delta_8_19_2
 delta_8_19_3 delta_8_20_0 delta_8_20_1 delta_8_20_2 delta_8_20_3
 delta_8_21_0 delta_8_21_1 delta_8_21_2 delta_8_21_3 delta_9_0_0
 delta_9_0_1 delta_9_0_2 delta_9_0_3 delta_9_1_0 delta_9_1_1 delta_9_1_2
 delta_9_1_3 delta_9_2_0 delta_9_2_1 delta_9_2_2 delta_9_2_3 delta_9_3_0
 delta_9_3_1 delta_9_3_2 delta_9_3_3 delta_9_4_0 delta_9_4_1 delta_9_4_2
 delta_9_4_3 delta_9_5_0 delta_9_5_1 delta_9_5_2 delta_9_5_3 delta_9_6_0
 delta_9_6_1 delta_9_6_2 delta_9_6_3 delta_9_7_0 delta_9_7_1 delta_9_7_2
 delta_9_7_3 delta_9_8_0 delta_9_8_1 delta_9_8_2 delta_9_8_3 delta_9_9_0
 delta_9_9_1 delta_9_9_2 delta_9_9_3 delta_9_10_0 delta_9_10_1 delta_9_10_2
 delta_9_10_3 delta_9_11_0 delta_9_11_1 delta_9_11_2 delta_9_11_3
 delta_9_12_0 delta_9_12_1 delta_9_12_2 delta_9_12_3 delta_9_13_0
 delta_9_13_1 delta_9_13_2 delta_9_13_3 delta_9_14_0 delta_9_14_1
 delta_9_14_2 delta_9_14_3 delta_9_15_0 delta_9_15_1 delta_9_15_2
 delta_9_15_3 delta_9_16_0 delta_9_16_1 delta_9_16_2 delta_9_16_3
 delta_9_17_0 delta_9_17_1 delta_9_17_2 delta_9_17_3 delta_9_18_0
 delta_9_18_1 delta_9_18_2 delta_9_18_3 delta_9_19_0 delta_9_19_1
 delta_9_19_2 delta_9_19_3 delta_9_20_0 delta_9_20_1 delta_9_20_2
 delta_9_20_3 delta_9_21_0 delta_9_21_1 delta_9_21_2 delta_9_21_3
 delta_10_0_0 delta_10_0_1 delta_10_0_2 delta_10_0_3 delta_10_1_0
 delta_10_1_1 delta_10_1_2 delta_10_1_3 delta_10_2_0 delta_10_2_1
 delta_10_2_2 delta_10_2_3 delta_10_3_0 delta_10_3_1 delta_10_3_2
 delta_10_3_3 delta_10_4_0 delta_10_4_1 delta_10_4_2 delta_10_4_3
 delta_10_5_0 delta_10_5_1 delta_10_5_2 delta_10_5_3 delta_10_6_0
 delta_10_6_1 delta_10_6_2 delta_10_6_3 delta_10_7_0 delta_10_7_1
 delta_10_7_2 delta_10_7_3 delta_10_8_0 delta_10_8_1 delta_10_8_2
 delta_10_8_3 delta_10_9_0 delta_10_9_1 delta_10_9_2 delta_10_9_3
 delta_10_10_0 delta_10_10_1 delta_10_10_2 delta_10_10_3 delta_10_11_0
 delta_10_11_1 delta_10_11_2 delta_10_11_3 delta_10_12_0 delta_10_12_1
 delta_10_12_2 delta_10_12_3 delta_10_13_0 delta_10_13_1 delta_10_13_2
 delta_10_13_3 delta_10_14_0 delta_10_14_1 delta_10_14_2 delta_10_14_3
 delta_10_15_0 delta_10_15_1 delta_10_15_2 delta_10_15_3 delta_10_16_0
 delta_10_16_1 delta_10_16_2 delta_10_16_3 delta_10_17_0 delta_10_17_1
 delta_10_17_2 delta_10_17_3 delta_10_18_0 delta_10_18_1 delta_10_18_2
 delta_10_18_3 delta_10_19_0 delta_10_19_1 delta_10_19_2 delta_10_19_3
 delta_10_20_0 delta_10_20_1 delta_10_20_2 delta_10_20_3 delta_10_21_0
 delta_10_21_1 delta_10_21_2 delta_10_21_3 delta_11_0_0 delta_11_0_1
 delta_11_0_2 delta_11_0_3 delta_11_1_0 delta_11_1_1 delta_11_1_2
 delta_11_1_3 delta_11_2_0 delta_11_2_1 delta_11_2_2 delta_11_2_3
 delta_11_3_0 delta_11_3_1 delta_11_3_2 delta_11_3_3 delta_11_4_0
 delta_11_4_1 delta_11_4_2 delta_11_4_3 delta_11_5_0 delta_11_5_1
 delta_11_5_2 delta_11_5_3 delta_11_6_0 delta_11_6_1 delta_11_6_2
 delta_11_6_3 delta_11_7_0 delta_11_7_1 delta_11_7_2 delta_11_7_3
 delta_11_8_0 delta_11_8_1 delta_11_8_2 delta_11_8_3 delta_11_9_0
 delta_11_9_1 delta_11_9_2 delta_11_9_3 delta_11_10_0 delta_11_10_1
 delta_11_10_2 delta_11_10_3 delta_11_11_0 delta_11_11_1 delta_11_11_2
 delta_11_11_3 delta_11_12_0 delta_11_12_1 delta_11_12_2 delta_11_12_3
 delta_11_13_0 delta_11_13_1 delta_11_13_2 delta_11_13_3 delta_11_14_0
 delta_11_14_1 delta_11_14_2 delta_11_14_3 delta_11_15_0 delta_11_15_1
 delta_11_15_2 delta_11_15_3 delta_11_16_0 delta_11_16_1 delta_11_16_2
 delta_11_16_3 delta_11_17_0 delta_11_17_1 delta_11_17_2 delta_11_17_3
 delta_11_18_0 delta_11_18_1 delta_11_18_2 delta_11_18_3 delta_11_19_0
 delta_11_19_1 delta_11_19_2 delta_11_19_3 delta_11_20_0 delta_11_20_1
 delta_11_20_2 delta_11_20_3 delta_11_21_0 delta_11_21_1 delta_11_21_2
 delta_11_21_3 delta_12_0_0 delta_12_0_1 delta_12_0_2 delta_12_0_3
 delta_12_1_0 delta_12_1_1 delta_12_1_2 delta_12_1_3 delta_12_2_0
 delta_12_2_1 delta_12_2_2 delta_12_2_3 delta_12_3_0 delta_12_3_1
 delta_12_3_2 delta_12_3_3 delta_12_4_0 delta_12_4_1 delta_12_4_2
 delta_12_4_3 delta_12_5_0 delta_12_5_1 delta_12_5_2 delta_12_5_3
 delta_12_6_0 delta_12_6_1 delta_12_6_2 delta_12_6_3 delta_12_7_0
 delta_12_7_1 delta_12_7_2 delta_12_7_3 delta_12_8_0 delta_12_8_1
 delta_12_8_2 delta_12_8_3 delta_12_9_0 delta_12_9_1 delta_12_9_2
 delta_12_9_3 delta_12_10_0 delta_12_10_1 delta_12_10_2 delta_12_10_3
 delta_12_11_0 delta_12_11_1 delta_12_11_2 delta_12_11_3 delta_12_12_0
 delta_12_12_1 delta_12_12_2 delta_12_12_3 delta_12_13_0 delta_12_13_1
 delta_12_13_2 delta_12_13_3 delta_12_14_0 delta_12_14_1 delta_12_14_2
 delta_12_14_3 delta_12_15_0 delta_12_15_1 delta_12_15_2 delta_12_15_3
 delta_12_16_0 delta_12_16_1 delta_12_16_2 delta_12_16_3 delta_12_17_0
 delta_12_17_1 delta_12_17_2 delta_12_17_3 delta_12_18_0 delta_12_18_1
 delta_12_18_2 delta_12_18_3 delta_12_19_0 delta_12_19_1 delta_12_19_2
 delta_12_19_3 delta_12_20_0 delta_12_20_1 delta_12_20_2 delta_12_20_3
 delta_12_21_0 delta_12_21_1 delta_12_21_2 delta_12_21_3 delta_13_0_0
 delta_13_0_1 delta_13_0_2 delta_13_0_3 delta_13_1_0 delta_13_1_1
 delta_13_1_2 delta_13_1_3 delta_13_2_0 delta_13_2_1 delta_13_2_2
 delta_13_2_3 delta_13_3_0 delta_13_3_1 delta_13_3_2 delta_13_3_3
 delta_13_4_0 delta_13_4_1 delta_13_4_2 delta_13_4_3 delta_13_5_0
 delta_13_5_1 delta_13_5_2 delta_13_5_3 delta_13_6_0 delta_13_6_1
 delta_13_6_2 delta_13_6_3 delta_13_7_0 delta_13_7_1 delta_13_7_2
 delta_13_7_3 delta_13_8_0 delta_13_8_1 delta_13_8_2 delta_13_8_3
 delta_13_9_0 delta_13_9_1 delta_13_9_2 delta_13_9_3 delta_13_10_0
 delta_13_10_1 delta_13_10_2 delta_13_10_3 delta_13_11_0 delta_13_11_1
 delta_13_11_2 delta_13_11_3 delta_13_12_0 delta_13_12_1 delta_13_12_2
 delta_13_12_3 delta_13_13_0 delta_13_13_1 delta_13_13_2 delta_13_13_3
 delta_13_14_0 delta_13_14_1 delta_13_14_2 delta_13_14_3 delta_13_15_0
 delta_13_15_1 delta_13_15_2 delta_13_15_3 delta_13_16_0 delta_13_16_1
 delta_13_16_2 delta_13_16_3 delta_13_17_0 delta_13_17_1 delta_13_17_2
 delta_13_17_3 delta_13_18_0 delta_13_18_1 delta_13_18_2 delta_13_18_3
 delta_13_19_0 delta_13_19_1 delta_13_19_2 delta_13_19_3 delta_13_20_0
 delta_13_20_1 delta_13_20_2 delta_13_20_3 delta_13_21_0 delta_13_21_1
 delta_13_21_2 delta_13_21_3 delta_14_0_0 delta_14_0_1 delta_14_0_2
 delta_14_0_3 delta_14_1_0 delta_14_1_1 delta_14_1_2 delta_14_1_3
 delta_14_2_0 delta_14_2_1 delta_14_2_2 delta_14_2_3 delta_14_3_0
 delta_14_3_1 delta_14_3_2 delta_14_3_3 delta_14_4_0 delta_14_4_1
 delta_14_4_2 delta_14_4_3 delta_14_5_0 delta_14_5_1 delta_14_5_2
 delta_14_5_3 delta_14_6_0 delta_14_6_1 delta_14_6_2 delta_14_6_3
 delta_14_7_0 delta_14_7_1 delta_14_7_2 delta_14_7_3 delta_14_8_0
 delta_14_8_1 delta_14_8_2 delta_14_8_3 delta_14_9_0 delta_14_9_1
 delta_14_9_2 delta_14_9_3 delta_14_10_0 delta_14_10_1 delta_14_10_2
 delta_14_10_3 delta_14_11_0 delta_14_11_1 delta_14_11_2 delta_14_11_3
 delta_14_12_0 delta_14_12_1 delta_14_12_2 delta_14_12_3 delta_14_13_0
 delta_14_13_1 delta_14_13_2 delta_14_13_3 delta_14_14_0 delta_14_14_1
 delta_14_14_2 delta_14_14_3 delta_14_15_0 delta_14_15_1 delta_14_15_2
 delta_14_15_3 delta_14_16_0 delta_14_16_1 delta_14_16_2 delta_14_16_3
 delta_14_17_0 delta_14_17_1 delta_14_17_2 delta_14_17_3 delta_14_18_0
 delta_14_18_1 delta_14_18_2 delta_14_18_3 delta_14_19_0 delta_14_19_1
 delta_14_19_2 delta_14_19_3 delta_14_20_0 delta_14_20_1 delta_14_20_2
 delta_14_20_3 delta_14_21_0 delta_14_21_1 delta_14_21_2 delta_14_21_3
 delta_15_0_0 delta_15_0_1 delta_15_0_2 delta_15_0_3 delta_15_1_0
 delta_15_1_1 delta_15_1_2 delta_15_1_3 delta_15_2_0 delta_15_2_1
 delta_15_2_2 delta_15_2_3 delta_15_3_0 delta_15_3_1 delta_15_3_2
 delta_15_3_3 delta_15_4_0 delta_15_4_1 delta_15_4_2 delta_15_4_3
 delta_15_5_0 delta_15_5_1 delta_15_5_2 delta_15_5_3 delta_15_6_0
 delta_15_6_1 delta_15_6_2 delta_15_6_3 delta_15_7_0 delta_15_7_1
 delta_15_7_2 delta_15_7_3 delta_15_8_0 delta_15_8_1 delta_15_8_2
 delta_15_8_3 delta_15_9_0 delta_15_9_1 delta_15_9_2 delta_15_9_3
 delta_15_10_0 delta_15_10_1 delta_15_10_2 delta_15_10_3 delta_15_11_0
 delta_15_11_1 delta_15_11_2 delta_15_11_3 delta_15_12_0 delta_15_12_1
 delta_15_12_2 delta_15_12_3 delta_15_13_0 delta_15_13_1 delta_15_13_2
 delta_15_13_3 delta_15_14_0 delta_15_14_1 delta_15_14_2 delta_15_14_3
 delta_15_15_0 delta_15_15_1 delta_15_15_2 delta_15_15_3 delta_15_16_0
 delta_15_16_1 delta_15_16_2 delta_15_16_3 delta_15_17_0 delta_15_17_1
 delta_15_17_2 delta_15_17_3 delta_15_18_0 delta_15_18_1 delta_15_18_2
 delta_15_18_3 delta_15_19_0 delta_15_19_1 delta_15_19_2 delta_15_19_3
 delta_15_20_0 delta_15_20_1 delta_15_20_2 delta_15_20_3 delta_15_21_0
 delta_15_21_1 delta_15_21_2 delta_15_21_3 delta_16_0_0 delta_16_0_1
 delta_16_0_2 delta_16_0_3 delta_16_1_0 delta_16_1_1 delta_16_1_2
 delta_16_1_3 delta_16_2_0 delta_16_2_1 delta_16_2_2 delta_16_2_3
 delta_16_3_0 delta_16_3_1 delta_16_3_2 delta_16_3_3 delta_16_4_0
 delta_16_4_1 delta_16_4_2 delta_16_4_3 delta_16_5_0 delta_16_5_1
 delta_16_5_2 delta_16_5_3 delta_16_6_0 delta_16_6_1 delta_16_6_2
 delta_16_6_3 delta_16_7_0 delta_16_7_1 delta_16_7_2 delta_16_7_3
 delta_16_8_0 delta_16_8_1 delta_16_8_2 delta_16_8_3 delta_16_9_0
 delta_16_9_1 delta_16_9_2 delta_16_9_3 delta_16_10_0 delta_16_10_1
 delta_16_10_2 delta_16_10_3 delta_16_11_0 delta_16_11_1 delta_16_11_2
 delta_16_11_3 delta_16_12_0 delta_16_12_1 delta_16_12_2 delta_16_12_3
 delta_16_13_0 delta_16_13_1 delta_16_13_2 delta_16_13_3 delta_16_14_0
 delta_16_14_1 delta_16_14_2 delta_16_14_3 delta_16_15_0 delta_16_15_1
 delta_16_15_2 delta_16_15_3 delta_16_16_0 delta_16_16_1 delta_16_16_2
 delta_16_16_3 delta_16_17_0 delta_16_17_1 delta_16_17_2 delta_16_17_3
 delta_16_18_0 delta_16_18_1 delta_16_18_2 delta_16_18_3 delta_16_19_0
 delta_16_19_1 delta_16_19_2 delta_16_19_3 delta_16_20_0 delta_16_20_1
 delta_16_20_2 delta_16_20_3 delta_16_21_0 delta_16_21_1 delta_16_21_2
 delta_16_21_3 delta_17_0_0 delta_17_0_1 delta_17_0_2 delta_17_0_3
 delta_17_1_0 delta_17_1_1 delta_17_1_2 delta_17_1_3 delta_17_2_0
 delta_17_2_1 delta_17_2_2 delta_17_2_3 delta_17_3_0 delta_17_3_1
 delta_17_3_2 delta_17_3_3 delta_17_4_0 delta_17_4_1 delta_17_4_2
 delta_17_4_3 delta_17_5_0 delta_17_5_1 delta_17_5_2 delta_17_5_3
 delta_17_6_0 delta_17_6_1 delta_17_6_2 delta_17_6_3 delta_17_7_0
 delta_17_7_1 delta_17_7_2 delta_17_7_3 delta_17_8_0 delta_17_8_1
 delta_17_8_2 delta_17_8_3 delta_17_9_0 delta_17_9_1 delta_17_9_2
 delta_17_9_3 delta_17_10_0 delta_17_10_1 delta_17_10_2 delta_17_10_3
 delta_17_11_0 delta_17_11_1 delta_17_11_2 delta_17_11_3 delta_17_12_0
 delta_17_12_1 delta_17_12_2 delta_17_12_3 delta_17_13_0 delta_17_13_1
 delta_17_13_2 delta_17_13_3 delta_17_14_0 delta_17_14_1 delta_17_14_2
 delta_17_14_3 delta_17_15_0 delta_17_15_1 delta_17_15_2 delta_17_15_3
 delta_17_16_0 delta_17_16_1 delta_17_16_2 delta_17_16_3 delta_17_17_0
 delta_17_17_1 delta_17_17_2 delta_17_17_3 delta_17_18_0 delta_17_18_1
 delta_17_18_2 delta_17_18_3 delta_17_19_0 delta_17_19_1 delta_17_19_2
 delta_17_19_3 delta_17_20_0 delta_17_20_1 delta_17_20_2 delta_17_20_3
 delta_17_21_0 delta_17_21_1 delta_17_21_2 delta_17_21_3 delta_18_0_0
 delta_18_0_1 delta_18_0_2 delta_18_0_3 delta_18_1_0 delta_18_1_1
 delta_18_1_2 delta_18_1_3 delta_18_2_0 delta_18_2_1 delta_18_2_2
 delta_18_2_3 delta_18_3_0 delta_18_3_1 delta_18_3_2 delta_18_3_3
 delta_18_4_0 delta_18_4_1 delta_18_4_2 delta_18_4_3 delta_18_5_0
 delta_18_5_1 delta_18_5_2 delta_18_5_3 delta_18_6_0 delta_18_6_1
 delta_18_6_2 delta_18_6_3 delta_18_7_0 delta_18_7_1 delta_18_7_2
 delta_18_7_3 delta_18_8_0 delta_18_8_1 delta_18_8_2 delta_18_8_3
 delta_18_9_0 delta_18_9_1 delta_18_9_2 delta_18_9_3 delta_18_10_0
 delta_18_10_1 delta_18_10_2 delta_18_10_3 delta_18_11_0 delta_18_11_1
 delta_18_11_2 delta_18_11_3 delta_18_12_0 delta_18_12_1 delta_18_12_2
 delta_18_12_3 delta_18_13_0 delta_18_13_1 delta_18_13_2 delta_18_13_3
 delta_18_14_0 delta_18_14_1 delta_18_14_2 delta_18_14_3 delta_18_15_0
 delta_18_15_1 delta_18_15_2 delta_18_15_3 delta_18_16_0 delta_18_16_1
 delta_18_16_2 delta_18_16_3 delta_18_17_0 delta_18_17_1 delta_18_17_2
 delta_18_17_3 delta_18_18_0 delta_18_18_1 delta_18_18_2 delta_18_18_3
 delta_18_19_0 delta_18_19_1 delta_18_19_2 delta_18_19_3 delta_18_20_0
 delta_18_20_1 delta_18_20_2 delta_18_20_3 delta_18_21_0 delta_18_21_1
 delta_18_21_2 delta_18_21_3 delta_19_0_0 delta_19_0_1 delta_19_0_2
 delta_19_0_3 delta_19_1_0 delta_19_1_1 delta_19_1_2 delta_19_1_3
 delta_19_2_0 delta_19_2_1 delta_19_2_2 delta_19_2_3 delta_19_3_0
 delta_19_3_1 delta_19_3_2 delta_19_3_3 delta_19_4_0 delta_19_4_1
 delta_19_4_2 delta_19_4_3 delta_19_5_0 delta_19_5_1 delta_19_5_2
 delta_19_5_3 delta_19_6_0 delta_19_6_1 delta_19_6_2 delta_19_6_3
 delta_19_7_0 delta_19_7_1 delta_19_7_2 delta_19_7_3 delta_19_8_0
 delta_19_8_1 delta_19_8_2 delta_19_8_3 delta_19_9_0 delta_19_9_1
 delta_19_9_2 delta_19_9_3 delta_19_10_0 delta_19_10_1 delta_19_10_2
 delta_19_10_3 delta_19_11_0 delta_19_11_1 delta_19_11_2 delta_19_11_3
 delta_19_12_0 delta_19_12_1 delta_19_12_2 delta_19_12_3 delta_19_13_0
 delta_19_13_1 delta_19_13_2 delta_19_13_3 delta_19_14_0 delta_19_14_1
 delta_19_14_2 delta_19_14_3 delta_19_15_0 delta_19_15_1 delta_19_15_2
 delta_19_15_3 delta_19_16_0 delta_19_16_1 delta_19_16_2 delta_19_16_3
 delta_19_17_0 delta_19_17_1 delta_19_17_2 delta_19_17_3 delta_19_18_0
 delta_19_18_1 delta_19_18_2 delta_19_18_3 delta_19_19_0 delta_19_19_1
 delta_19_19_2 delta_19_19_3 delta_19_20_0 delta_19_20_1 delta_19_20_2
 delta_19_20_3 delta_19_21_0 delta_19_21_1 delta_19_21_2 delta_19_21_3
 delta_20_0_0 delta_20_0_1 delta_20_0_2 delta_20_0_3 delta_20_1_0
 delta_20_1_1 delta_20_1_2 delta_20_1_3 delta_20_2_0 delta_20_2_1
 delta_20_2_2 delta_20_2_3 delta_20_3_0 delta_20_3_1 delta_20_3_2
 delta_20_3_3 delta_20_4_0 delta_20_4_1 delta_20_4_2 delta_20_4_3
 delta_20_5_0 delta_20_5_1 delta_20_5_2 delta_20_5_3 delta_20_6_0
 delta_20_6_1 delta_20_6_2 delta_20_6_3 delta_20_7_0 delta_20_7_1
 delta_20_7_2 delta_20_7_3 delta_20_8_0 delta_20_8_1 delta_20_8_2
 delta_20_8_3 delta_20_9_0 delta_20_9_1 delta_20_9_2 delta_20_9_3
 delta_20_10_0 delta_20_10_1 delta_20_10_2 delta_20_10_3 delta_20_11_0
 delta_20_11_1 delta_20_11_2 delta_20_11_3 delta_20_12_0 delta_20_12_1
 delta_20_12_2 delta_20_12_3 delta_20_13_0 delta_20_13_1 delta_20_13_2
 delta_20_13_3 delta_20_14_0 delta_20_14_1 delta_20_14_2 delta_20_14_3
 delta_20_15_0 delta_20_15_1 delta_20_15_2 delta_20_15_3 delta_20_16_0
 delta_20_16_1 delta_20_16_2 delta_20_16_3 delta_20_17_0 delta_20_17_1
 delta_20_17_2 delta_20_17_3 delta_20_18_0 delta_20_18_1 delta_20_18_2
 delta_20_18_3 delta_20_19_0 delta_20_19_1 delta_20_19_2 delta_20_19_3
 delta_20_20_0 delta_20_20_1 delta_20_20_2 delta_20_20_3 delta_20_21_0
 delta_20_21_1 delta_20_21_2 delta_20_21_3 delta_21_0_0 delta_21_0_1
 delta_21_0_2 delta_21_0_3 delta_21_1_0 delta_21_1_1 delta_21_1_2
 delta_21_1_3 delta_21_2_0 delta_21_2_1 delta_21_2_2 delta_21_2_3
 delta_21_3_0 delta_21_3_1 delta_21_3_2 delta_21_3_3 delta_21_4_0
 delta_21_4_1 delta_21_4_2 delta_21_4_3 delta_21_5_0 delta_21_5_1
 delta_21_5_2 delta_21_5_3 delta_21_6_0 delta_21_6_1 delta_21_6_2
 delta_21_6_3 delta_21_7_0 delta_21_7_1 delta_21_7_2 delta_21_7_3
 delta_21_8_0 delta_21_8_1 delta_21_8_2 delta_21_8_3 delta_21_9_0
 delta_21_9_1 delta_21_9_2 delta_21_9_3 delta_21_10_0 delta_21_10_1
 delta_21_10_2 delta_21_10_3 delta_21_11_0 delta_21_11_1 delta_21_11_2
 delta_21_11_3 delta_21_12_0 delta_21_12_1 delta_21_12_2 delta_21_12_3
 delta_21_13_0 delta_21_13_1 delta_21_13_2 delta_21_13_3 delta_21_14_0
 delta_21_14_1 delta_21_14_2 delta_21_14_3 delta_21_15_0 delta_21_15_1
 delta_21_15_2 delta_21_15_3 delta_21_16_0 delta_21_16_1 delta_21_16_2
 delta_21_16_3 delta_21_17_0 delta_21_17_1 delta_21_17_2 delta_21_17_3
 delta_21_18_0 delta_21_18_1 delta_21_18_2 delta_21_18_3 delta_21_19_0
 delta_21_19_1 delta_21_19_2 delta_21_19_3 delta_21_20_0 delta_21_20_1
 delta_21_20_2 delta_21_20_3 delta_21_21_0 delta_21_21_1 delta_21_21_2
 delta_21_21_3 rotation_0 rotation_1 rotation_2 rotation_3 rotation_4
 rotation_5 rotation_6 rotation_7 rotation_8 rotation_9 rotation_10
 rotation_11 rotation_12 rotation_13 rotation_14 rotation_15 rotation_16
 rotation_17 rotation_18 rotation_19 rotation_20 rotation_21
Generals
 x_0 y_0 x_1 y_1 x_2 y_2 x_3 y_3 x_4 y_4 x_5 y_5 x_6 y_6 x_7 y_7 x_8 y_8
 x_9 y_9 x_10 y_10 x_11 y_11 x_12 y_12 x_13 y_13 x_14 y_14 x_15 y_15 x_16
 y_16 x_17 y_17 x_18 y_18 x_19 y_19 x_20 y_20 x_21 y_21 height
End
