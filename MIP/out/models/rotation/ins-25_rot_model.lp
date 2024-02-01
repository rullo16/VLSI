\ Model VLSI_Design_rot
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  height
Subject To
 square_block_0: rotation_0 = 0
 square_block_20: rotation_20 = 0
 symmetry_break_x: x_18 = 0
 symmetry_break_y: y_18 = 0
 area_low: 32 height >= 1024
 area_up: 32 height <= 10240
 w_overflow_0: x_0 <= 29
 h_overflow_0: y_0 - height <= -3
 w_overflow_1: x_1 + rotation_1 <= 29
 h_overflow_1: y_1 - height - rotation_1 <= -4
 w_overflow_2: x_2 + 2 rotation_2 <= 29
 h_overflow_2: y_2 - height - 2 rotation_2 <= -5
 w_overflow_3: x_3 + 3 rotation_3 <= 29
 h_overflow_3: y_3 - height - 3 rotation_3 <= -6
 w_overflow_4: x_4 + 4 rotation_4 <= 29
 h_overflow_4: y_4 - height - 4 rotation_4 <= -7
 w_overflow_5: x_5 + 5 rotation_5 <= 29
 h_overflow_5: y_5 - height - 5 rotation_5 <= -8
 w_overflow_6: x_6 + 6 rotation_6 <= 29
 h_overflow_6: y_6 - height - 6 rotation_6 <= -9
 w_overflow_7: x_7 + 7 rotation_7 <= 29
 h_overflow_7: y_7 - height - 7 rotation_7 <= -10
 w_overflow_8: x_8 + 8 rotation_8 <= 29
 h_overflow_8: y_8 - height - 8 rotation_8 <= -11
 w_overflow_9: x_9 + 9 rotation_9 <= 29
 h_overflow_9: y_9 - height - 9 rotation_9 <= -12
 w_overflow_10: x_10 + 10 rotation_10 <= 29
 h_overflow_10: y_10 - height - 10 rotation_10 <= -13
 w_overflow_11: x_11 + 11 rotation_11 <= 29
 h_overflow_11: y_11 - height - 11 rotation_11 <= -14
 w_overflow_12: x_12 + 12 rotation_12 <= 29
 h_overflow_12: y_12 - height - 12 rotation_12 <= -15
 w_overflow_13: x_13 + 15 rotation_13 <= 29
 h_overflow_13: y_13 - height - 15 rotation_13 <= -18
 w_overflow_14: x_14 + 19 rotation_14 <= 29
 h_overflow_14: y_14 - height - 19 rotation_14 <= -22
 w_overflow_15: x_15 + 20 rotation_15 <= 29
 h_overflow_15: y_15 - height - 20 rotation_15 <= -23
 w_overflow_16: x_16 + 21 rotation_16 <= 29
 h_overflow_16: y_16 - height - 21 rotation_16 <= -24
 w_overflow_17: x_17 + 22 rotation_17 <= 29
 h_overflow_17: y_17 - height - 22 rotation_17 <= -25
 w_overflow_18: x_18 + 24 rotation_18 <= 29
 h_overflow_18: y_18 - height - 24 rotation_18 <= -27
 w_overflow_19: x_19 - rotation_19 <= 28
 h_overflow_19: y_19 - height + rotation_19 <= -3
 w_overflow_20: x_20 <= 28
 h_overflow_20: y_20 - height <= -4
 w_overflow_21: x_21 + rotation_21 <= 28
 h_overflow_21: y_21 - height - rotation_21 <= -5
 w_overflow_22: x_22 + 2 rotation_22 <= 28
 h_overflow_22: y_22 - height - 2 rotation_22 <= -6
 w_overflow_23: x_23 + 3 rotation_23 <= 28
 h_overflow_23: y_23 - height - 3 rotation_23 <= -7
 w_overflow_24: x_24 + 6 rotation_24 <= 28
 h_overflow_24: y_24 - height - 6 rotation_24 <= -10
 w_overflow_25: x_25 + 7 rotation_25 <= 28
 h_overflow_25: y_25 - height - 7 rotation_25 <= -11
 w_overflow_26: x_26 + 14 rotation_26 <= 28
 h_overflow_26: y_26 - height - 14 rotation_26 <= -18
 hc1_0_1: x_0 - x_1 - 32 delta_0_1_0 <= -3
 hc2_0_1: - x_0 + x_1 - 32 delta_0_1_2 + rotation_1 <= -3
 hc1_0_2: x_0 - x_2 - 32 delta_0_2_0 <= -3
 hc2_0_2: - x_0 + x_2 - 32 delta_0_2_2 + 2 rotation_2 <= -3
 hc1_0_3: x_0 - x_3 - 32 delta_0_3_0 <= -3
 hc2_0_3: - x_0 + x_3 - 32 delta_0_3_2 + 3 rotation_3 <= -3
 hc1_0_4: x_0 - x_4 - 32 delta_0_4_0 <= -3
 hc2_0_4: - x_0 + x_4 - 32 delta_0_4_2 + 4 rotation_4 <= -3
 hc1_0_5: x_0 - x_5 - 32 delta_0_5_0 <= -3
 hc2_0_5: - x_0 + x_5 - 32 delta_0_5_2 + 5 rotation_5 <= -3
 hc1_0_6: x_0 - x_6 - 32 delta_0_6_0 <= -3
 hc2_0_6: - x_0 + x_6 - 32 delta_0_6_2 + 6 rotation_6 <= -3
 hc1_0_7: x_0 - x_7 - 32 delta_0_7_0 <= -3
 hc2_0_7: - x_0 + x_7 - 32 delta_0_7_2 + 7 rotation_7 <= -3
 hc1_0_8: x_0 - x_8 - 32 delta_0_8_0 <= -3
 hc2_0_8: - x_0 + x_8 - 32 delta_0_8_2 + 8 rotation_8 <= -3
 hc1_0_9: x_0 - x_9 - 32 delta_0_9_0 <= -3
 hc2_0_9: - x_0 + x_9 - 32 delta_0_9_2 + 9 rotation_9 <= -3
 hc1_0_10: x_0 - x_10 - 32 delta_0_10_0 <= -3
 hc2_0_10: - x_0 + x_10 - 32 delta_0_10_2 + 10 rotation_10 <= -3
 hc1_0_11: x_0 - x_11 - 32 delta_0_11_0 <= -3
 hc2_0_11: - x_0 + x_11 - 32 delta_0_11_2 + 11 rotation_11 <= -3
 hc1_0_12: x_0 - x_12 - 32 delta_0_12_0 <= -3
 hc2_0_12: - x_0 + x_12 - 32 delta_0_12_2 + 12 rotation_12 <= -3
 hc1_0_13: x_0 - x_13 - 32 delta_0_13_0 <= -3
 hc2_0_13: - x_0 + x_13 - 32 delta_0_13_2 + 15 rotation_13 <= -3
 hc1_0_14: x_0 - x_14 - 32 delta_0_14_0 <= -3
 hc2_0_14: - x_0 + x_14 - 32 delta_0_14_2 + 19 rotation_14 <= -3
 hc1_0_15: x_0 - x_15 - 32 delta_0_15_0 <= -3
 hc2_0_15: - x_0 + x_15 - 32 delta_0_15_2 + 20 rotation_15 <= -3
 hc1_0_16: x_0 - x_16 - 32 delta_0_16_0 <= -3
 hc2_0_16: - x_0 + x_16 - 32 delta_0_16_2 + 21 rotation_16 <= -3
 hc1_0_17: x_0 - x_17 - 32 delta_0_17_0 <= -3
 hc2_0_17: - x_0 + x_17 - 32 delta_0_17_2 + 22 rotation_17 <= -3
 hc1_0_18: x_0 - x_18 - 32 delta_0_18_0 <= -3
 hc2_0_18: - x_0 + x_18 - 32 delta_0_18_2 + 24 rotation_18 <= -3
 hc1_0_19: x_0 - x_19 - 32 delta_0_19_0 <= -3
 hc2_0_19: - x_0 + x_19 - 32 delta_0_19_2 - rotation_19 <= -4
 hc1_0_20: x_0 - x_20 - 32 delta_0_20_0 <= -3
 hc2_0_20: - x_0 + x_20 - 32 delta_0_20_2 <= -4
 hc1_0_21: x_0 - x_21 - 32 delta_0_21_0 <= -3
 hc2_0_21: - x_0 + x_21 - 32 delta_0_21_2 + rotation_21 <= -4
 hc1_0_22: x_0 - x_22 - 32 delta_0_22_0 <= -3
 hc2_0_22: - x_0 + x_22 - 32 delta_0_22_2 + 2 rotation_22 <= -4
 hc1_0_23: x_0 - x_23 - 32 delta_0_23_0 <= -3
 hc2_0_23: - x_0 + x_23 - 32 delta_0_23_2 + 3 rotation_23 <= -4
 hc1_0_24: x_0 - x_24 - 32 delta_0_24_0 <= -3
 hc2_0_24: - x_0 + x_24 - 32 delta_0_24_2 + 6 rotation_24 <= -4
 hc1_0_25: x_0 - x_25 - 32 delta_0_25_0 <= -3
 hc2_0_25: - x_0 + x_25 - 32 delta_0_25_2 + 7 rotation_25 <= -4
 hc1_0_26: x_0 - x_26 - 32 delta_0_26_0 <= -3
 hc2_0_26: - x_0 + x_26 - 32 delta_0_26_2 + 14 rotation_26 <= -4
 hc1_1_2: x_1 - x_2 - 32 delta_1_2_0 + rotation_1 <= -3
 hc2_1_2: - x_1 + x_2 - 32 delta_1_2_2 + 2 rotation_2 <= -3
 hc1_1_3: x_1 - x_3 - 32 delta_1_3_0 + rotation_1 <= -3
 hc2_1_3: - x_1 + x_3 - 32 delta_1_3_2 + 3 rotation_3 <= -3
 hc1_1_4: x_1 - x_4 - 32 delta_1_4_0 + rotation_1 <= -3
 hc2_1_4: - x_1 + x_4 - 32 delta_1_4_2 + 4 rotation_4 <= -3
 hc1_1_5: x_1 - x_5 - 32 delta_1_5_0 + rotation_1 <= -3
 hc2_1_5: - x_1 + x_5 - 32 delta_1_5_2 + 5 rotation_5 <= -3
 hc1_1_6: x_1 - x_6 - 32 delta_1_6_0 + rotation_1 <= -3
 hc2_1_6: - x_1 + x_6 - 32 delta_1_6_2 + 6 rotation_6 <= -3
 hc1_1_7: x_1 - x_7 - 32 delta_1_7_0 + rotation_1 <= -3
 hc2_1_7: - x_1 + x_7 - 32 delta_1_7_2 + 7 rotation_7 <= -3
 hc1_1_8: x_1 - x_8 - 32 delta_1_8_0 + rotation_1 <= -3
 hc2_1_8: - x_1 + x_8 - 32 delta_1_8_2 + 8 rotation_8 <= -3
 hc1_1_9: x_1 - x_9 - 32 delta_1_9_0 + rotation_1 <= -3
 hc2_1_9: - x_1 + x_9 - 32 delta_1_9_2 + 9 rotation_9 <= -3
 hc1_1_10: x_1 - x_10 - 32 delta_1_10_0 + rotation_1 <= -3
 hc2_1_10: - x_1 + x_10 - 32 delta_1_10_2 + 10 rotation_10 <= -3
 hc1_1_11: x_1 - x_11 - 32 delta_1_11_0 + rotation_1 <= -3
 hc2_1_11: - x_1 + x_11 - 32 delta_1_11_2 + 11 rotation_11 <= -3
 hc1_1_12: x_1 - x_12 - 32 delta_1_12_0 + rotation_1 <= -3
 hc2_1_12: - x_1 + x_12 - 32 delta_1_12_2 + 12 rotation_12 <= -3
 hc1_1_13: x_1 - x_13 - 32 delta_1_13_0 + rotation_1 <= -3
 hc2_1_13: - x_1 + x_13 - 32 delta_1_13_2 + 15 rotation_13 <= -3
 hc1_1_14: x_1 - x_14 - 32 delta_1_14_0 + rotation_1 <= -3
 hc2_1_14: - x_1 + x_14 - 32 delta_1_14_2 + 19 rotation_14 <= -3
 hc1_1_15: x_1 - x_15 - 32 delta_1_15_0 + rotation_1 <= -3
 hc2_1_15: - x_1 + x_15 - 32 delta_1_15_2 + 20 rotation_15 <= -3
 hc1_1_16: x_1 - x_16 - 32 delta_1_16_0 + rotation_1 <= -3
 hc2_1_16: - x_1 + x_16 - 32 delta_1_16_2 + 21 rotation_16 <= -3
 hc1_1_17: x_1 - x_17 - 32 delta_1_17_0 + rotation_1 <= -3
 hc2_1_17: - x_1 + x_17 - 32 delta_1_17_2 + 22 rotation_17 <= -3
 hc1_1_18: x_1 - x_18 - 32 delta_1_18_0 + rotation_1 <= -3
 hc2_1_18: - x_1 + x_18 - 32 delta_1_18_2 + 24 rotation_18 <= -3
 hc1_1_19: x_1 - x_19 - 32 delta_1_19_0 + rotation_1 <= -3
 hc2_1_19: - x_1 + x_19 - 32 delta_1_19_2 - rotation_19 <= -4
 hc1_1_20: x_1 - x_20 - 32 delta_1_20_0 + rotation_1 <= -3
 hc2_1_20: - x_1 + x_20 - 32 delta_1_20_2 <= -4
 hc1_1_21: x_1 - x_21 - 32 delta_1_21_0 + rotation_1 <= -3
 hc2_1_21: - x_1 + x_21 - 32 delta_1_21_2 + rotation_21 <= -4
 hc1_1_22: x_1 - x_22 - 32 delta_1_22_0 + rotation_1 <= -3
 hc2_1_22: - x_1 + x_22 - 32 delta_1_22_2 + 2 rotation_22 <= -4
 hc1_1_23: x_1 - x_23 - 32 delta_1_23_0 + rotation_1 <= -3
 hc2_1_23: - x_1 + x_23 - 32 delta_1_23_2 + 3 rotation_23 <= -4
 hc1_1_24: x_1 - x_24 - 32 delta_1_24_0 + rotation_1 <= -3
 hc2_1_24: - x_1 + x_24 - 32 delta_1_24_2 + 6 rotation_24 <= -4
 hc1_1_25: x_1 - x_25 - 32 delta_1_25_0 + rotation_1 <= -3
 hc2_1_25: - x_1 + x_25 - 32 delta_1_25_2 + 7 rotation_25 <= -4
 hc1_1_26: x_1 - x_26 - 32 delta_1_26_0 + rotation_1 <= -3
 hc2_1_26: - x_1 + x_26 - 32 delta_1_26_2 + 14 rotation_26 <= -4
 hc1_2_3: x_2 - x_3 - 32 delta_2_3_0 + 2 rotation_2 <= -3
 hc2_2_3: - x_2 + x_3 - 32 delta_2_3_2 + 3 rotation_3 <= -3
 hc1_2_4: x_2 - x_4 - 32 delta_2_4_0 + 2 rotation_2 <= -3
 hc2_2_4: - x_2 + x_4 - 32 delta_2_4_2 + 4 rotation_4 <= -3
 hc1_2_5: x_2 - x_5 - 32 delta_2_5_0 + 2 rotation_2 <= -3
 hc2_2_5: - x_2 + x_5 - 32 delta_2_5_2 + 5 rotation_5 <= -3
 hc1_2_6: x_2 - x_6 - 32 delta_2_6_0 + 2 rotation_2 <= -3
 hc2_2_6: - x_2 + x_6 - 32 delta_2_6_2 + 6 rotation_6 <= -3
 hc1_2_7: x_2 - x_7 - 32 delta_2_7_0 + 2 rotation_2 <= -3
 hc2_2_7: - x_2 + x_7 - 32 delta_2_7_2 + 7 rotation_7 <= -3
 hc1_2_8: x_2 - x_8 - 32 delta_2_8_0 + 2 rotation_2 <= -3
 hc2_2_8: - x_2 + x_8 - 32 delta_2_8_2 + 8 rotation_8 <= -3
 hc1_2_9: x_2 - x_9 - 32 delta_2_9_0 + 2 rotation_2 <= -3
 hc2_2_9: - x_2 + x_9 - 32 delta_2_9_2 + 9 rotation_9 <= -3
 hc1_2_10: x_2 - x_10 - 32 delta_2_10_0 + 2 rotation_2 <= -3
 hc2_2_10: - x_2 + x_10 - 32 delta_2_10_2 + 10 rotation_10 <= -3
 hc1_2_11: x_2 - x_11 - 32 delta_2_11_0 + 2 rotation_2 <= -3
 hc2_2_11: - x_2 + x_11 - 32 delta_2_11_2 + 11 rotation_11 <= -3
 hc1_2_12: x_2 - x_12 - 32 delta_2_12_0 + 2 rotation_2 <= -3
 hc2_2_12: - x_2 + x_12 - 32 delta_2_12_2 + 12 rotation_12 <= -3
 hc1_2_13: x_2 - x_13 - 32 delta_2_13_0 + 2 rotation_2 <= -3
 hc2_2_13: - x_2 + x_13 - 32 delta_2_13_2 + 15 rotation_13 <= -3
 hc1_2_14: x_2 - x_14 - 32 delta_2_14_0 + 2 rotation_2 <= -3
 hc2_2_14: - x_2 + x_14 - 32 delta_2_14_2 + 19 rotation_14 <= -3
 hc1_2_15: x_2 - x_15 - 32 delta_2_15_0 + 2 rotation_2 <= -3
 hc2_2_15: - x_2 + x_15 - 32 delta_2_15_2 + 20 rotation_15 <= -3
 hc1_2_16: x_2 - x_16 - 32 delta_2_16_0 + 2 rotation_2 <= -3
 hc2_2_16: - x_2 + x_16 - 32 delta_2_16_2 + 21 rotation_16 <= -3
 hc1_2_17: x_2 - x_17 - 32 delta_2_17_0 + 2 rotation_2 <= -3
 hc2_2_17: - x_2 + x_17 - 32 delta_2_17_2 + 22 rotation_17 <= -3
 hc1_2_18: x_2 - x_18 - 32 delta_2_18_0 + 2 rotation_2 <= -3
 hc2_2_18: - x_2 + x_18 - 32 delta_2_18_2 + 24 rotation_18 <= -3
 hc1_2_19: x_2 - x_19 - 32 delta_2_19_0 + 2 rotation_2 <= -3
 hc2_2_19: - x_2 + x_19 - 32 delta_2_19_2 - rotation_19 <= -4
 hc1_2_20: x_2 - x_20 - 32 delta_2_20_0 + 2 rotation_2 <= -3
 hc2_2_20: - x_2 + x_20 - 32 delta_2_20_2 <= -4
 hc1_2_21: x_2 - x_21 - 32 delta_2_21_0 + 2 rotation_2 <= -3
 hc2_2_21: - x_2 + x_21 - 32 delta_2_21_2 + rotation_21 <= -4
 hc1_2_22: x_2 - x_22 - 32 delta_2_22_0 + 2 rotation_2 <= -3
 hc2_2_22: - x_2 + x_22 - 32 delta_2_22_2 + 2 rotation_22 <= -4
 hc1_2_23: x_2 - x_23 - 32 delta_2_23_0 + 2 rotation_2 <= -3
 hc2_2_23: - x_2 + x_23 - 32 delta_2_23_2 + 3 rotation_23 <= -4
 hc1_2_24: x_2 - x_24 - 32 delta_2_24_0 + 2 rotation_2 <= -3
 hc2_2_24: - x_2 + x_24 - 32 delta_2_24_2 + 6 rotation_24 <= -4
 hc1_2_25: x_2 - x_25 - 32 delta_2_25_0 + 2 rotation_2 <= -3
 hc2_2_25: - x_2 + x_25 - 32 delta_2_25_2 + 7 rotation_25 <= -4
 hc1_2_26: x_2 - x_26 - 32 delta_2_26_0 + 2 rotation_2 <= -3
 hc2_2_26: - x_2 + x_26 - 32 delta_2_26_2 + 14 rotation_26 <= -4
 hc1_3_4: x_3 - x_4 - 32 delta_3_4_0 + 3 rotation_3 <= -3
 hc2_3_4: - x_3 + x_4 - 32 delta_3_4_2 + 4 rotation_4 <= -3
 hc1_3_5: x_3 - x_5 - 32 delta_3_5_0 + 3 rotation_3 <= -3
 hc2_3_5: - x_3 + x_5 - 32 delta_3_5_2 + 5 rotation_5 <= -3
 hc1_3_6: x_3 - x_6 - 32 delta_3_6_0 + 3 rotation_3 <= -3
 hc2_3_6: - x_3 + x_6 - 32 delta_3_6_2 + 6 rotation_6 <= -3
 hc1_3_7: x_3 - x_7 - 32 delta_3_7_0 + 3 rotation_3 <= -3
 hc2_3_7: - x_3 + x_7 - 32 delta_3_7_2 + 7 rotation_7 <= -3
 hc1_3_8: x_3 - x_8 - 32 delta_3_8_0 + 3 rotation_3 <= -3
 hc2_3_8: - x_3 + x_8 - 32 delta_3_8_2 + 8 rotation_8 <= -3
 hc1_3_9: x_3 - x_9 - 32 delta_3_9_0 + 3 rotation_3 <= -3
 hc2_3_9: - x_3 + x_9 - 32 delta_3_9_2 + 9 rotation_9 <= -3
 hc1_3_10: x_3 - x_10 - 32 delta_3_10_0 + 3 rotation_3 <= -3
 hc2_3_10: - x_3 + x_10 - 32 delta_3_10_2 + 10 rotation_10 <= -3
 hc1_3_11: x_3 - x_11 - 32 delta_3_11_0 + 3 rotation_3 <= -3
 hc2_3_11: - x_3 + x_11 - 32 delta_3_11_2 + 11 rotation_11 <= -3
 hc1_3_12: x_3 - x_12 - 32 delta_3_12_0 + 3 rotation_3 <= -3
 hc2_3_12: - x_3 + x_12 - 32 delta_3_12_2 + 12 rotation_12 <= -3
 hc1_3_13: x_3 - x_13 - 32 delta_3_13_0 + 3 rotation_3 <= -3
 hc2_3_13: - x_3 + x_13 - 32 delta_3_13_2 + 15 rotation_13 <= -3
 hc1_3_14: x_3 - x_14 - 32 delta_3_14_0 + 3 rotation_3 <= -3
 hc2_3_14: - x_3 + x_14 - 32 delta_3_14_2 + 19 rotation_14 <= -3
 hc1_3_15: x_3 - x_15 - 32 delta_3_15_0 + 3 rotation_3 <= -3
 hc2_3_15: - x_3 + x_15 - 32 delta_3_15_2 + 20 rotation_15 <= -3
 hc1_3_16: x_3 - x_16 - 32 delta_3_16_0 + 3 rotation_3 <= -3
 hc2_3_16: - x_3 + x_16 - 32 delta_3_16_2 + 21 rotation_16 <= -3
 hc1_3_17: x_3 - x_17 - 32 delta_3_17_0 + 3 rotation_3 <= -3
 hc2_3_17: - x_3 + x_17 - 32 delta_3_17_2 + 22 rotation_17 <= -3
 hc1_3_18: x_3 - x_18 - 32 delta_3_18_0 + 3 rotation_3 <= -3
 hc2_3_18: - x_3 + x_18 - 32 delta_3_18_2 + 24 rotation_18 <= -3
 hc1_3_19: x_3 - x_19 - 32 delta_3_19_0 + 3 rotation_3 <= -3
 hc2_3_19: - x_3 + x_19 - 32 delta_3_19_2 - rotation_19 <= -4
 hc1_3_20: x_3 - x_20 - 32 delta_3_20_0 + 3 rotation_3 <= -3
 hc2_3_20: - x_3 + x_20 - 32 delta_3_20_2 <= -4
 hc1_3_21: x_3 - x_21 - 32 delta_3_21_0 + 3 rotation_3 <= -3
 hc2_3_21: - x_3 + x_21 - 32 delta_3_21_2 + rotation_21 <= -4
 hc1_3_22: x_3 - x_22 - 32 delta_3_22_0 + 3 rotation_3 <= -3
 hc2_3_22: - x_3 + x_22 - 32 delta_3_22_2 + 2 rotation_22 <= -4
 hc1_3_23: x_3 - x_23 - 32 delta_3_23_0 + 3 rotation_3 <= -3
 hc2_3_23: - x_3 + x_23 - 32 delta_3_23_2 + 3 rotation_23 <= -4
 hc1_3_24: x_3 - x_24 - 32 delta_3_24_0 + 3 rotation_3 <= -3
 hc2_3_24: - x_3 + x_24 - 32 delta_3_24_2 + 6 rotation_24 <= -4
 hc1_3_25: x_3 - x_25 - 32 delta_3_25_0 + 3 rotation_3 <= -3
 hc2_3_25: - x_3 + x_25 - 32 delta_3_25_2 + 7 rotation_25 <= -4
 hc1_3_26: x_3 - x_26 - 32 delta_3_26_0 + 3 rotation_3 <= -3
 hc2_3_26: - x_3 + x_26 - 32 delta_3_26_2 + 14 rotation_26 <= -4
 hc1_4_5: x_4 - x_5 - 32 delta_4_5_0 + 4 rotation_4 <= -3
 hc2_4_5: - x_4 + x_5 - 32 delta_4_5_2 + 5 rotation_5 <= -3
 hc1_4_6: x_4 - x_6 - 32 delta_4_6_0 + 4 rotation_4 <= -3
 hc2_4_6: - x_4 + x_6 - 32 delta_4_6_2 + 6 rotation_6 <= -3
 hc1_4_7: x_4 - x_7 - 32 delta_4_7_0 + 4 rotation_4 <= -3
 hc2_4_7: - x_4 + x_7 - 32 delta_4_7_2 + 7 rotation_7 <= -3
 hc1_4_8: x_4 - x_8 - 32 delta_4_8_0 + 4 rotation_4 <= -3
 hc2_4_8: - x_4 + x_8 - 32 delta_4_8_2 + 8 rotation_8 <= -3
 hc1_4_9: x_4 - x_9 - 32 delta_4_9_0 + 4 rotation_4 <= -3
 hc2_4_9: - x_4 + x_9 - 32 delta_4_9_2 + 9 rotation_9 <= -3
 hc1_4_10: x_4 - x_10 - 32 delta_4_10_0 + 4 rotation_4 <= -3
 hc2_4_10: - x_4 + x_10 - 32 delta_4_10_2 + 10 rotation_10 <= -3
 hc1_4_11: x_4 - x_11 - 32 delta_4_11_0 + 4 rotation_4 <= -3
 hc2_4_11: - x_4 + x_11 - 32 delta_4_11_2 + 11 rotation_11 <= -3
 hc1_4_12: x_4 - x_12 - 32 delta_4_12_0 + 4 rotation_4 <= -3
 hc2_4_12: - x_4 + x_12 - 32 delta_4_12_2 + 12 rotation_12 <= -3
 hc1_4_13: x_4 - x_13 - 32 delta_4_13_0 + 4 rotation_4 <= -3
 hc2_4_13: - x_4 + x_13 - 32 delta_4_13_2 + 15 rotation_13 <= -3
 hc1_4_14: x_4 - x_14 - 32 delta_4_14_0 + 4 rotation_4 <= -3
 hc2_4_14: - x_4 + x_14 - 32 delta_4_14_2 + 19 rotation_14 <= -3
 hc1_4_15: x_4 - x_15 - 32 delta_4_15_0 + 4 rotation_4 <= -3
 hc2_4_15: - x_4 + x_15 - 32 delta_4_15_2 + 20 rotation_15 <= -3
 hc1_4_16: x_4 - x_16 - 32 delta_4_16_0 + 4 rotation_4 <= -3
 hc2_4_16: - x_4 + x_16 - 32 delta_4_16_2 + 21 rotation_16 <= -3
 hc1_4_17: x_4 - x_17 - 32 delta_4_17_0 + 4 rotation_4 <= -3
 hc2_4_17: - x_4 + x_17 - 32 delta_4_17_2 + 22 rotation_17 <= -3
 hc1_4_18: x_4 - x_18 - 32 delta_4_18_0 + 4 rotation_4 <= -3
 hc2_4_18: - x_4 + x_18 - 32 delta_4_18_2 + 24 rotation_18 <= -3
 hc1_4_19: x_4 - x_19 - 32 delta_4_19_0 + 4 rotation_4 <= -3
 hc2_4_19: - x_4 + x_19 - 32 delta_4_19_2 - rotation_19 <= -4
 hc1_4_20: x_4 - x_20 - 32 delta_4_20_0 + 4 rotation_4 <= -3
 hc2_4_20: - x_4 + x_20 - 32 delta_4_20_2 <= -4
 hc1_4_21: x_4 - x_21 - 32 delta_4_21_0 + 4 rotation_4 <= -3
 hc2_4_21: - x_4 + x_21 - 32 delta_4_21_2 + rotation_21 <= -4
 hc1_4_22: x_4 - x_22 - 32 delta_4_22_0 + 4 rotation_4 <= -3
 hc2_4_22: - x_4 + x_22 - 32 delta_4_22_2 + 2 rotation_22 <= -4
 hc1_4_23: x_4 - x_23 - 32 delta_4_23_0 + 4 rotation_4 <= -3
 hc2_4_23: - x_4 + x_23 - 32 delta_4_23_2 + 3 rotation_23 <= -4
 hc1_4_24: x_4 - x_24 - 32 delta_4_24_0 + 4 rotation_4 <= -3
 hc2_4_24: - x_4 + x_24 - 32 delta_4_24_2 + 6 rotation_24 <= -4
 hc1_4_25: x_4 - x_25 - 32 delta_4_25_0 + 4 rotation_4 <= -3
 hc2_4_25: - x_4 + x_25 - 32 delta_4_25_2 + 7 rotation_25 <= -4
 hc1_4_26: x_4 - x_26 - 32 delta_4_26_0 + 4 rotation_4 <= -3
 hc2_4_26: - x_4 + x_26 - 32 delta_4_26_2 + 14 rotation_26 <= -4
 hc1_5_6: x_5 - x_6 - 32 delta_5_6_0 + 5 rotation_5 <= -3
 hc2_5_6: - x_5 + x_6 - 32 delta_5_6_2 + 6 rotation_6 <= -3
 hc1_5_7: x_5 - x_7 - 32 delta_5_7_0 + 5 rotation_5 <= -3
 hc2_5_7: - x_5 + x_7 - 32 delta_5_7_2 + 7 rotation_7 <= -3
 hc1_5_8: x_5 - x_8 - 32 delta_5_8_0 + 5 rotation_5 <= -3
 hc2_5_8: - x_5 + x_8 - 32 delta_5_8_2 + 8 rotation_8 <= -3
 hc1_5_9: x_5 - x_9 - 32 delta_5_9_0 + 5 rotation_5 <= -3
 hc2_5_9: - x_5 + x_9 - 32 delta_5_9_2 + 9 rotation_9 <= -3
 hc1_5_10: x_5 - x_10 - 32 delta_5_10_0 + 5 rotation_5 <= -3
 hc2_5_10: - x_5 + x_10 - 32 delta_5_10_2 + 10 rotation_10 <= -3
 hc1_5_11: x_5 - x_11 - 32 delta_5_11_0 + 5 rotation_5 <= -3
 hc2_5_11: - x_5 + x_11 - 32 delta_5_11_2 + 11 rotation_11 <= -3
 hc1_5_12: x_5 - x_12 - 32 delta_5_12_0 + 5 rotation_5 <= -3
 hc2_5_12: - x_5 + x_12 - 32 delta_5_12_2 + 12 rotation_12 <= -3
 hc1_5_13: x_5 - x_13 - 32 delta_5_13_0 + 5 rotation_5 <= -3
 hc2_5_13: - x_5 + x_13 - 32 delta_5_13_2 + 15 rotation_13 <= -3
 hc1_5_14: x_5 - x_14 - 32 delta_5_14_0 + 5 rotation_5 <= -3
 hc2_5_14: - x_5 + x_14 - 32 delta_5_14_2 + 19 rotation_14 <= -3
 hc1_5_15: x_5 - x_15 - 32 delta_5_15_0 + 5 rotation_5 <= -3
 hc2_5_15: - x_5 + x_15 - 32 delta_5_15_2 + 20 rotation_15 <= -3
 hc1_5_16: x_5 - x_16 - 32 delta_5_16_0 + 5 rotation_5 <= -3
 hc2_5_16: - x_5 + x_16 - 32 delta_5_16_2 + 21 rotation_16 <= -3
 hc1_5_17: x_5 - x_17 - 32 delta_5_17_0 + 5 rotation_5 <= -3
 hc2_5_17: - x_5 + x_17 - 32 delta_5_17_2 + 22 rotation_17 <= -3
 hc1_5_18: x_5 - x_18 - 32 delta_5_18_0 + 5 rotation_5 <= -3
 hc2_5_18: - x_5 + x_18 - 32 delta_5_18_2 + 24 rotation_18 <= -3
 hc1_5_19: x_5 - x_19 - 32 delta_5_19_0 + 5 rotation_5 <= -3
 hc2_5_19: - x_5 + x_19 - 32 delta_5_19_2 - rotation_19 <= -4
 hc1_5_20: x_5 - x_20 - 32 delta_5_20_0 + 5 rotation_5 <= -3
 hc2_5_20: - x_5 + x_20 - 32 delta_5_20_2 <= -4
 hc1_5_21: x_5 - x_21 - 32 delta_5_21_0 + 5 rotation_5 <= -3
 hc2_5_21: - x_5 + x_21 - 32 delta_5_21_2 + rotation_21 <= -4
 hc1_5_22: x_5 - x_22 - 32 delta_5_22_0 + 5 rotation_5 <= -3
 hc2_5_22: - x_5 + x_22 - 32 delta_5_22_2 + 2 rotation_22 <= -4
 hc1_5_23: x_5 - x_23 - 32 delta_5_23_0 + 5 rotation_5 <= -3
 hc2_5_23: - x_5 + x_23 - 32 delta_5_23_2 + 3 rotation_23 <= -4
 hc1_5_24: x_5 - x_24 - 32 delta_5_24_0 + 5 rotation_5 <= -3
 hc2_5_24: - x_5 + x_24 - 32 delta_5_24_2 + 6 rotation_24 <= -4
 hc1_5_25: x_5 - x_25 - 32 delta_5_25_0 + 5 rotation_5 <= -3
 hc2_5_25: - x_5 + x_25 - 32 delta_5_25_2 + 7 rotation_25 <= -4
 hc1_5_26: x_5 - x_26 - 32 delta_5_26_0 + 5 rotation_5 <= -3
 hc2_5_26: - x_5 + x_26 - 32 delta_5_26_2 + 14 rotation_26 <= -4
 hc1_6_7: x_6 - x_7 - 32 delta_6_7_0 + 6 rotation_6 <= -3
 hc2_6_7: - x_6 + x_7 - 32 delta_6_7_2 + 7 rotation_7 <= -3
 hc1_6_8: x_6 - x_8 - 32 delta_6_8_0 + 6 rotation_6 <= -3
 hc2_6_8: - x_6 + x_8 - 32 delta_6_8_2 + 8 rotation_8 <= -3
 hc1_6_9: x_6 - x_9 - 32 delta_6_9_0 + 6 rotation_6 <= -3
 hc2_6_9: - x_6 + x_9 - 32 delta_6_9_2 + 9 rotation_9 <= -3
 hc1_6_10: x_6 - x_10 - 32 delta_6_10_0 + 6 rotation_6 <= -3
 hc2_6_10: - x_6 + x_10 - 32 delta_6_10_2 + 10 rotation_10 <= -3
 hc1_6_11: x_6 - x_11 - 32 delta_6_11_0 + 6 rotation_6 <= -3
 hc2_6_11: - x_6 + x_11 - 32 delta_6_11_2 + 11 rotation_11 <= -3
 hc1_6_12: x_6 - x_12 - 32 delta_6_12_0 + 6 rotation_6 <= -3
 hc2_6_12: - x_6 + x_12 - 32 delta_6_12_2 + 12 rotation_12 <= -3
 hc1_6_13: x_6 - x_13 - 32 delta_6_13_0 + 6 rotation_6 <= -3
 hc2_6_13: - x_6 + x_13 - 32 delta_6_13_2 + 15 rotation_13 <= -3
 hc1_6_14: x_6 - x_14 - 32 delta_6_14_0 + 6 rotation_6 <= -3
 hc2_6_14: - x_6 + x_14 - 32 delta_6_14_2 + 19 rotation_14 <= -3
 hc1_6_15: x_6 - x_15 - 32 delta_6_15_0 + 6 rotation_6 <= -3
 hc2_6_15: - x_6 + x_15 - 32 delta_6_15_2 + 20 rotation_15 <= -3
 hc1_6_16: x_6 - x_16 - 32 delta_6_16_0 + 6 rotation_6 <= -3
 hc2_6_16: - x_6 + x_16 - 32 delta_6_16_2 + 21 rotation_16 <= -3
 hc1_6_17: x_6 - x_17 - 32 delta_6_17_0 + 6 rotation_6 <= -3
 hc2_6_17: - x_6 + x_17 - 32 delta_6_17_2 + 22 rotation_17 <= -3
 hc1_6_18: x_6 - x_18 - 32 delta_6_18_0 + 6 rotation_6 <= -3
 hc2_6_18: - x_6 + x_18 - 32 delta_6_18_2 + 24 rotation_18 <= -3
 hc1_6_19: x_6 - x_19 - 32 delta_6_19_0 + 6 rotation_6 <= -3
 hc2_6_19: - x_6 + x_19 - 32 delta_6_19_2 - rotation_19 <= -4
 hc1_6_20: x_6 - x_20 - 32 delta_6_20_0 + 6 rotation_6 <= -3
 hc2_6_20: - x_6 + x_20 - 32 delta_6_20_2 <= -4
 hc1_6_21: x_6 - x_21 - 32 delta_6_21_0 + 6 rotation_6 <= -3
 hc2_6_21: - x_6 + x_21 - 32 delta_6_21_2 + rotation_21 <= -4
 hc1_6_22: x_6 - x_22 - 32 delta_6_22_0 + 6 rotation_6 <= -3
 hc2_6_22: - x_6 + x_22 - 32 delta_6_22_2 + 2 rotation_22 <= -4
 hc1_6_23: x_6 - x_23 - 32 delta_6_23_0 + 6 rotation_6 <= -3
 hc2_6_23: - x_6 + x_23 - 32 delta_6_23_2 + 3 rotation_23 <= -4
 hc1_6_24: x_6 - x_24 - 32 delta_6_24_0 + 6 rotation_6 <= -3
 hc2_6_24: - x_6 + x_24 - 32 delta_6_24_2 + 6 rotation_24 <= -4
 hc1_6_25: x_6 - x_25 - 32 delta_6_25_0 + 6 rotation_6 <= -3
 hc2_6_25: - x_6 + x_25 - 32 delta_6_25_2 + 7 rotation_25 <= -4
 hc1_6_26: x_6 - x_26 - 32 delta_6_26_0 + 6 rotation_6 <= -3
 hc2_6_26: - x_6 + x_26 - 32 delta_6_26_2 + 14 rotation_26 <= -4
 hc1_7_8: x_7 - x_8 - 32 delta_7_8_0 + 7 rotation_7 <= -3
 hc2_7_8: - x_7 + x_8 - 32 delta_7_8_2 + 8 rotation_8 <= -3
 hc1_7_9: x_7 - x_9 - 32 delta_7_9_0 + 7 rotation_7 <= -3
 hc2_7_9: - x_7 + x_9 - 32 delta_7_9_2 + 9 rotation_9 <= -3
 hc1_7_10: x_7 - x_10 - 32 delta_7_10_0 + 7 rotation_7 <= -3
 hc2_7_10: - x_7 + x_10 - 32 delta_7_10_2 + 10 rotation_10 <= -3
 hc1_7_11: x_7 - x_11 - 32 delta_7_11_0 + 7 rotation_7 <= -3
 hc2_7_11: - x_7 + x_11 - 32 delta_7_11_2 + 11 rotation_11 <= -3
 hc1_7_12: x_7 - x_12 - 32 delta_7_12_0 + 7 rotation_7 <= -3
 hc2_7_12: - x_7 + x_12 - 32 delta_7_12_2 + 12 rotation_12 <= -3
 hc1_7_13: x_7 - x_13 - 32 delta_7_13_0 + 7 rotation_7 <= -3
 hc2_7_13: - x_7 + x_13 - 32 delta_7_13_2 + 15 rotation_13 <= -3
 hc1_7_14: x_7 - x_14 - 32 delta_7_14_0 + 7 rotation_7 <= -3
 hc2_7_14: - x_7 + x_14 - 32 delta_7_14_2 + 19 rotation_14 <= -3
 hc1_7_15: x_7 - x_15 - 32 delta_7_15_0 + 7 rotation_7 <= -3
 hc2_7_15: - x_7 + x_15 - 32 delta_7_15_2 + 20 rotation_15 <= -3
 hc1_7_16: x_7 - x_16 - 32 delta_7_16_0 + 7 rotation_7 <= -3
 hc2_7_16: - x_7 + x_16 - 32 delta_7_16_2 + 21 rotation_16 <= -3
 hc1_7_17: x_7 - x_17 - 32 delta_7_17_0 + 7 rotation_7 <= -3
 hc2_7_17: - x_7 + x_17 - 32 delta_7_17_2 + 22 rotation_17 <= -3
 hc1_7_18: x_7 - x_18 - 32 delta_7_18_0 + 7 rotation_7 <= -3
 hc2_7_18: - x_7 + x_18 - 32 delta_7_18_2 + 24 rotation_18 <= -3
 hc1_7_19: x_7 - x_19 - 32 delta_7_19_0 + 7 rotation_7 <= -3
 hc2_7_19: - x_7 + x_19 - 32 delta_7_19_2 - rotation_19 <= -4
 hc1_7_20: x_7 - x_20 - 32 delta_7_20_0 + 7 rotation_7 <= -3
 hc2_7_20: - x_7 + x_20 - 32 delta_7_20_2 <= -4
 hc1_7_21: x_7 - x_21 - 32 delta_7_21_0 + 7 rotation_7 <= -3
 hc2_7_21: - x_7 + x_21 - 32 delta_7_21_2 + rotation_21 <= -4
 hc1_7_22: x_7 - x_22 - 32 delta_7_22_0 + 7 rotation_7 <= -3
 hc2_7_22: - x_7 + x_22 - 32 delta_7_22_2 + 2 rotation_22 <= -4
 hc1_7_23: x_7 - x_23 - 32 delta_7_23_0 + 7 rotation_7 <= -3
 hc2_7_23: - x_7 + x_23 - 32 delta_7_23_2 + 3 rotation_23 <= -4
 hc1_7_24: x_7 - x_24 - 32 delta_7_24_0 + 7 rotation_7 <= -3
 hc2_7_24: - x_7 + x_24 - 32 delta_7_24_2 + 6 rotation_24 <= -4
 hc1_7_25: x_7 - x_25 - 32 delta_7_25_0 + 7 rotation_7 <= -3
 hc2_7_25: - x_7 + x_25 - 32 delta_7_25_2 + 7 rotation_25 <= -4
 hc1_7_26: x_7 - x_26 - 32 delta_7_26_0 + 7 rotation_7 <= -3
 hc2_7_26: - x_7 + x_26 - 32 delta_7_26_2 + 14 rotation_26 <= -4
 hc1_8_9: x_8 - x_9 - 32 delta_8_9_0 + 8 rotation_8 <= -3
 hc2_8_9: - x_8 + x_9 - 32 delta_8_9_2 + 9 rotation_9 <= -3
 hc1_8_10: x_8 - x_10 - 32 delta_8_10_0 + 8 rotation_8 <= -3
 hc2_8_10: - x_8 + x_10 - 32 delta_8_10_2 + 10 rotation_10 <= -3
 hc1_8_11: x_8 - x_11 - 32 delta_8_11_0 + 8 rotation_8 <= -3
 hc2_8_11: - x_8 + x_11 - 32 delta_8_11_2 + 11 rotation_11 <= -3
 hc1_8_12: x_8 - x_12 - 32 delta_8_12_0 + 8 rotation_8 <= -3
 hc2_8_12: - x_8 + x_12 - 32 delta_8_12_2 + 12 rotation_12 <= -3
 hc1_8_13: x_8 - x_13 - 32 delta_8_13_0 + 8 rotation_8 <= -3
 hc2_8_13: - x_8 + x_13 - 32 delta_8_13_2 + 15 rotation_13 <= -3
 hc1_8_14: x_8 - x_14 - 32 delta_8_14_0 + 8 rotation_8 <= -3
 hc2_8_14: - x_8 + x_14 - 32 delta_8_14_2 + 19 rotation_14 <= -3
 hc1_8_15: x_8 - x_15 - 32 delta_8_15_0 + 8 rotation_8 <= -3
 hc2_8_15: - x_8 + x_15 - 32 delta_8_15_2 + 20 rotation_15 <= -3
 hc1_8_16: x_8 - x_16 - 32 delta_8_16_0 + 8 rotation_8 <= -3
 hc2_8_16: - x_8 + x_16 - 32 delta_8_16_2 + 21 rotation_16 <= -3
 hc1_8_17: x_8 - x_17 - 32 delta_8_17_0 + 8 rotation_8 <= -3
 hc2_8_17: - x_8 + x_17 - 32 delta_8_17_2 + 22 rotation_17 <= -3
 hc1_8_18: x_8 - x_18 - 32 delta_8_18_0 + 8 rotation_8 <= -3
 hc2_8_18: - x_8 + x_18 - 32 delta_8_18_2 + 24 rotation_18 <= -3
 hc1_8_19: x_8 - x_19 - 32 delta_8_19_0 + 8 rotation_8 <= -3
 hc2_8_19: - x_8 + x_19 - 32 delta_8_19_2 - rotation_19 <= -4
 hc1_8_20: x_8 - x_20 - 32 delta_8_20_0 + 8 rotation_8 <= -3
 hc2_8_20: - x_8 + x_20 - 32 delta_8_20_2 <= -4
 hc1_8_21: x_8 - x_21 - 32 delta_8_21_0 + 8 rotation_8 <= -3
 hc2_8_21: - x_8 + x_21 - 32 delta_8_21_2 + rotation_21 <= -4
 hc1_8_22: x_8 - x_22 - 32 delta_8_22_0 + 8 rotation_8 <= -3
 hc2_8_22: - x_8 + x_22 - 32 delta_8_22_2 + 2 rotation_22 <= -4
 hc1_8_23: x_8 - x_23 - 32 delta_8_23_0 + 8 rotation_8 <= -3
 hc2_8_23: - x_8 + x_23 - 32 delta_8_23_2 + 3 rotation_23 <= -4
 hc1_8_24: x_8 - x_24 - 32 delta_8_24_0 + 8 rotation_8 <= -3
 hc2_8_24: - x_8 + x_24 - 32 delta_8_24_2 + 6 rotation_24 <= -4
 hc1_8_25: x_8 - x_25 - 32 delta_8_25_0 + 8 rotation_8 <= -3
 hc2_8_25: - x_8 + x_25 - 32 delta_8_25_2 + 7 rotation_25 <= -4
 hc1_8_26: x_8 - x_26 - 32 delta_8_26_0 + 8 rotation_8 <= -3
 hc2_8_26: - x_8 + x_26 - 32 delta_8_26_2 + 14 rotation_26 <= -4
 hc1_9_10: x_9 - x_10 - 32 delta_9_10_0 + 9 rotation_9 <= -3
 hc2_9_10: - x_9 + x_10 - 32 delta_9_10_2 + 10 rotation_10 <= -3
 hc1_9_11: x_9 - x_11 - 32 delta_9_11_0 + 9 rotation_9 <= -3
 hc2_9_11: - x_9 + x_11 - 32 delta_9_11_2 + 11 rotation_11 <= -3
 hc1_9_12: x_9 - x_12 - 32 delta_9_12_0 + 9 rotation_9 <= -3
 hc2_9_12: - x_9 + x_12 - 32 delta_9_12_2 + 12 rotation_12 <= -3
 hc1_9_13: x_9 - x_13 - 32 delta_9_13_0 + 9 rotation_9 <= -3
 hc2_9_13: - x_9 + x_13 - 32 delta_9_13_2 + 15 rotation_13 <= -3
 hc1_9_14: x_9 - x_14 - 32 delta_9_14_0 + 9 rotation_9 <= -3
 hc2_9_14: - x_9 + x_14 - 32 delta_9_14_2 + 19 rotation_14 <= -3
 hc1_9_15: x_9 - x_15 - 32 delta_9_15_0 + 9 rotation_9 <= -3
 hc2_9_15: - x_9 + x_15 - 32 delta_9_15_2 + 20 rotation_15 <= -3
 hc1_9_16: x_9 - x_16 - 32 delta_9_16_0 + 9 rotation_9 <= -3
 hc2_9_16: - x_9 + x_16 - 32 delta_9_16_2 + 21 rotation_16 <= -3
 hc1_9_17: x_9 - x_17 - 32 delta_9_17_0 + 9 rotation_9 <= -3
 hc2_9_17: - x_9 + x_17 - 32 delta_9_17_2 + 22 rotation_17 <= -3
 hc1_9_18: x_9 - x_18 - 32 delta_9_18_0 + 9 rotation_9 <= -3
 hc2_9_18: - x_9 + x_18 - 32 delta_9_18_2 + 24 rotation_18 <= -3
 hc1_9_19: x_9 - x_19 - 32 delta_9_19_0 + 9 rotation_9 <= -3
 hc2_9_19: - x_9 + x_19 - 32 delta_9_19_2 - rotation_19 <= -4
 hc1_9_20: x_9 - x_20 - 32 delta_9_20_0 + 9 rotation_9 <= -3
 hc2_9_20: - x_9 + x_20 - 32 delta_9_20_2 <= -4
 hc1_9_21: x_9 - x_21 - 32 delta_9_21_0 + 9 rotation_9 <= -3
 hc2_9_21: - x_9 + x_21 - 32 delta_9_21_2 + rotation_21 <= -4
 hc1_9_22: x_9 - x_22 - 32 delta_9_22_0 + 9 rotation_9 <= -3
 hc2_9_22: - x_9 + x_22 - 32 delta_9_22_2 + 2 rotation_22 <= -4
 hc1_9_23: x_9 - x_23 - 32 delta_9_23_0 + 9 rotation_9 <= -3
 hc2_9_23: - x_9 + x_23 - 32 delta_9_23_2 + 3 rotation_23 <= -4
 hc1_9_24: x_9 - x_24 - 32 delta_9_24_0 + 9 rotation_9 <= -3
 hc2_9_24: - x_9 + x_24 - 32 delta_9_24_2 + 6 rotation_24 <= -4
 hc1_9_25: x_9 - x_25 - 32 delta_9_25_0 + 9 rotation_9 <= -3
 hc2_9_25: - x_9 + x_25 - 32 delta_9_25_2 + 7 rotation_25 <= -4
 hc1_9_26: x_9 - x_26 - 32 delta_9_26_0 + 9 rotation_9 <= -3
 hc2_9_26: - x_9 + x_26 - 32 delta_9_26_2 + 14 rotation_26 <= -4
 hc1_10_11: x_10 - x_11 - 32 delta_10_11_0 + 10 rotation_10 <= -3
 hc2_10_11: - x_10 + x_11 - 32 delta_10_11_2 + 11 rotation_11 <= -3
 hc1_10_12: x_10 - x_12 - 32 delta_10_12_0 + 10 rotation_10 <= -3
 hc2_10_12: - x_10 + x_12 - 32 delta_10_12_2 + 12 rotation_12 <= -3
 hc1_10_13: x_10 - x_13 - 32 delta_10_13_0 + 10 rotation_10 <= -3
 hc2_10_13: - x_10 + x_13 - 32 delta_10_13_2 + 15 rotation_13 <= -3
 hc1_10_14: x_10 - x_14 - 32 delta_10_14_0 + 10 rotation_10 <= -3
 hc2_10_14: - x_10 + x_14 - 32 delta_10_14_2 + 19 rotation_14 <= -3
 hc1_10_15: x_10 - x_15 - 32 delta_10_15_0 + 10 rotation_10 <= -3
 hc2_10_15: - x_10 + x_15 - 32 delta_10_15_2 + 20 rotation_15 <= -3
 hc1_10_16: x_10 - x_16 - 32 delta_10_16_0 + 10 rotation_10 <= -3
 hc2_10_16: - x_10 + x_16 - 32 delta_10_16_2 + 21 rotation_16 <= -3
 hc1_10_17: x_10 - x_17 - 32 delta_10_17_0 + 10 rotation_10 <= -3
 hc2_10_17: - x_10 + x_17 - 32 delta_10_17_2 + 22 rotation_17 <= -3
 hc1_10_18: x_10 - x_18 - 32 delta_10_18_0 + 10 rotation_10 <= -3
 hc2_10_18: - x_10 + x_18 - 32 delta_10_18_2 + 24 rotation_18 <= -3
 hc1_10_19: x_10 - x_19 - 32 delta_10_19_0 + 10 rotation_10 <= -3
 hc2_10_19: - x_10 + x_19 - 32 delta_10_19_2 - rotation_19 <= -4
 hc1_10_20: x_10 - x_20 - 32 delta_10_20_0 + 10 rotation_10 <= -3
 hc2_10_20: - x_10 + x_20 - 32 delta_10_20_2 <= -4
 hc1_10_21: x_10 - x_21 - 32 delta_10_21_0 + 10 rotation_10 <= -3
 hc2_10_21: - x_10 + x_21 - 32 delta_10_21_2 + rotation_21 <= -4
 hc1_10_22: x_10 - x_22 - 32 delta_10_22_0 + 10 rotation_10 <= -3
 hc2_10_22: - x_10 + x_22 - 32 delta_10_22_2 + 2 rotation_22 <= -4
 hc1_10_23: x_10 - x_23 - 32 delta_10_23_0 + 10 rotation_10 <= -3
 hc2_10_23: - x_10 + x_23 - 32 delta_10_23_2 + 3 rotation_23 <= -4
 hc1_10_24: x_10 - x_24 - 32 delta_10_24_0 + 10 rotation_10 <= -3
 hc2_10_24: - x_10 + x_24 - 32 delta_10_24_2 + 6 rotation_24 <= -4
 hc1_10_25: x_10 - x_25 - 32 delta_10_25_0 + 10 rotation_10 <= -3
 hc2_10_25: - x_10 + x_25 - 32 delta_10_25_2 + 7 rotation_25 <= -4
 hc1_10_26: x_10 - x_26 - 32 delta_10_26_0 + 10 rotation_10 <= -3
 hc2_10_26: - x_10 + x_26 - 32 delta_10_26_2 + 14 rotation_26 <= -4
 hc1_11_12: x_11 - x_12 - 32 delta_11_12_0 + 11 rotation_11 <= -3
 hc2_11_12: - x_11 + x_12 - 32 delta_11_12_2 + 12 rotation_12 <= -3
 hc1_11_13: x_11 - x_13 - 32 delta_11_13_0 + 11 rotation_11 <= -3
 hc2_11_13: - x_11 + x_13 - 32 delta_11_13_2 + 15 rotation_13 <= -3
 hc1_11_14: x_11 - x_14 - 32 delta_11_14_0 + 11 rotation_11 <= -3
 hc2_11_14: - x_11 + x_14 - 32 delta_11_14_2 + 19 rotation_14 <= -3
 hc1_11_15: x_11 - x_15 - 32 delta_11_15_0 + 11 rotation_11 <= -3
 hc2_11_15: - x_11 + x_15 - 32 delta_11_15_2 + 20 rotation_15 <= -3
 hc1_11_16: x_11 - x_16 - 32 delta_11_16_0 + 11 rotation_11 <= -3
 hc2_11_16: - x_11 + x_16 - 32 delta_11_16_2 + 21 rotation_16 <= -3
 hc1_11_17: x_11 - x_17 - 32 delta_11_17_0 + 11 rotation_11 <= -3
 hc2_11_17: - x_11 + x_17 - 32 delta_11_17_2 + 22 rotation_17 <= -3
 hc1_11_18: x_11 - x_18 - 32 delta_11_18_0 + 11 rotation_11 <= -3
 hc2_11_18: - x_11 + x_18 - 32 delta_11_18_2 + 24 rotation_18 <= -3
 hc1_11_19: x_11 - x_19 - 32 delta_11_19_0 + 11 rotation_11 <= -3
 hc2_11_19: - x_11 + x_19 - 32 delta_11_19_2 - rotation_19 <= -4
 hc1_11_20: x_11 - x_20 - 32 delta_11_20_0 + 11 rotation_11 <= -3
 hc2_11_20: - x_11 + x_20 - 32 delta_11_20_2 <= -4
 hc1_11_21: x_11 - x_21 - 32 delta_11_21_0 + 11 rotation_11 <= -3
 hc2_11_21: - x_11 + x_21 - 32 delta_11_21_2 + rotation_21 <= -4
 hc1_11_22: x_11 - x_22 - 32 delta_11_22_0 + 11 rotation_11 <= -3
 hc2_11_22: - x_11 + x_22 - 32 delta_11_22_2 + 2 rotation_22 <= -4
 hc1_11_23: x_11 - x_23 - 32 delta_11_23_0 + 11 rotation_11 <= -3
 hc2_11_23: - x_11 + x_23 - 32 delta_11_23_2 + 3 rotation_23 <= -4
 hc1_11_24: x_11 - x_24 - 32 delta_11_24_0 + 11 rotation_11 <= -3
 hc2_11_24: - x_11 + x_24 - 32 delta_11_24_2 + 6 rotation_24 <= -4
 hc1_11_25: x_11 - x_25 - 32 delta_11_25_0 + 11 rotation_11 <= -3
 hc2_11_25: - x_11 + x_25 - 32 delta_11_25_2 + 7 rotation_25 <= -4
 hc1_11_26: x_11 - x_26 - 32 delta_11_26_0 + 11 rotation_11 <= -3
 hc2_11_26: - x_11 + x_26 - 32 delta_11_26_2 + 14 rotation_26 <= -4
 hc1_12_13: x_12 - x_13 - 32 delta_12_13_0 + 12 rotation_12 <= -3
 hc2_12_13: - x_12 + x_13 - 32 delta_12_13_2 + 15 rotation_13 <= -3
 hc1_12_14: x_12 - x_14 - 32 delta_12_14_0 + 12 rotation_12 <= -3
 hc2_12_14: - x_12 + x_14 - 32 delta_12_14_2 + 19 rotation_14 <= -3
 hc1_12_15: x_12 - x_15 - 32 delta_12_15_0 + 12 rotation_12 <= -3
 hc2_12_15: - x_12 + x_15 - 32 delta_12_15_2 + 20 rotation_15 <= -3
 hc1_12_16: x_12 - x_16 - 32 delta_12_16_0 + 12 rotation_12 <= -3
 hc2_12_16: - x_12 + x_16 - 32 delta_12_16_2 + 21 rotation_16 <= -3
 hc1_12_17: x_12 - x_17 - 32 delta_12_17_0 + 12 rotation_12 <= -3
 hc2_12_17: - x_12 + x_17 - 32 delta_12_17_2 + 22 rotation_17 <= -3
 hc1_12_18: x_12 - x_18 - 32 delta_12_18_0 + 12 rotation_12 <= -3
 hc2_12_18: - x_12 + x_18 - 32 delta_12_18_2 + 24 rotation_18 <= -3
 hc1_12_19: x_12 - x_19 - 32 delta_12_19_0 + 12 rotation_12 <= -3
 hc2_12_19: - x_12 + x_19 - 32 delta_12_19_2 - rotation_19 <= -4
 hc1_12_20: x_12 - x_20 - 32 delta_12_20_0 + 12 rotation_12 <= -3
 hc2_12_20: - x_12 + x_20 - 32 delta_12_20_2 <= -4
 hc1_12_21: x_12 - x_21 - 32 delta_12_21_0 + 12 rotation_12 <= -3
 hc2_12_21: - x_12 + x_21 - 32 delta_12_21_2 + rotation_21 <= -4
 hc1_12_22: x_12 - x_22 - 32 delta_12_22_0 + 12 rotation_12 <= -3
 hc2_12_22: - x_12 + x_22 - 32 delta_12_22_2 + 2 rotation_22 <= -4
 hc1_12_23: x_12 - x_23 - 32 delta_12_23_0 + 12 rotation_12 <= -3
 hc2_12_23: - x_12 + x_23 - 32 delta_12_23_2 + 3 rotation_23 <= -4
 hc1_12_24: x_12 - x_24 - 32 delta_12_24_0 + 12 rotation_12 <= -3
 hc2_12_24: - x_12 + x_24 - 32 delta_12_24_2 + 6 rotation_24 <= -4
 hc1_12_25: x_12 - x_25 - 32 delta_12_25_0 + 12 rotation_12 <= -3
 hc2_12_25: - x_12 + x_25 - 32 delta_12_25_2 + 7 rotation_25 <= -4
 hc1_12_26: x_12 - x_26 - 32 delta_12_26_0 + 12 rotation_12 <= -3
 hc2_12_26: - x_12 + x_26 - 32 delta_12_26_2 + 14 rotation_26 <= -4
 hc1_13_14: x_13 - x_14 - 32 delta_13_14_0 + 15 rotation_13 <= -3
 hc2_13_14: - x_13 + x_14 - 32 delta_13_14_2 + 19 rotation_14 <= -3
 hc1_13_15: x_13 - x_15 - 32 delta_13_15_0 + 15 rotation_13 <= -3
 hc2_13_15: - x_13 + x_15 - 32 delta_13_15_2 + 20 rotation_15 <= -3
 hc1_13_16: x_13 - x_16 - 32 delta_13_16_0 + 15 rotation_13 <= -3
 hc2_13_16: - x_13 + x_16 - 32 delta_13_16_2 + 21 rotation_16 <= -3
 hc1_13_17: x_13 - x_17 - 32 delta_13_17_0 + 15 rotation_13 <= -3
 hc2_13_17: - x_13 + x_17 - 32 delta_13_17_2 + 22 rotation_17 <= -3
 hc1_13_18: x_13 - x_18 - 32 delta_13_18_0 + 15 rotation_13 <= -3
 hc2_13_18: - x_13 + x_18 - 32 delta_13_18_2 + 24 rotation_18 <= -3
 hc1_13_19: x_13 - x_19 - 32 delta_13_19_0 + 15 rotation_13 <= -3
 hc2_13_19: - x_13 + x_19 - 32 delta_13_19_2 - rotation_19 <= -4
 hc1_13_20: x_13 - x_20 - 32 delta_13_20_0 + 15 rotation_13 <= -3
 hc2_13_20: - x_13 + x_20 - 32 delta_13_20_2 <= -4
 hc1_13_21: x_13 - x_21 - 32 delta_13_21_0 + 15 rotation_13 <= -3
 hc2_13_21: - x_13 + x_21 - 32 delta_13_21_2 + rotation_21 <= -4
 hc1_13_22: x_13 - x_22 - 32 delta_13_22_0 + 15 rotation_13 <= -3
 hc2_13_22: - x_13 + x_22 - 32 delta_13_22_2 + 2 rotation_22 <= -4
 hc1_13_23: x_13 - x_23 - 32 delta_13_23_0 + 15 rotation_13 <= -3
 hc2_13_23: - x_13 + x_23 - 32 delta_13_23_2 + 3 rotation_23 <= -4
 hc1_13_24: x_13 - x_24 - 32 delta_13_24_0 + 15 rotation_13 <= -3
 hc2_13_24: - x_13 + x_24 - 32 delta_13_24_2 + 6 rotation_24 <= -4
 hc1_13_25: x_13 - x_25 - 32 delta_13_25_0 + 15 rotation_13 <= -3
 hc2_13_25: - x_13 + x_25 - 32 delta_13_25_2 + 7 rotation_25 <= -4
 hc1_13_26: x_13 - x_26 - 32 delta_13_26_0 + 15 rotation_13 <= -3
 hc2_13_26: - x_13 + x_26 - 32 delta_13_26_2 + 14 rotation_26 <= -4
 hc1_14_15: x_14 - x_15 - 32 delta_14_15_0 + 19 rotation_14 <= -3
 hc2_14_15: - x_14 + x_15 - 32 delta_14_15_2 + 20 rotation_15 <= -3
 hc1_14_16: x_14 - x_16 - 32 delta_14_16_0 + 19 rotation_14 <= -3
 hc2_14_16: - x_14 + x_16 - 32 delta_14_16_2 + 21 rotation_16 <= -3
 hc1_14_17: x_14 - x_17 - 32 delta_14_17_0 + 19 rotation_14 <= -3
 hc2_14_17: - x_14 + x_17 - 32 delta_14_17_2 + 22 rotation_17 <= -3
 hc1_14_18: x_14 - x_18 - 32 delta_14_18_0 + 19 rotation_14 <= -3
 hc2_14_18: - x_14 + x_18 - 32 delta_14_18_2 + 24 rotation_18 <= -3
 hc1_14_19: x_14 - x_19 - 32 delta_14_19_0 + 19 rotation_14 <= -3
 hc2_14_19: - x_14 + x_19 - 32 delta_14_19_2 - rotation_19 <= -4
 hc1_14_20: x_14 - x_20 - 32 delta_14_20_0 + 19 rotation_14 <= -3
 hc2_14_20: - x_14 + x_20 - 32 delta_14_20_2 <= -4
 hc1_14_21: x_14 - x_21 - 32 delta_14_21_0 + 19 rotation_14 <= -3
 hc2_14_21: - x_14 + x_21 - 32 delta_14_21_2 + rotation_21 <= -4
 hc1_14_22: x_14 - x_22 - 32 delta_14_22_0 + 19 rotation_14 <= -3
 hc2_14_22: - x_14 + x_22 - 32 delta_14_22_2 + 2 rotation_22 <= -4
 hc1_14_23: x_14 - x_23 - 32 delta_14_23_0 + 19 rotation_14 <= -3
 hc2_14_23: - x_14 + x_23 - 32 delta_14_23_2 + 3 rotation_23 <= -4
 hc1_14_24: x_14 - x_24 - 32 delta_14_24_0 + 19 rotation_14 <= -3
 hc2_14_24: - x_14 + x_24 - 32 delta_14_24_2 + 6 rotation_24 <= -4
 hc1_14_25: x_14 - x_25 - 32 delta_14_25_0 + 19 rotation_14 <= -3
 hc2_14_25: - x_14 + x_25 - 32 delta_14_25_2 + 7 rotation_25 <= -4
 hc1_14_26: x_14 - x_26 - 32 delta_14_26_0 + 19 rotation_14 <= -3
 hc2_14_26: - x_14 + x_26 - 32 delta_14_26_2 + 14 rotation_26 <= -4
 hc1_15_16: x_15 - x_16 - 32 delta_15_16_0 + 20 rotation_15 <= -3
 hc2_15_16: - x_15 + x_16 - 32 delta_15_16_2 + 21 rotation_16 <= -3
 hc1_15_17: x_15 - x_17 - 32 delta_15_17_0 + 20 rotation_15 <= -3
 hc2_15_17: - x_15 + x_17 - 32 delta_15_17_2 + 22 rotation_17 <= -3
 hc1_15_18: x_15 - x_18 - 32 delta_15_18_0 + 20 rotation_15 <= -3
 hc2_15_18: - x_15 + x_18 - 32 delta_15_18_2 + 24 rotation_18 <= -3
 hc1_15_19: x_15 - x_19 - 32 delta_15_19_0 + 20 rotation_15 <= -3
 hc2_15_19: - x_15 + x_19 - 32 delta_15_19_2 - rotation_19 <= -4
 hc1_15_20: x_15 - x_20 - 32 delta_15_20_0 + 20 rotation_15 <= -3
 hc2_15_20: - x_15 + x_20 - 32 delta_15_20_2 <= -4
 hc1_15_21: x_15 - x_21 - 32 delta_15_21_0 + 20 rotation_15 <= -3
 hc2_15_21: - x_15 + x_21 - 32 delta_15_21_2 + rotation_21 <= -4
 hc1_15_22: x_15 - x_22 - 32 delta_15_22_0 + 20 rotation_15 <= -3
 hc2_15_22: - x_15 + x_22 - 32 delta_15_22_2 + 2 rotation_22 <= -4
 hc1_15_23: x_15 - x_23 - 32 delta_15_23_0 + 20 rotation_15 <= -3
 hc2_15_23: - x_15 + x_23 - 32 delta_15_23_2 + 3 rotation_23 <= -4
 hc1_15_24: x_15 - x_24 - 32 delta_15_24_0 + 20 rotation_15 <= -3
 hc2_15_24: - x_15 + x_24 - 32 delta_15_24_2 + 6 rotation_24 <= -4
 hc1_15_25: x_15 - x_25 - 32 delta_15_25_0 + 20 rotation_15 <= -3
 hc2_15_25: - x_15 + x_25 - 32 delta_15_25_2 + 7 rotation_25 <= -4
 hc1_15_26: x_15 - x_26 - 32 delta_15_26_0 + 20 rotation_15 <= -3
 hc2_15_26: - x_15 + x_26 - 32 delta_15_26_2 + 14 rotation_26 <= -4
 hc1_16_17: x_16 - x_17 - 32 delta_16_17_0 + 21 rotation_16 <= -3
 hc2_16_17: - x_16 + x_17 - 32 delta_16_17_2 + 22 rotation_17 <= -3
 hc1_16_18: x_16 - x_18 - 32 delta_16_18_0 + 21 rotation_16 <= -3
 hc2_16_18: - x_16 + x_18 - 32 delta_16_18_2 + 24 rotation_18 <= -3
 hc1_16_19: x_16 - x_19 - 32 delta_16_19_0 + 21 rotation_16 <= -3
 hc2_16_19: - x_16 + x_19 - 32 delta_16_19_2 - rotation_19 <= -4
 hc1_16_20: x_16 - x_20 - 32 delta_16_20_0 + 21 rotation_16 <= -3
 hc2_16_20: - x_16 + x_20 - 32 delta_16_20_2 <= -4
 hc1_16_21: x_16 - x_21 - 32 delta_16_21_0 + 21 rotation_16 <= -3
 hc2_16_21: - x_16 + x_21 - 32 delta_16_21_2 + rotation_21 <= -4
 hc1_16_22: x_16 - x_22 - 32 delta_16_22_0 + 21 rotation_16 <= -3
 hc2_16_22: - x_16 + x_22 - 32 delta_16_22_2 + 2 rotation_22 <= -4
 hc1_16_23: x_16 - x_23 - 32 delta_16_23_0 + 21 rotation_16 <= -3
 hc2_16_23: - x_16 + x_23 - 32 delta_16_23_2 + 3 rotation_23 <= -4
 hc1_16_24: x_16 - x_24 - 32 delta_16_24_0 + 21 rotation_16 <= -3
 hc2_16_24: - x_16 + x_24 - 32 delta_16_24_2 + 6 rotation_24 <= -4
 hc1_16_25: x_16 - x_25 - 32 delta_16_25_0 + 21 rotation_16 <= -3
 hc2_16_25: - x_16 + x_25 - 32 delta_16_25_2 + 7 rotation_25 <= -4
 hc1_16_26: x_16 - x_26 - 32 delta_16_26_0 + 21 rotation_16 <= -3
 hc2_16_26: - x_16 + x_26 - 32 delta_16_26_2 + 14 rotation_26 <= -4
 hc1_17_18: x_17 - x_18 - 32 delta_17_18_0 + 22 rotation_17 <= -3
 hc2_17_18: - x_17 + x_18 - 32 delta_17_18_2 + 24 rotation_18 <= -3
 hc1_17_19: x_17 - x_19 - 32 delta_17_19_0 + 22 rotation_17 <= -3
 hc2_17_19: - x_17 + x_19 - 32 delta_17_19_2 - rotation_19 <= -4
 hc1_17_20: x_17 - x_20 - 32 delta_17_20_0 + 22 rotation_17 <= -3
 hc2_17_20: - x_17 + x_20 - 32 delta_17_20_2 <= -4
 hc1_17_21: x_17 - x_21 - 32 delta_17_21_0 + 22 rotation_17 <= -3
 hc2_17_21: - x_17 + x_21 - 32 delta_17_21_2 + rotation_21 <= -4
 hc1_17_22: x_17 - x_22 - 32 delta_17_22_0 + 22 rotation_17 <= -3
 hc2_17_22: - x_17 + x_22 - 32 delta_17_22_2 + 2 rotation_22 <= -4
 hc1_17_23: x_17 - x_23 - 32 delta_17_23_0 + 22 rotation_17 <= -3
 hc2_17_23: - x_17 + x_23 - 32 delta_17_23_2 + 3 rotation_23 <= -4
 hc1_17_24: x_17 - x_24 - 32 delta_17_24_0 + 22 rotation_17 <= -3
 hc2_17_24: - x_17 + x_24 - 32 delta_17_24_2 + 6 rotation_24 <= -4
 hc1_17_25: x_17 - x_25 - 32 delta_17_25_0 + 22 rotation_17 <= -3
 hc2_17_25: - x_17 + x_25 - 32 delta_17_25_2 + 7 rotation_25 <= -4
 hc1_17_26: x_17 - x_26 - 32 delta_17_26_0 + 22 rotation_17 <= -3
 hc2_17_26: - x_17 + x_26 - 32 delta_17_26_2 + 14 rotation_26 <= -4
 hc1_18_19: x_18 - x_19 - 32 delta_18_19_0 + 24 rotation_18 <= -3
 hc2_18_19: - x_18 + x_19 - 32 delta_18_19_2 - rotation_19 <= -4
 hc1_18_20: x_18 - x_20 - 32 delta_18_20_0 + 24 rotation_18 <= -3
 hc2_18_20: - x_18 + x_20 - 32 delta_18_20_2 <= -4
 hc1_18_21: x_18 - x_21 - 32 delta_18_21_0 + 24 rotation_18 <= -3
 hc2_18_21: - x_18 + x_21 - 32 delta_18_21_2 + rotation_21 <= -4
 hc1_18_22: x_18 - x_22 - 32 delta_18_22_0 + 24 rotation_18 <= -3
 hc2_18_22: - x_18 + x_22 - 32 delta_18_22_2 + 2 rotation_22 <= -4
 hc1_18_23: x_18 - x_23 - 32 delta_18_23_0 + 24 rotation_18 <= -3
 hc2_18_23: - x_18 + x_23 - 32 delta_18_23_2 + 3 rotation_23 <= -4
 hc1_18_24: x_18 - x_24 - 32 delta_18_24_0 + 24 rotation_18 <= -3
 hc2_18_24: - x_18 + x_24 - 32 delta_18_24_2 + 6 rotation_24 <= -4
 hc1_18_25: x_18 - x_25 - 32 delta_18_25_0 + 24 rotation_18 <= -3
 hc2_18_25: - x_18 + x_25 - 32 delta_18_25_2 + 7 rotation_25 <= -4
 hc1_18_26: x_18 - x_26 - 32 delta_18_26_0 + 24 rotation_18 <= -3
 hc2_18_26: - x_18 + x_26 - 32 delta_18_26_2 + 14 rotation_26 <= -4
 hc1_19_20: x_19 - x_20 - 32 delta_19_20_0 - rotation_19 <= -4
 hc2_19_20: - x_19 + x_20 - 32 delta_19_20_2 <= -4
 hc1_19_21: x_19 - x_21 - 32 delta_19_21_0 - rotation_19 <= -4
 hc2_19_21: - x_19 + x_21 - 32 delta_19_21_2 + rotation_21 <= -4
 hc1_19_22: x_19 - x_22 - 32 delta_19_22_0 - rotation_19 <= -4
 hc2_19_22: - x_19 + x_22 - 32 delta_19_22_2 + 2 rotation_22 <= -4
 hc1_19_23: x_19 - x_23 - 32 delta_19_23_0 - rotation_19 <= -4
 hc2_19_23: - x_19 + x_23 - 32 delta_19_23_2 + 3 rotation_23 <= -4
 hc1_19_24: x_19 - x_24 - 32 delta_19_24_0 - rotation_19 <= -4
 hc2_19_24: - x_19 + x_24 - 32 delta_19_24_2 + 6 rotation_24 <= -4
 hc1_19_25: x_19 - x_25 - 32 delta_19_25_0 - rotation_19 <= -4
 hc2_19_25: - x_19 + x_25 - 32 delta_19_25_2 + 7 rotation_25 <= -4
 hc1_19_26: x_19 - x_26 - 32 delta_19_26_0 - rotation_19 <= -4
 hc2_19_26: - x_19 + x_26 - 32 delta_19_26_2 + 14 rotation_26 <= -4
 hc1_20_21: x_20 - x_21 - 32 delta_20_21_0 <= -4
 hc2_20_21: - x_20 + x_21 - 32 delta_20_21_2 + rotation_21 <= -4
 hc1_20_22: x_20 - x_22 - 32 delta_20_22_0 <= -4
 hc2_20_22: - x_20 + x_22 - 32 delta_20_22_2 + 2 rotation_22 <= -4
 hc1_20_23: x_20 - x_23 - 32 delta_20_23_0 <= -4
 hc2_20_23: - x_20 + x_23 - 32 delta_20_23_2 + 3 rotation_23 <= -4
 hc1_20_24: x_20 - x_24 - 32 delta_20_24_0 <= -4
 hc2_20_24: - x_20 + x_24 - 32 delta_20_24_2 + 6 rotation_24 <= -4
 hc1_20_25: x_20 - x_25 - 32 delta_20_25_0 <= -4
 hc2_20_25: - x_20 + x_25 - 32 delta_20_25_2 + 7 rotation_25 <= -4
 hc1_20_26: x_20 - x_26 - 32 delta_20_26_0 <= -4
 hc2_20_26: - x_20 + x_26 - 32 delta_20_26_2 + 14 rotation_26 <= -4
 hc1_21_22: x_21 - x_22 - 32 delta_21_22_0 + rotation_21 <= -4
 hc2_21_22: - x_21 + x_22 - 32 delta_21_22_2 + 2 rotation_22 <= -4
 hc1_21_23: x_21 - x_23 - 32 delta_21_23_0 + rotation_21 <= -4
 hc2_21_23: - x_21 + x_23 - 32 delta_21_23_2 + 3 rotation_23 <= -4
 hc1_21_24: x_21 - x_24 - 32 delta_21_24_0 + rotation_21 <= -4
 hc2_21_24: - x_21 + x_24 - 32 delta_21_24_2 + 6 rotation_24 <= -4
 hc1_21_25: x_21 - x_25 - 32 delta_21_25_0 + rotation_21 <= -4
 hc2_21_25: - x_21 + x_25 - 32 delta_21_25_2 + 7 rotation_25 <= -4
 hc1_21_26: x_21 - x_26 - 32 delta_21_26_0 + rotation_21 <= -4
 hc2_21_26: - x_21 + x_26 - 32 delta_21_26_2 + 14 rotation_26 <= -4
 hc1_22_23: x_22 - x_23 - 32 delta_22_23_0 + 2 rotation_22 <= -4
 hc2_22_23: - x_22 + x_23 - 32 delta_22_23_2 + 3 rotation_23 <= -4
 hc1_22_24: x_22 - x_24 - 32 delta_22_24_0 + 2 rotation_22 <= -4
 hc2_22_24: - x_22 + x_24 - 32 delta_22_24_2 + 6 rotation_24 <= -4
 hc1_22_25: x_22 - x_25 - 32 delta_22_25_0 + 2 rotation_22 <= -4
 hc2_22_25: - x_22 + x_25 - 32 delta_22_25_2 + 7 rotation_25 <= -4
 hc1_22_26: x_22 - x_26 - 32 delta_22_26_0 + 2 rotation_22 <= -4
 hc2_22_26: - x_22 + x_26 - 32 delta_22_26_2 + 14 rotation_26 <= -4
 hc1_23_24: x_23 - x_24 - 32 delta_23_24_0 + 3 rotation_23 <= -4
 hc2_23_24: - x_23 + x_24 - 32 delta_23_24_2 + 6 rotation_24 <= -4
 hc1_23_25: x_23 - x_25 - 32 delta_23_25_0 + 3 rotation_23 <= -4
 hc2_23_25: - x_23 + x_25 - 32 delta_23_25_2 + 7 rotation_25 <= -4
 hc1_23_26: x_23 - x_26 - 32 delta_23_26_0 + 3 rotation_23 <= -4
 hc2_23_26: - x_23 + x_26 - 32 delta_23_26_2 + 14 rotation_26 <= -4
 hc1_24_25: x_24 - x_25 - 32 delta_24_25_0 + 6 rotation_24 <= -4
 hc2_24_25: - x_24 + x_25 - 32 delta_24_25_2 + 7 rotation_25 <= -4
 hc1_24_26: x_24 - x_26 - 32 delta_24_26_0 + 6 rotation_24 <= -4
 hc2_24_26: - x_24 + x_26 - 32 delta_24_26_2 + 14 rotation_26 <= -4
 hc1_25_26: x_25 - x_26 - 32 delta_25_26_0 + 7 rotation_25 <= -4
 hc2_25_26: - x_25 + x_26 - 32 delta_25_26_2 + 14 rotation_26 <= -4
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
 no_overlap_0_22: delta_0_22_0 + delta_0_22_1 + delta_0_22_2 + delta_0_22_3
   <= 3
 no_overlap_0_23: delta_0_23_0 + delta_0_23_1 + delta_0_23_2 + delta_0_23_3
   <= 3
 no_overlap_0_24: delta_0_24_0 + delta_0_24_1 + delta_0_24_2 + delta_0_24_3
   <= 3
 no_overlap_0_25: delta_0_25_0 + delta_0_25_1 + delta_0_25_2 + delta_0_25_3
   <= 3
 no_overlap_0_26: delta_0_26_0 + delta_0_26_1 + delta_0_26_2 + delta_0_26_3
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
 no_overlap_1_22: delta_1_22_0 + delta_1_22_1 + delta_1_22_2 + delta_1_22_3
   <= 3
 no_overlap_1_23: delta_1_23_0 + delta_1_23_1 + delta_1_23_2 + delta_1_23_3
   <= 3
 no_overlap_1_24: delta_1_24_0 + delta_1_24_1 + delta_1_24_2 + delta_1_24_3
   <= 3
 no_overlap_1_25: delta_1_25_0 + delta_1_25_1 + delta_1_25_2 + delta_1_25_3
   <= 3
 no_overlap_1_26: delta_1_26_0 + delta_1_26_1 + delta_1_26_2 + delta_1_26_3
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
 no_overlap_2_22: delta_2_22_0 + delta_2_22_1 + delta_2_22_2 + delta_2_22_3
   <= 3
 no_overlap_2_23: delta_2_23_0 + delta_2_23_1 + delta_2_23_2 + delta_2_23_3
   <= 3
 no_overlap_2_24: delta_2_24_0 + delta_2_24_1 + delta_2_24_2 + delta_2_24_3
   <= 3
 no_overlap_2_25: delta_2_25_0 + delta_2_25_1 + delta_2_25_2 + delta_2_25_3
   <= 3
 no_overlap_2_26: delta_2_26_0 + delta_2_26_1 + delta_2_26_2 + delta_2_26_3
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
 no_overlap_3_22: delta_3_22_0 + delta_3_22_1 + delta_3_22_2 + delta_3_22_3
   <= 3
 no_overlap_3_23: delta_3_23_0 + delta_3_23_1 + delta_3_23_2 + delta_3_23_3
   <= 3
 no_overlap_3_24: delta_3_24_0 + delta_3_24_1 + delta_3_24_2 + delta_3_24_3
   <= 3
 no_overlap_3_25: delta_3_25_0 + delta_3_25_1 + delta_3_25_2 + delta_3_25_3
   <= 3
 no_overlap_3_26: delta_3_26_0 + delta_3_26_1 + delta_3_26_2 + delta_3_26_3
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
 no_overlap_4_22: delta_4_22_0 + delta_4_22_1 + delta_4_22_2 + delta_4_22_3
   <= 3
 no_overlap_4_23: delta_4_23_0 + delta_4_23_1 + delta_4_23_2 + delta_4_23_3
   <= 3
 no_overlap_4_24: delta_4_24_0 + delta_4_24_1 + delta_4_24_2 + delta_4_24_3
   <= 3
 no_overlap_4_25: delta_4_25_0 + delta_4_25_1 + delta_4_25_2 + delta_4_25_3
   <= 3
 no_overlap_4_26: delta_4_26_0 + delta_4_26_1 + delta_4_26_2 + delta_4_26_3
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
 no_overlap_5_22: delta_5_22_0 + delta_5_22_1 + delta_5_22_2 + delta_5_22_3
   <= 3
 no_overlap_5_23: delta_5_23_0 + delta_5_23_1 + delta_5_23_2 + delta_5_23_3
   <= 3
 no_overlap_5_24: delta_5_24_0 + delta_5_24_1 + delta_5_24_2 + delta_5_24_3
   <= 3
 no_overlap_5_25: delta_5_25_0 + delta_5_25_1 + delta_5_25_2 + delta_5_25_3
   <= 3
 no_overlap_5_26: delta_5_26_0 + delta_5_26_1 + delta_5_26_2 + delta_5_26_3
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
 no_overlap_6_22: delta_6_22_0 + delta_6_22_1 + delta_6_22_2 + delta_6_22_3
   <= 3
 no_overlap_6_23: delta_6_23_0 + delta_6_23_1 + delta_6_23_2 + delta_6_23_3
   <= 3
 no_overlap_6_24: delta_6_24_0 + delta_6_24_1 + delta_6_24_2 + delta_6_24_3
   <= 3
 no_overlap_6_25: delta_6_25_0 + delta_6_25_1 + delta_6_25_2 + delta_6_25_3
   <= 3
 no_overlap_6_26: delta_6_26_0 + delta_6_26_1 + delta_6_26_2 + delta_6_26_3
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
 no_overlap_7_22: delta_7_22_0 + delta_7_22_1 + delta_7_22_2 + delta_7_22_3
   <= 3
 no_overlap_7_23: delta_7_23_0 + delta_7_23_1 + delta_7_23_2 + delta_7_23_3
   <= 3
 no_overlap_7_24: delta_7_24_0 + delta_7_24_1 + delta_7_24_2 + delta_7_24_3
   <= 3
 no_overlap_7_25: delta_7_25_0 + delta_7_25_1 + delta_7_25_2 + delta_7_25_3
   <= 3
 no_overlap_7_26: delta_7_26_0 + delta_7_26_1 + delta_7_26_2 + delta_7_26_3
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
 no_overlap_8_22: delta_8_22_0 + delta_8_22_1 + delta_8_22_2 + delta_8_22_3
   <= 3
 no_overlap_8_23: delta_8_23_0 + delta_8_23_1 + delta_8_23_2 + delta_8_23_3
   <= 3
 no_overlap_8_24: delta_8_24_0 + delta_8_24_1 + delta_8_24_2 + delta_8_24_3
   <= 3
 no_overlap_8_25: delta_8_25_0 + delta_8_25_1 + delta_8_25_2 + delta_8_25_3
   <= 3
 no_overlap_8_26: delta_8_26_0 + delta_8_26_1 + delta_8_26_2 + delta_8_26_3
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
 no_overlap_9_22: delta_9_22_0 + delta_9_22_1 + delta_9_22_2 + delta_9_22_3
   <= 3
 no_overlap_9_23: delta_9_23_0 + delta_9_23_1 + delta_9_23_2 + delta_9_23_3
   <= 3
 no_overlap_9_24: delta_9_24_0 + delta_9_24_1 + delta_9_24_2 + delta_9_24_3
   <= 3
 no_overlap_9_25: delta_9_25_0 + delta_9_25_1 + delta_9_25_2 + delta_9_25_3
   <= 3
 no_overlap_9_26: delta_9_26_0 + delta_9_26_1 + delta_9_26_2 + delta_9_26_3
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
 no_overlap_10_22: delta_10_22_0 + delta_10_22_1 + delta_10_22_2
   + delta_10_22_3 <= 3
 no_overlap_10_23: delta_10_23_0 + delta_10_23_1 + delta_10_23_2
   + delta_10_23_3 <= 3
 no_overlap_10_24: delta_10_24_0 + delta_10_24_1 + delta_10_24_2
   + delta_10_24_3 <= 3
 no_overlap_10_25: delta_10_25_0 + delta_10_25_1 + delta_10_25_2
   + delta_10_25_3 <= 3
 no_overlap_10_26: delta_10_26_0 + delta_10_26_1 + delta_10_26_2
   + delta_10_26_3 <= 3
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
 no_overlap_11_22: delta_11_22_0 + delta_11_22_1 + delta_11_22_2
   + delta_11_22_3 <= 3
 no_overlap_11_23: delta_11_23_0 + delta_11_23_1 + delta_11_23_2
   + delta_11_23_3 <= 3
 no_overlap_11_24: delta_11_24_0 + delta_11_24_1 + delta_11_24_2
   + delta_11_24_3 <= 3
 no_overlap_11_25: delta_11_25_0 + delta_11_25_1 + delta_11_25_2
   + delta_11_25_3 <= 3
 no_overlap_11_26: delta_11_26_0 + delta_11_26_1 + delta_11_26_2
   + delta_11_26_3 <= 3
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
 no_overlap_12_22: delta_12_22_0 + delta_12_22_1 + delta_12_22_2
   + delta_12_22_3 <= 3
 no_overlap_12_23: delta_12_23_0 + delta_12_23_1 + delta_12_23_2
   + delta_12_23_3 <= 3
 no_overlap_12_24: delta_12_24_0 + delta_12_24_1 + delta_12_24_2
   + delta_12_24_3 <= 3
 no_overlap_12_25: delta_12_25_0 + delta_12_25_1 + delta_12_25_2
   + delta_12_25_3 <= 3
 no_overlap_12_26: delta_12_26_0 + delta_12_26_1 + delta_12_26_2
   + delta_12_26_3 <= 3
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
 no_overlap_13_22: delta_13_22_0 + delta_13_22_1 + delta_13_22_2
   + delta_13_22_3 <= 3
 no_overlap_13_23: delta_13_23_0 + delta_13_23_1 + delta_13_23_2
   + delta_13_23_3 <= 3
 no_overlap_13_24: delta_13_24_0 + delta_13_24_1 + delta_13_24_2
   + delta_13_24_3 <= 3
 no_overlap_13_25: delta_13_25_0 + delta_13_25_1 + delta_13_25_2
   + delta_13_25_3 <= 3
 no_overlap_13_26: delta_13_26_0 + delta_13_26_1 + delta_13_26_2
   + delta_13_26_3 <= 3
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
 no_overlap_14_22: delta_14_22_0 + delta_14_22_1 + delta_14_22_2
   + delta_14_22_3 <= 3
 no_overlap_14_23: delta_14_23_0 + delta_14_23_1 + delta_14_23_2
   + delta_14_23_3 <= 3
 no_overlap_14_24: delta_14_24_0 + delta_14_24_1 + delta_14_24_2
   + delta_14_24_3 <= 3
 no_overlap_14_25: delta_14_25_0 + delta_14_25_1 + delta_14_25_2
   + delta_14_25_3 <= 3
 no_overlap_14_26: delta_14_26_0 + delta_14_26_1 + delta_14_26_2
   + delta_14_26_3 <= 3
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
 no_overlap_15_22: delta_15_22_0 + delta_15_22_1 + delta_15_22_2
   + delta_15_22_3 <= 3
 no_overlap_15_23: delta_15_23_0 + delta_15_23_1 + delta_15_23_2
   + delta_15_23_3 <= 3
 no_overlap_15_24: delta_15_24_0 + delta_15_24_1 + delta_15_24_2
   + delta_15_24_3 <= 3
 no_overlap_15_25: delta_15_25_0 + delta_15_25_1 + delta_15_25_2
   + delta_15_25_3 <= 3
 no_overlap_15_26: delta_15_26_0 + delta_15_26_1 + delta_15_26_2
   + delta_15_26_3 <= 3
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
 no_overlap_16_22: delta_16_22_0 + delta_16_22_1 + delta_16_22_2
   + delta_16_22_3 <= 3
 no_overlap_16_23: delta_16_23_0 + delta_16_23_1 + delta_16_23_2
   + delta_16_23_3 <= 3
 no_overlap_16_24: delta_16_24_0 + delta_16_24_1 + delta_16_24_2
   + delta_16_24_3 <= 3
 no_overlap_16_25: delta_16_25_0 + delta_16_25_1 + delta_16_25_2
   + delta_16_25_3 <= 3
 no_overlap_16_26: delta_16_26_0 + delta_16_26_1 + delta_16_26_2
   + delta_16_26_3 <= 3
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
 no_overlap_17_22: delta_17_22_0 + delta_17_22_1 + delta_17_22_2
   + delta_17_22_3 <= 3
 no_overlap_17_23: delta_17_23_0 + delta_17_23_1 + delta_17_23_2
   + delta_17_23_3 <= 3
 no_overlap_17_24: delta_17_24_0 + delta_17_24_1 + delta_17_24_2
   + delta_17_24_3 <= 3
 no_overlap_17_25: delta_17_25_0 + delta_17_25_1 + delta_17_25_2
   + delta_17_25_3 <= 3
 no_overlap_17_26: delta_17_26_0 + delta_17_26_1 + delta_17_26_2
   + delta_17_26_3 <= 3
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
 no_overlap_18_22: delta_18_22_0 + delta_18_22_1 + delta_18_22_2
   + delta_18_22_3 <= 3
 no_overlap_18_23: delta_18_23_0 + delta_18_23_1 + delta_18_23_2
   + delta_18_23_3 <= 3
 no_overlap_18_24: delta_18_24_0 + delta_18_24_1 + delta_18_24_2
   + delta_18_24_3 <= 3
 no_overlap_18_25: delta_18_25_0 + delta_18_25_1 + delta_18_25_2
   + delta_18_25_3 <= 3
 no_overlap_18_26: delta_18_26_0 + delta_18_26_1 + delta_18_26_2
   + delta_18_26_3 <= 3
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
 no_overlap_19_22: delta_19_22_0 + delta_19_22_1 + delta_19_22_2
   + delta_19_22_3 <= 3
 no_overlap_19_23: delta_19_23_0 + delta_19_23_1 + delta_19_23_2
   + delta_19_23_3 <= 3
 no_overlap_19_24: delta_19_24_0 + delta_19_24_1 + delta_19_24_2
   + delta_19_24_3 <= 3
 no_overlap_19_25: delta_19_25_0 + delta_19_25_1 + delta_19_25_2
   + delta_19_25_3 <= 3
 no_overlap_19_26: delta_19_26_0 + delta_19_26_1 + delta_19_26_2
   + delta_19_26_3 <= 3
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
 no_overlap_20_22: delta_20_22_0 + delta_20_22_1 + delta_20_22_2
   + delta_20_22_3 <= 3
 no_overlap_20_23: delta_20_23_0 + delta_20_23_1 + delta_20_23_2
   + delta_20_23_3 <= 3
 no_overlap_20_24: delta_20_24_0 + delta_20_24_1 + delta_20_24_2
   + delta_20_24_3 <= 3
 no_overlap_20_25: delta_20_25_0 + delta_20_25_1 + delta_20_25_2
   + delta_20_25_3 <= 3
 no_overlap_20_26: delta_20_26_0 + delta_20_26_1 + delta_20_26_2
   + delta_20_26_3 <= 3
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
 no_overlap_21_22: delta_21_22_0 + delta_21_22_1 + delta_21_22_2
   + delta_21_22_3 <= 3
 no_overlap_21_23: delta_21_23_0 + delta_21_23_1 + delta_21_23_2
   + delta_21_23_3 <= 3
 no_overlap_21_24: delta_21_24_0 + delta_21_24_1 + delta_21_24_2
   + delta_21_24_3 <= 3
 no_overlap_21_25: delta_21_25_0 + delta_21_25_1 + delta_21_25_2
   + delta_21_25_3 <= 3
 no_overlap_21_26: delta_21_26_0 + delta_21_26_1 + delta_21_26_2
   + delta_21_26_3 <= 3
 no_overlap_22_0: delta_22_0_0 + delta_22_0_1 + delta_22_0_2 + delta_22_0_3
   <= 3
 no_overlap_22_1: delta_22_1_0 + delta_22_1_1 + delta_22_1_2 + delta_22_1_3
   <= 3
 no_overlap_22_2: delta_22_2_0 + delta_22_2_1 + delta_22_2_2 + delta_22_2_3
   <= 3
 no_overlap_22_3: delta_22_3_0 + delta_22_3_1 + delta_22_3_2 + delta_22_3_3
   <= 3
 no_overlap_22_4: delta_22_4_0 + delta_22_4_1 + delta_22_4_2 + delta_22_4_3
   <= 3
 no_overlap_22_5: delta_22_5_0 + delta_22_5_1 + delta_22_5_2 + delta_22_5_3
   <= 3
 no_overlap_22_6: delta_22_6_0 + delta_22_6_1 + delta_22_6_2 + delta_22_6_3
   <= 3
 no_overlap_22_7: delta_22_7_0 + delta_22_7_1 + delta_22_7_2 + delta_22_7_3
   <= 3
 no_overlap_22_8: delta_22_8_0 + delta_22_8_1 + delta_22_8_2 + delta_22_8_3
   <= 3
 no_overlap_22_9: delta_22_9_0 + delta_22_9_1 + delta_22_9_2 + delta_22_9_3
   <= 3
 no_overlap_22_10: delta_22_10_0 + delta_22_10_1 + delta_22_10_2
   + delta_22_10_3 <= 3
 no_overlap_22_11: delta_22_11_0 + delta_22_11_1 + delta_22_11_2
   + delta_22_11_3 <= 3
 no_overlap_22_12: delta_22_12_0 + delta_22_12_1 + delta_22_12_2
   + delta_22_12_3 <= 3
 no_overlap_22_13: delta_22_13_0 + delta_22_13_1 + delta_22_13_2
   + delta_22_13_3 <= 3
 no_overlap_22_14: delta_22_14_0 + delta_22_14_1 + delta_22_14_2
   + delta_22_14_3 <= 3
 no_overlap_22_15: delta_22_15_0 + delta_22_15_1 + delta_22_15_2
   + delta_22_15_3 <= 3
 no_overlap_22_16: delta_22_16_0 + delta_22_16_1 + delta_22_16_2
   + delta_22_16_3 <= 3
 no_overlap_22_17: delta_22_17_0 + delta_22_17_1 + delta_22_17_2
   + delta_22_17_3 <= 3
 no_overlap_22_18: delta_22_18_0 + delta_22_18_1 + delta_22_18_2
   + delta_22_18_3 <= 3
 no_overlap_22_19: delta_22_19_0 + delta_22_19_1 + delta_22_19_2
   + delta_22_19_3 <= 3
 no_overlap_22_20: delta_22_20_0 + delta_22_20_1 + delta_22_20_2
   + delta_22_20_3 <= 3
 no_overlap_22_21: delta_22_21_0 + delta_22_21_1 + delta_22_21_2
   + delta_22_21_3 <= 3
 no_overlap_22_22: delta_22_22_0 + delta_22_22_1 + delta_22_22_2
   + delta_22_22_3 <= 3
 no_overlap_22_23: delta_22_23_0 + delta_22_23_1 + delta_22_23_2
   + delta_22_23_3 <= 3
 no_overlap_22_24: delta_22_24_0 + delta_22_24_1 + delta_22_24_2
   + delta_22_24_3 <= 3
 no_overlap_22_25: delta_22_25_0 + delta_22_25_1 + delta_22_25_2
   + delta_22_25_3 <= 3
 no_overlap_22_26: delta_22_26_0 + delta_22_26_1 + delta_22_26_2
   + delta_22_26_3 <= 3
 no_overlap_23_0: delta_23_0_0 + delta_23_0_1 + delta_23_0_2 + delta_23_0_3
   <= 3
 no_overlap_23_1: delta_23_1_0 + delta_23_1_1 + delta_23_1_2 + delta_23_1_3
   <= 3
 no_overlap_23_2: delta_23_2_0 + delta_23_2_1 + delta_23_2_2 + delta_23_2_3
   <= 3
 no_overlap_23_3: delta_23_3_0 + delta_23_3_1 + delta_23_3_2 + delta_23_3_3
   <= 3
 no_overlap_23_4: delta_23_4_0 + delta_23_4_1 + delta_23_4_2 + delta_23_4_3
   <= 3
 no_overlap_23_5: delta_23_5_0 + delta_23_5_1 + delta_23_5_2 + delta_23_5_3
   <= 3
 no_overlap_23_6: delta_23_6_0 + delta_23_6_1 + delta_23_6_2 + delta_23_6_3
   <= 3
 no_overlap_23_7: delta_23_7_0 + delta_23_7_1 + delta_23_7_2 + delta_23_7_3
   <= 3
 no_overlap_23_8: delta_23_8_0 + delta_23_8_1 + delta_23_8_2 + delta_23_8_3
   <= 3
 no_overlap_23_9: delta_23_9_0 + delta_23_9_1 + delta_23_9_2 + delta_23_9_3
   <= 3
 no_overlap_23_10: delta_23_10_0 + delta_23_10_1 + delta_23_10_2
   + delta_23_10_3 <= 3
 no_overlap_23_11: delta_23_11_0 + delta_23_11_1 + delta_23_11_2
   + delta_23_11_3 <= 3
 no_overlap_23_12: delta_23_12_0 + delta_23_12_1 + delta_23_12_2
   + delta_23_12_3 <= 3
 no_overlap_23_13: delta_23_13_0 + delta_23_13_1 + delta_23_13_2
   + delta_23_13_3 <= 3
 no_overlap_23_14: delta_23_14_0 + delta_23_14_1 + delta_23_14_2
   + delta_23_14_3 <= 3
 no_overlap_23_15: delta_23_15_0 + delta_23_15_1 + delta_23_15_2
   + delta_23_15_3 <= 3
 no_overlap_23_16: delta_23_16_0 + delta_23_16_1 + delta_23_16_2
   + delta_23_16_3 <= 3
 no_overlap_23_17: delta_23_17_0 + delta_23_17_1 + delta_23_17_2
   + delta_23_17_3 <= 3
 no_overlap_23_18: delta_23_18_0 + delta_23_18_1 + delta_23_18_2
   + delta_23_18_3 <= 3
 no_overlap_23_19: delta_23_19_0 + delta_23_19_1 + delta_23_19_2
   + delta_23_19_3 <= 3
 no_overlap_23_20: delta_23_20_0 + delta_23_20_1 + delta_23_20_2
   + delta_23_20_3 <= 3
 no_overlap_23_21: delta_23_21_0 + delta_23_21_1 + delta_23_21_2
   + delta_23_21_3 <= 3
 no_overlap_23_22: delta_23_22_0 + delta_23_22_1 + delta_23_22_2
   + delta_23_22_3 <= 3
 no_overlap_23_23: delta_23_23_0 + delta_23_23_1 + delta_23_23_2
   + delta_23_23_3 <= 3
 no_overlap_23_24: delta_23_24_0 + delta_23_24_1 + delta_23_24_2
   + delta_23_24_3 <= 3
 no_overlap_23_25: delta_23_25_0 + delta_23_25_1 + delta_23_25_2
   + delta_23_25_3 <= 3
 no_overlap_23_26: delta_23_26_0 + delta_23_26_1 + delta_23_26_2
   + delta_23_26_3 <= 3
 no_overlap_24_0: delta_24_0_0 + delta_24_0_1 + delta_24_0_2 + delta_24_0_3
   <= 3
 no_overlap_24_1: delta_24_1_0 + delta_24_1_1 + delta_24_1_2 + delta_24_1_3
   <= 3
 no_overlap_24_2: delta_24_2_0 + delta_24_2_1 + delta_24_2_2 + delta_24_2_3
   <= 3
 no_overlap_24_3: delta_24_3_0 + delta_24_3_1 + delta_24_3_2 + delta_24_3_3
   <= 3
 no_overlap_24_4: delta_24_4_0 + delta_24_4_1 + delta_24_4_2 + delta_24_4_3
   <= 3
 no_overlap_24_5: delta_24_5_0 + delta_24_5_1 + delta_24_5_2 + delta_24_5_3
   <= 3
 no_overlap_24_6: delta_24_6_0 + delta_24_6_1 + delta_24_6_2 + delta_24_6_3
   <= 3
 no_overlap_24_7: delta_24_7_0 + delta_24_7_1 + delta_24_7_2 + delta_24_7_3
   <= 3
 no_overlap_24_8: delta_24_8_0 + delta_24_8_1 + delta_24_8_2 + delta_24_8_3
   <= 3
 no_overlap_24_9: delta_24_9_0 + delta_24_9_1 + delta_24_9_2 + delta_24_9_3
   <= 3
 no_overlap_24_10: delta_24_10_0 + delta_24_10_1 + delta_24_10_2
   + delta_24_10_3 <= 3
 no_overlap_24_11: delta_24_11_0 + delta_24_11_1 + delta_24_11_2
   + delta_24_11_3 <= 3
 no_overlap_24_12: delta_24_12_0 + delta_24_12_1 + delta_24_12_2
   + delta_24_12_3 <= 3
 no_overlap_24_13: delta_24_13_0 + delta_24_13_1 + delta_24_13_2
   + delta_24_13_3 <= 3
 no_overlap_24_14: delta_24_14_0 + delta_24_14_1 + delta_24_14_2
   + delta_24_14_3 <= 3
 no_overlap_24_15: delta_24_15_0 + delta_24_15_1 + delta_24_15_2
   + delta_24_15_3 <= 3
 no_overlap_24_16: delta_24_16_0 + delta_24_16_1 + delta_24_16_2
   + delta_24_16_3 <= 3
 no_overlap_24_17: delta_24_17_0 + delta_24_17_1 + delta_24_17_2
   + delta_24_17_3 <= 3
 no_overlap_24_18: delta_24_18_0 + delta_24_18_1 + delta_24_18_2
   + delta_24_18_3 <= 3
 no_overlap_24_19: delta_24_19_0 + delta_24_19_1 + delta_24_19_2
   + delta_24_19_3 <= 3
 no_overlap_24_20: delta_24_20_0 + delta_24_20_1 + delta_24_20_2
   + delta_24_20_3 <= 3
 no_overlap_24_21: delta_24_21_0 + delta_24_21_1 + delta_24_21_2
   + delta_24_21_3 <= 3
 no_overlap_24_22: delta_24_22_0 + delta_24_22_1 + delta_24_22_2
   + delta_24_22_3 <= 3
 no_overlap_24_23: delta_24_23_0 + delta_24_23_1 + delta_24_23_2
   + delta_24_23_3 <= 3
 no_overlap_24_24: delta_24_24_0 + delta_24_24_1 + delta_24_24_2
   + delta_24_24_3 <= 3
 no_overlap_24_25: delta_24_25_0 + delta_24_25_1 + delta_24_25_2
   + delta_24_25_3 <= 3
 no_overlap_24_26: delta_24_26_0 + delta_24_26_1 + delta_24_26_2
   + delta_24_26_3 <= 3
 no_overlap_25_0: delta_25_0_0 + delta_25_0_1 + delta_25_0_2 + delta_25_0_3
   <= 3
 no_overlap_25_1: delta_25_1_0 + delta_25_1_1 + delta_25_1_2 + delta_25_1_3
   <= 3
 no_overlap_25_2: delta_25_2_0 + delta_25_2_1 + delta_25_2_2 + delta_25_2_3
   <= 3
 no_overlap_25_3: delta_25_3_0 + delta_25_3_1 + delta_25_3_2 + delta_25_3_3
   <= 3
 no_overlap_25_4: delta_25_4_0 + delta_25_4_1 + delta_25_4_2 + delta_25_4_3
   <= 3
 no_overlap_25_5: delta_25_5_0 + delta_25_5_1 + delta_25_5_2 + delta_25_5_3
   <= 3
 no_overlap_25_6: delta_25_6_0 + delta_25_6_1 + delta_25_6_2 + delta_25_6_3
   <= 3
 no_overlap_25_7: delta_25_7_0 + delta_25_7_1 + delta_25_7_2 + delta_25_7_3
   <= 3
 no_overlap_25_8: delta_25_8_0 + delta_25_8_1 + delta_25_8_2 + delta_25_8_3
   <= 3
 no_overlap_25_9: delta_25_9_0 + delta_25_9_1 + delta_25_9_2 + delta_25_9_3
   <= 3
 no_overlap_25_10: delta_25_10_0 + delta_25_10_1 + delta_25_10_2
   + delta_25_10_3 <= 3
 no_overlap_25_11: delta_25_11_0 + delta_25_11_1 + delta_25_11_2
   + delta_25_11_3 <= 3
 no_overlap_25_12: delta_25_12_0 + delta_25_12_1 + delta_25_12_2
   + delta_25_12_3 <= 3
 no_overlap_25_13: delta_25_13_0 + delta_25_13_1 + delta_25_13_2
   + delta_25_13_3 <= 3
 no_overlap_25_14: delta_25_14_0 + delta_25_14_1 + delta_25_14_2
   + delta_25_14_3 <= 3
 no_overlap_25_15: delta_25_15_0 + delta_25_15_1 + delta_25_15_2
   + delta_25_15_3 <= 3
 no_overlap_25_16: delta_25_16_0 + delta_25_16_1 + delta_25_16_2
   + delta_25_16_3 <= 3
 no_overlap_25_17: delta_25_17_0 + delta_25_17_1 + delta_25_17_2
   + delta_25_17_3 <= 3
 no_overlap_25_18: delta_25_18_0 + delta_25_18_1 + delta_25_18_2
   + delta_25_18_3 <= 3
 no_overlap_25_19: delta_25_19_0 + delta_25_19_1 + delta_25_19_2
   + delta_25_19_3 <= 3
 no_overlap_25_20: delta_25_20_0 + delta_25_20_1 + delta_25_20_2
   + delta_25_20_3 <= 3
 no_overlap_25_21: delta_25_21_0 + delta_25_21_1 + delta_25_21_2
   + delta_25_21_3 <= 3
 no_overlap_25_22: delta_25_22_0 + delta_25_22_1 + delta_25_22_2
   + delta_25_22_3 <= 3
 no_overlap_25_23: delta_25_23_0 + delta_25_23_1 + delta_25_23_2
   + delta_25_23_3 <= 3
 no_overlap_25_24: delta_25_24_0 + delta_25_24_1 + delta_25_24_2
   + delta_25_24_3 <= 3
 no_overlap_25_25: delta_25_25_0 + delta_25_25_1 + delta_25_25_2
   + delta_25_25_3 <= 3
 no_overlap_25_26: delta_25_26_0 + delta_25_26_1 + delta_25_26_2
   + delta_25_26_3 <= 3
 no_overlap_26_0: delta_26_0_0 + delta_26_0_1 + delta_26_0_2 + delta_26_0_3
   <= 3
 no_overlap_26_1: delta_26_1_0 + delta_26_1_1 + delta_26_1_2 + delta_26_1_3
   <= 3
 no_overlap_26_2: delta_26_2_0 + delta_26_2_1 + delta_26_2_2 + delta_26_2_3
   <= 3
 no_overlap_26_3: delta_26_3_0 + delta_26_3_1 + delta_26_3_2 + delta_26_3_3
   <= 3
 no_overlap_26_4: delta_26_4_0 + delta_26_4_1 + delta_26_4_2 + delta_26_4_3
   <= 3
 no_overlap_26_5: delta_26_5_0 + delta_26_5_1 + delta_26_5_2 + delta_26_5_3
   <= 3
 no_overlap_26_6: delta_26_6_0 + delta_26_6_1 + delta_26_6_2 + delta_26_6_3
   <= 3
 no_overlap_26_7: delta_26_7_0 + delta_26_7_1 + delta_26_7_2 + delta_26_7_3
   <= 3
 no_overlap_26_8: delta_26_8_0 + delta_26_8_1 + delta_26_8_2 + delta_26_8_3
   <= 3
 no_overlap_26_9: delta_26_9_0 + delta_26_9_1 + delta_26_9_2 + delta_26_9_3
   <= 3
 no_overlap_26_10: delta_26_10_0 + delta_26_10_1 + delta_26_10_2
   + delta_26_10_3 <= 3
 no_overlap_26_11: delta_26_11_0 + delta_26_11_1 + delta_26_11_2
   + delta_26_11_3 <= 3
 no_overlap_26_12: delta_26_12_0 + delta_26_12_1 + delta_26_12_2
   + delta_26_12_3 <= 3
 no_overlap_26_13: delta_26_13_0 + delta_26_13_1 + delta_26_13_2
   + delta_26_13_3 <= 3
 no_overlap_26_14: delta_26_14_0 + delta_26_14_1 + delta_26_14_2
   + delta_26_14_3 <= 3
 no_overlap_26_15: delta_26_15_0 + delta_26_15_1 + delta_26_15_2
   + delta_26_15_3 <= 3
 no_overlap_26_16: delta_26_16_0 + delta_26_16_1 + delta_26_16_2
   + delta_26_16_3 <= 3
 no_overlap_26_17: delta_26_17_0 + delta_26_17_1 + delta_26_17_2
   + delta_26_17_3 <= 3
 no_overlap_26_18: delta_26_18_0 + delta_26_18_1 + delta_26_18_2
   + delta_26_18_3 <= 3
 no_overlap_26_19: delta_26_19_0 + delta_26_19_1 + delta_26_19_2
   + delta_26_19_3 <= 3
 no_overlap_26_20: delta_26_20_0 + delta_26_20_1 + delta_26_20_2
   + delta_26_20_3 <= 3
 no_overlap_26_21: delta_26_21_0 + delta_26_21_1 + delta_26_21_2
   + delta_26_21_3 <= 3
 no_overlap_26_22: delta_26_22_0 + delta_26_22_1 + delta_26_22_2
   + delta_26_22_3 <= 3
 no_overlap_26_23: delta_26_23_0 + delta_26_23_1 + delta_26_23_2
   + delta_26_23_3 <= 3
 no_overlap_26_24: delta_26_24_0 + delta_26_24_1 + delta_26_24_2
   + delta_26_24_3 <= 3
 no_overlap_26_25: delta_26_25_0 + delta_26_25_1 + delta_26_25_2
   + delta_26_25_3 <= 3
 no_overlap_26_26: delta_26_26_0 + delta_26_26_1 + delta_26_26_2
   + delta_26_26_3 <= 3
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
 vc2_0_8: - y_0 + y_8 - 8 rotation_8 + [ - height * delta_0_8_3 ] <= -11
 vc1_0_9: y_0 - y_9 + [ - height * delta_0_9_1 ] <= -3
 vc2_0_9: - y_0 + y_9 - 9 rotation_9 + [ - height * delta_0_9_3 ] <= -12
 vc1_0_10: y_0 - y_10 + [ - height * delta_0_10_1 ] <= -3
 vc2_0_10: - y_0 + y_10 - 10 rotation_10 + [ - height * delta_0_10_3 ]
   <= -13
 vc1_0_11: y_0 - y_11 + [ - height * delta_0_11_1 ] <= -3
 vc2_0_11: - y_0 + y_11 - 11 rotation_11 + [ - height * delta_0_11_3 ]
   <= -14
 vc1_0_12: y_0 - y_12 + [ - height * delta_0_12_1 ] <= -3
 vc2_0_12: - y_0 + y_12 - 12 rotation_12 + [ - height * delta_0_12_3 ]
   <= -15
 vc1_0_13: y_0 - y_13 + [ - height * delta_0_13_1 ] <= -3
 vc2_0_13: - y_0 + y_13 - 15 rotation_13 + [ - height * delta_0_13_3 ]
   <= -18
 vc1_0_14: y_0 - y_14 + [ - height * delta_0_14_1 ] <= -3
 vc2_0_14: - y_0 + y_14 - 19 rotation_14 + [ - height * delta_0_14_3 ]
   <= -22
 vc1_0_15: y_0 - y_15 + [ - height * delta_0_15_1 ] <= -3
 vc2_0_15: - y_0 + y_15 - 20 rotation_15 + [ - height * delta_0_15_3 ]
   <= -23
 vc1_0_16: y_0 - y_16 + [ - height * delta_0_16_1 ] <= -3
 vc2_0_16: - y_0 + y_16 - 21 rotation_16 + [ - height * delta_0_16_3 ]
   <= -24
 vc1_0_17: y_0 - y_17 + [ - height * delta_0_17_1 ] <= -3
 vc2_0_17: - y_0 + y_17 - 22 rotation_17 + [ - height * delta_0_17_3 ]
   <= -25
 vc1_0_18: y_0 - y_18 + [ - height * delta_0_18_1 ] <= -3
 vc2_0_18: - y_0 + y_18 - 24 rotation_18 + [ - height * delta_0_18_3 ]
   <= -27
 vc1_0_19: y_0 - y_19 + [ - height * delta_0_19_1 ] <= -3
 vc2_0_19: - y_0 + y_19 + rotation_19 + [ - height * delta_0_19_3 ] <= -3
 vc1_0_20: y_0 - y_20 + [ - height * delta_0_20_1 ] <= -3
 vc2_0_20: - y_0 + y_20 + [ - height * delta_0_20_3 ] <= -4
 vc1_0_21: y_0 - y_21 + [ - height * delta_0_21_1 ] <= -3
 vc2_0_21: - y_0 + y_21 - rotation_21 + [ - height * delta_0_21_3 ] <= -5
 vc1_0_22: y_0 - y_22 + [ - height * delta_0_22_1 ] <= -3
 vc2_0_22: - y_0 + y_22 - 2 rotation_22 + [ - height * delta_0_22_3 ]
   <= -6
 vc1_0_23: y_0 - y_23 + [ - height * delta_0_23_1 ] <= -3
 vc2_0_23: - y_0 + y_23 - 3 rotation_23 + [ - height * delta_0_23_3 ]
   <= -7
 vc1_0_24: y_0 - y_24 + [ - height * delta_0_24_1 ] <= -3
 vc2_0_24: - y_0 + y_24 - 6 rotation_24 + [ - height * delta_0_24_3 ]
   <= -10
 vc1_0_25: y_0 - y_25 + [ - height * delta_0_25_1 ] <= -3
 vc2_0_25: - y_0 + y_25 - 7 rotation_25 + [ - height * delta_0_25_3 ]
   <= -11
 vc1_0_26: y_0 - y_26 + [ - height * delta_0_26_1 ] <= -3
 vc2_0_26: - y_0 + y_26 - 14 rotation_26 + [ - height * delta_0_26_3 ]
   <= -18
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
 vc2_1_8: - y_1 + y_8 - 8 rotation_8 + [ - height * delta_1_8_3 ] <= -11
 vc1_1_9: y_1 - y_9 - rotation_1 + [ - height * delta_1_9_1 ] <= -4
 vc2_1_9: - y_1 + y_9 - 9 rotation_9 + [ - height * delta_1_9_3 ] <= -12
 vc1_1_10: y_1 - y_10 - rotation_1 + [ - height * delta_1_10_1 ] <= -4
 vc2_1_10: - y_1 + y_10 - 10 rotation_10 + [ - height * delta_1_10_3 ]
   <= -13
 vc1_1_11: y_1 - y_11 - rotation_1 + [ - height * delta_1_11_1 ] <= -4
 vc2_1_11: - y_1 + y_11 - 11 rotation_11 + [ - height * delta_1_11_3 ]
   <= -14
 vc1_1_12: y_1 - y_12 - rotation_1 + [ - height * delta_1_12_1 ] <= -4
 vc2_1_12: - y_1 + y_12 - 12 rotation_12 + [ - height * delta_1_12_3 ]
   <= -15
 vc1_1_13: y_1 - y_13 - rotation_1 + [ - height * delta_1_13_1 ] <= -4
 vc2_1_13: - y_1 + y_13 - 15 rotation_13 + [ - height * delta_1_13_3 ]
   <= -18
 vc1_1_14: y_1 - y_14 - rotation_1 + [ - height * delta_1_14_1 ] <= -4
 vc2_1_14: - y_1 + y_14 - 19 rotation_14 + [ - height * delta_1_14_3 ]
   <= -22
 vc1_1_15: y_1 - y_15 - rotation_1 + [ - height * delta_1_15_1 ] <= -4
 vc2_1_15: - y_1 + y_15 - 20 rotation_15 + [ - height * delta_1_15_3 ]
   <= -23
 vc1_1_16: y_1 - y_16 - rotation_1 + [ - height * delta_1_16_1 ] <= -4
 vc2_1_16: - y_1 + y_16 - 21 rotation_16 + [ - height * delta_1_16_3 ]
   <= -24
 vc1_1_17: y_1 - y_17 - rotation_1 + [ - height * delta_1_17_1 ] <= -4
 vc2_1_17: - y_1 + y_17 - 22 rotation_17 + [ - height * delta_1_17_3 ]
   <= -25
 vc1_1_18: y_1 - y_18 - rotation_1 + [ - height * delta_1_18_1 ] <= -4
 vc2_1_18: - y_1 + y_18 - 24 rotation_18 + [ - height * delta_1_18_3 ]
   <= -27
 vc1_1_19: y_1 - y_19 - rotation_1 + [ - height * delta_1_19_1 ] <= -4
 vc2_1_19: - y_1 + y_19 + rotation_19 + [ - height * delta_1_19_3 ] <= -3
 vc1_1_20: y_1 - y_20 - rotation_1 + [ - height * delta_1_20_1 ] <= -4
 vc2_1_20: - y_1 + y_20 + [ - height * delta_1_20_3 ] <= -4
 vc1_1_21: y_1 - y_21 - rotation_1 + [ - height * delta_1_21_1 ] <= -4
 vc2_1_21: - y_1 + y_21 - rotation_21 + [ - height * delta_1_21_3 ] <= -5
 vc1_1_22: y_1 - y_22 - rotation_1 + [ - height * delta_1_22_1 ] <= -4
 vc2_1_22: - y_1 + y_22 - 2 rotation_22 + [ - height * delta_1_22_3 ]
   <= -6
 vc1_1_23: y_1 - y_23 - rotation_1 + [ - height * delta_1_23_1 ] <= -4
 vc2_1_23: - y_1 + y_23 - 3 rotation_23 + [ - height * delta_1_23_3 ]
   <= -7
 vc1_1_24: y_1 - y_24 - rotation_1 + [ - height * delta_1_24_1 ] <= -4
 vc2_1_24: - y_1 + y_24 - 6 rotation_24 + [ - height * delta_1_24_3 ]
   <= -10
 vc1_1_25: y_1 - y_25 - rotation_1 + [ - height * delta_1_25_1 ] <= -4
 vc2_1_25: - y_1 + y_25 - 7 rotation_25 + [ - height * delta_1_25_3 ]
   <= -11
 vc1_1_26: y_1 - y_26 - rotation_1 + [ - height * delta_1_26_1 ] <= -4
 vc2_1_26: - y_1 + y_26 - 14 rotation_26 + [ - height * delta_1_26_3 ]
   <= -18
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
 vc2_2_8: - y_2 + y_8 - 8 rotation_8 + [ - height * delta_2_8_3 ] <= -11
 vc1_2_9: y_2 - y_9 - 2 rotation_2 + [ - height * delta_2_9_1 ] <= -5
 vc2_2_9: - y_2 + y_9 - 9 rotation_9 + [ - height * delta_2_9_3 ] <= -12
 vc1_2_10: y_2 - y_10 - 2 rotation_2 + [ - height * delta_2_10_1 ] <= -5
 vc2_2_10: - y_2 + y_10 - 10 rotation_10 + [ - height * delta_2_10_3 ]
   <= -13
 vc1_2_11: y_2 - y_11 - 2 rotation_2 + [ - height * delta_2_11_1 ] <= -5
 vc2_2_11: - y_2 + y_11 - 11 rotation_11 + [ - height * delta_2_11_3 ]
   <= -14
 vc1_2_12: y_2 - y_12 - 2 rotation_2 + [ - height * delta_2_12_1 ] <= -5
 vc2_2_12: - y_2 + y_12 - 12 rotation_12 + [ - height * delta_2_12_3 ]
   <= -15
 vc1_2_13: y_2 - y_13 - 2 rotation_2 + [ - height * delta_2_13_1 ] <= -5
 vc2_2_13: - y_2 + y_13 - 15 rotation_13 + [ - height * delta_2_13_3 ]
   <= -18
 vc1_2_14: y_2 - y_14 - 2 rotation_2 + [ - height * delta_2_14_1 ] <= -5
 vc2_2_14: - y_2 + y_14 - 19 rotation_14 + [ - height * delta_2_14_3 ]
   <= -22
 vc1_2_15: y_2 - y_15 - 2 rotation_2 + [ - height * delta_2_15_1 ] <= -5
 vc2_2_15: - y_2 + y_15 - 20 rotation_15 + [ - height * delta_2_15_3 ]
   <= -23
 vc1_2_16: y_2 - y_16 - 2 rotation_2 + [ - height * delta_2_16_1 ] <= -5
 vc2_2_16: - y_2 + y_16 - 21 rotation_16 + [ - height * delta_2_16_3 ]
   <= -24
 vc1_2_17: y_2 - y_17 - 2 rotation_2 + [ - height * delta_2_17_1 ] <= -5
 vc2_2_17: - y_2 + y_17 - 22 rotation_17 + [ - height * delta_2_17_3 ]
   <= -25
 vc1_2_18: y_2 - y_18 - 2 rotation_2 + [ - height * delta_2_18_1 ] <= -5
 vc2_2_18: - y_2 + y_18 - 24 rotation_18 + [ - height * delta_2_18_3 ]
   <= -27
 vc1_2_19: y_2 - y_19 - 2 rotation_2 + [ - height * delta_2_19_1 ] <= -5
 vc2_2_19: - y_2 + y_19 + rotation_19 + [ - height * delta_2_19_3 ] <= -3
 vc1_2_20: y_2 - y_20 - 2 rotation_2 + [ - height * delta_2_20_1 ] <= -5
 vc2_2_20: - y_2 + y_20 + [ - height * delta_2_20_3 ] <= -4
 vc1_2_21: y_2 - y_21 - 2 rotation_2 + [ - height * delta_2_21_1 ] <= -5
 vc2_2_21: - y_2 + y_21 - rotation_21 + [ - height * delta_2_21_3 ] <= -5
 vc1_2_22: y_2 - y_22 - 2 rotation_2 + [ - height * delta_2_22_1 ] <= -5
 vc2_2_22: - y_2 + y_22 - 2 rotation_22 + [ - height * delta_2_22_3 ]
   <= -6
 vc1_2_23: y_2 - y_23 - 2 rotation_2 + [ - height * delta_2_23_1 ] <= -5
 vc2_2_23: - y_2 + y_23 - 3 rotation_23 + [ - height * delta_2_23_3 ]
   <= -7
 vc1_2_24: y_2 - y_24 - 2 rotation_2 + [ - height * delta_2_24_1 ] <= -5
 vc2_2_24: - y_2 + y_24 - 6 rotation_24 + [ - height * delta_2_24_3 ]
   <= -10
 vc1_2_25: y_2 - y_25 - 2 rotation_2 + [ - height * delta_2_25_1 ] <= -5
 vc2_2_25: - y_2 + y_25 - 7 rotation_25 + [ - height * delta_2_25_3 ]
   <= -11
 vc1_2_26: y_2 - y_26 - 2 rotation_2 + [ - height * delta_2_26_1 ] <= -5
 vc2_2_26: - y_2 + y_26 - 14 rotation_26 + [ - height * delta_2_26_3 ]
   <= -18
 vc1_3_4: y_3 - y_4 - 3 rotation_3 + [ - height * delta_3_4_1 ] <= -6
 vc2_3_4: - y_3 + y_4 - 4 rotation_4 + [ - height * delta_3_4_3 ] <= -7
 vc1_3_5: y_3 - y_5 - 3 rotation_3 + [ - height * delta_3_5_1 ] <= -6
 vc2_3_5: - y_3 + y_5 - 5 rotation_5 + [ - height * delta_3_5_3 ] <= -8
 vc1_3_6: y_3 - y_6 - 3 rotation_3 + [ - height * delta_3_6_1 ] <= -6
 vc2_3_6: - y_3 + y_6 - 6 rotation_6 + [ - height * delta_3_6_3 ] <= -9
 vc1_3_7: y_3 - y_7 - 3 rotation_3 + [ - height * delta_3_7_1 ] <= -6
 vc2_3_7: - y_3 + y_7 - 7 rotation_7 + [ - height * delta_3_7_3 ] <= -10
 vc1_3_8: y_3 - y_8 - 3 rotation_3 + [ - height * delta_3_8_1 ] <= -6
 vc2_3_8: - y_3 + y_8 - 8 rotation_8 + [ - height * delta_3_8_3 ] <= -11
 vc1_3_9: y_3 - y_9 - 3 rotation_3 + [ - height * delta_3_9_1 ] <= -6
 vc2_3_9: - y_3 + y_9 - 9 rotation_9 + [ - height * delta_3_9_3 ] <= -12
 vc1_3_10: y_3 - y_10 - 3 rotation_3 + [ - height * delta_3_10_1 ] <= -6
 vc2_3_10: - y_3 + y_10 - 10 rotation_10 + [ - height * delta_3_10_3 ]
   <= -13
 vc1_3_11: y_3 - y_11 - 3 rotation_3 + [ - height * delta_3_11_1 ] <= -6
 vc2_3_11: - y_3 + y_11 - 11 rotation_11 + [ - height * delta_3_11_3 ]
   <= -14
 vc1_3_12: y_3 - y_12 - 3 rotation_3 + [ - height * delta_3_12_1 ] <= -6
 vc2_3_12: - y_3 + y_12 - 12 rotation_12 + [ - height * delta_3_12_3 ]
   <= -15
 vc1_3_13: y_3 - y_13 - 3 rotation_3 + [ - height * delta_3_13_1 ] <= -6
 vc2_3_13: - y_3 + y_13 - 15 rotation_13 + [ - height * delta_3_13_3 ]
   <= -18
 vc1_3_14: y_3 - y_14 - 3 rotation_3 + [ - height * delta_3_14_1 ] <= -6
 vc2_3_14: - y_3 + y_14 - 19 rotation_14 + [ - height * delta_3_14_3 ]
   <= -22
 vc1_3_15: y_3 - y_15 - 3 rotation_3 + [ - height * delta_3_15_1 ] <= -6
 vc2_3_15: - y_3 + y_15 - 20 rotation_15 + [ - height * delta_3_15_3 ]
   <= -23
 vc1_3_16: y_3 - y_16 - 3 rotation_3 + [ - height * delta_3_16_1 ] <= -6
 vc2_3_16: - y_3 + y_16 - 21 rotation_16 + [ - height * delta_3_16_3 ]
   <= -24
 vc1_3_17: y_3 - y_17 - 3 rotation_3 + [ - height * delta_3_17_1 ] <= -6
 vc2_3_17: - y_3 + y_17 - 22 rotation_17 + [ - height * delta_3_17_3 ]
   <= -25
 vc1_3_18: y_3 - y_18 - 3 rotation_3 + [ - height * delta_3_18_1 ] <= -6
 vc2_3_18: - y_3 + y_18 - 24 rotation_18 + [ - height * delta_3_18_3 ]
   <= -27
 vc1_3_19: y_3 - y_19 - 3 rotation_3 + [ - height * delta_3_19_1 ] <= -6
 vc2_3_19: - y_3 + y_19 + rotation_19 + [ - height * delta_3_19_3 ] <= -3
 vc1_3_20: y_3 - y_20 - 3 rotation_3 + [ - height * delta_3_20_1 ] <= -6
 vc2_3_20: - y_3 + y_20 + [ - height * delta_3_20_3 ] <= -4
 vc1_3_21: y_3 - y_21 - 3 rotation_3 + [ - height * delta_3_21_1 ] <= -6
 vc2_3_21: - y_3 + y_21 - rotation_21 + [ - height * delta_3_21_3 ] <= -5
 vc1_3_22: y_3 - y_22 - 3 rotation_3 + [ - height * delta_3_22_1 ] <= -6
 vc2_3_22: - y_3 + y_22 - 2 rotation_22 + [ - height * delta_3_22_3 ]
   <= -6
 vc1_3_23: y_3 - y_23 - 3 rotation_3 + [ - height * delta_3_23_1 ] <= -6
 vc2_3_23: - y_3 + y_23 - 3 rotation_23 + [ - height * delta_3_23_3 ]
   <= -7
 vc1_3_24: y_3 - y_24 - 3 rotation_3 + [ - height * delta_3_24_1 ] <= -6
 vc2_3_24: - y_3 + y_24 - 6 rotation_24 + [ - height * delta_3_24_3 ]
   <= -10
 vc1_3_25: y_3 - y_25 - 3 rotation_3 + [ - height * delta_3_25_1 ] <= -6
 vc2_3_25: - y_3 + y_25 - 7 rotation_25 + [ - height * delta_3_25_3 ]
   <= -11
 vc1_3_26: y_3 - y_26 - 3 rotation_3 + [ - height * delta_3_26_1 ] <= -6
 vc2_3_26: - y_3 + y_26 - 14 rotation_26 + [ - height * delta_3_26_3 ]
   <= -18
 vc1_4_5: y_4 - y_5 - 4 rotation_4 + [ - height * delta_4_5_1 ] <= -7
 vc2_4_5: - y_4 + y_5 - 5 rotation_5 + [ - height * delta_4_5_3 ] <= -8
 vc1_4_6: y_4 - y_6 - 4 rotation_4 + [ - height * delta_4_6_1 ] <= -7
 vc2_4_6: - y_4 + y_6 - 6 rotation_6 + [ - height * delta_4_6_3 ] <= -9
 vc1_4_7: y_4 - y_7 - 4 rotation_4 + [ - height * delta_4_7_1 ] <= -7
 vc2_4_7: - y_4 + y_7 - 7 rotation_7 + [ - height * delta_4_7_3 ] <= -10
 vc1_4_8: y_4 - y_8 - 4 rotation_4 + [ - height * delta_4_8_1 ] <= -7
 vc2_4_8: - y_4 + y_8 - 8 rotation_8 + [ - height * delta_4_8_3 ] <= -11
 vc1_4_9: y_4 - y_9 - 4 rotation_4 + [ - height * delta_4_9_1 ] <= -7
 vc2_4_9: - y_4 + y_9 - 9 rotation_9 + [ - height * delta_4_9_3 ] <= -12
 vc1_4_10: y_4 - y_10 - 4 rotation_4 + [ - height * delta_4_10_1 ] <= -7
 vc2_4_10: - y_4 + y_10 - 10 rotation_10 + [ - height * delta_4_10_3 ]
   <= -13
 vc1_4_11: y_4 - y_11 - 4 rotation_4 + [ - height * delta_4_11_1 ] <= -7
 vc2_4_11: - y_4 + y_11 - 11 rotation_11 + [ - height * delta_4_11_3 ]
   <= -14
 vc1_4_12: y_4 - y_12 - 4 rotation_4 + [ - height * delta_4_12_1 ] <= -7
 vc2_4_12: - y_4 + y_12 - 12 rotation_12 + [ - height * delta_4_12_3 ]
   <= -15
 vc1_4_13: y_4 - y_13 - 4 rotation_4 + [ - height * delta_4_13_1 ] <= -7
 vc2_4_13: - y_4 + y_13 - 15 rotation_13 + [ - height * delta_4_13_3 ]
   <= -18
 vc1_4_14: y_4 - y_14 - 4 rotation_4 + [ - height * delta_4_14_1 ] <= -7
 vc2_4_14: - y_4 + y_14 - 19 rotation_14 + [ - height * delta_4_14_3 ]
   <= -22
 vc1_4_15: y_4 - y_15 - 4 rotation_4 + [ - height * delta_4_15_1 ] <= -7
 vc2_4_15: - y_4 + y_15 - 20 rotation_15 + [ - height * delta_4_15_3 ]
   <= -23
 vc1_4_16: y_4 - y_16 - 4 rotation_4 + [ - height * delta_4_16_1 ] <= -7
 vc2_4_16: - y_4 + y_16 - 21 rotation_16 + [ - height * delta_4_16_3 ]
   <= -24
 vc1_4_17: y_4 - y_17 - 4 rotation_4 + [ - height * delta_4_17_1 ] <= -7
 vc2_4_17: - y_4 + y_17 - 22 rotation_17 + [ - height * delta_4_17_3 ]
   <= -25
 vc1_4_18: y_4 - y_18 - 4 rotation_4 + [ - height * delta_4_18_1 ] <= -7
 vc2_4_18: - y_4 + y_18 - 24 rotation_18 + [ - height * delta_4_18_3 ]
   <= -27
 vc1_4_19: y_4 - y_19 - 4 rotation_4 + [ - height * delta_4_19_1 ] <= -7
 vc2_4_19: - y_4 + y_19 + rotation_19 + [ - height * delta_4_19_3 ] <= -3
 vc1_4_20: y_4 - y_20 - 4 rotation_4 + [ - height * delta_4_20_1 ] <= -7
 vc2_4_20: - y_4 + y_20 + [ - height * delta_4_20_3 ] <= -4
 vc1_4_21: y_4 - y_21 - 4 rotation_4 + [ - height * delta_4_21_1 ] <= -7
 vc2_4_21: - y_4 + y_21 - rotation_21 + [ - height * delta_4_21_3 ] <= -5
 vc1_4_22: y_4 - y_22 - 4 rotation_4 + [ - height * delta_4_22_1 ] <= -7
 vc2_4_22: - y_4 + y_22 - 2 rotation_22 + [ - height * delta_4_22_3 ]
   <= -6
 vc1_4_23: y_4 - y_23 - 4 rotation_4 + [ - height * delta_4_23_1 ] <= -7
 vc2_4_23: - y_4 + y_23 - 3 rotation_23 + [ - height * delta_4_23_3 ]
   <= -7
 vc1_4_24: y_4 - y_24 - 4 rotation_4 + [ - height * delta_4_24_1 ] <= -7
 vc2_4_24: - y_4 + y_24 - 6 rotation_24 + [ - height * delta_4_24_3 ]
   <= -10
 vc1_4_25: y_4 - y_25 - 4 rotation_4 + [ - height * delta_4_25_1 ] <= -7
 vc2_4_25: - y_4 + y_25 - 7 rotation_25 + [ - height * delta_4_25_3 ]
   <= -11
 vc1_4_26: y_4 - y_26 - 4 rotation_4 + [ - height * delta_4_26_1 ] <= -7
 vc2_4_26: - y_4 + y_26 - 14 rotation_26 + [ - height * delta_4_26_3 ]
   <= -18
 vc1_5_6: y_5 - y_6 - 5 rotation_5 + [ - height * delta_5_6_1 ] <= -8
 vc2_5_6: - y_5 + y_6 - 6 rotation_6 + [ - height * delta_5_6_3 ] <= -9
 vc1_5_7: y_5 - y_7 - 5 rotation_5 + [ - height * delta_5_7_1 ] <= -8
 vc2_5_7: - y_5 + y_7 - 7 rotation_7 + [ - height * delta_5_7_3 ] <= -10
 vc1_5_8: y_5 - y_8 - 5 rotation_5 + [ - height * delta_5_8_1 ] <= -8
 vc2_5_8: - y_5 + y_8 - 8 rotation_8 + [ - height * delta_5_8_3 ] <= -11
 vc1_5_9: y_5 - y_9 - 5 rotation_5 + [ - height * delta_5_9_1 ] <= -8
 vc2_5_9: - y_5 + y_9 - 9 rotation_9 + [ - height * delta_5_9_3 ] <= -12
 vc1_5_10: y_5 - y_10 - 5 rotation_5 + [ - height * delta_5_10_1 ] <= -8
 vc2_5_10: - y_5 + y_10 - 10 rotation_10 + [ - height * delta_5_10_3 ]
   <= -13
 vc1_5_11: y_5 - y_11 - 5 rotation_5 + [ - height * delta_5_11_1 ] <= -8
 vc2_5_11: - y_5 + y_11 - 11 rotation_11 + [ - height * delta_5_11_3 ]
   <= -14
 vc1_5_12: y_5 - y_12 - 5 rotation_5 + [ - height * delta_5_12_1 ] <= -8
 vc2_5_12: - y_5 + y_12 - 12 rotation_12 + [ - height * delta_5_12_3 ]
   <= -15
 vc1_5_13: y_5 - y_13 - 5 rotation_5 + [ - height * delta_5_13_1 ] <= -8
 vc2_5_13: - y_5 + y_13 - 15 rotation_13 + [ - height * delta_5_13_3 ]
   <= -18
 vc1_5_14: y_5 - y_14 - 5 rotation_5 + [ - height * delta_5_14_1 ] <= -8
 vc2_5_14: - y_5 + y_14 - 19 rotation_14 + [ - height * delta_5_14_3 ]
   <= -22
 vc1_5_15: y_5 - y_15 - 5 rotation_5 + [ - height * delta_5_15_1 ] <= -8
 vc2_5_15: - y_5 + y_15 - 20 rotation_15 + [ - height * delta_5_15_3 ]
   <= -23
 vc1_5_16: y_5 - y_16 - 5 rotation_5 + [ - height * delta_5_16_1 ] <= -8
 vc2_5_16: - y_5 + y_16 - 21 rotation_16 + [ - height * delta_5_16_3 ]
   <= -24
 vc1_5_17: y_5 - y_17 - 5 rotation_5 + [ - height * delta_5_17_1 ] <= -8
 vc2_5_17: - y_5 + y_17 - 22 rotation_17 + [ - height * delta_5_17_3 ]
   <= -25
 vc1_5_18: y_5 - y_18 - 5 rotation_5 + [ - height * delta_5_18_1 ] <= -8
 vc2_5_18: - y_5 + y_18 - 24 rotation_18 + [ - height * delta_5_18_3 ]
   <= -27
 vc1_5_19: y_5 - y_19 - 5 rotation_5 + [ - height * delta_5_19_1 ] <= -8
 vc2_5_19: - y_5 + y_19 + rotation_19 + [ - height * delta_5_19_3 ] <= -3
 vc1_5_20: y_5 - y_20 - 5 rotation_5 + [ - height * delta_5_20_1 ] <= -8
 vc2_5_20: - y_5 + y_20 + [ - height * delta_5_20_3 ] <= -4
 vc1_5_21: y_5 - y_21 - 5 rotation_5 + [ - height * delta_5_21_1 ] <= -8
 vc2_5_21: - y_5 + y_21 - rotation_21 + [ - height * delta_5_21_3 ] <= -5
 vc1_5_22: y_5 - y_22 - 5 rotation_5 + [ - height * delta_5_22_1 ] <= -8
 vc2_5_22: - y_5 + y_22 - 2 rotation_22 + [ - height * delta_5_22_3 ]
   <= -6
 vc1_5_23: y_5 - y_23 - 5 rotation_5 + [ - height * delta_5_23_1 ] <= -8
 vc2_5_23: - y_5 + y_23 - 3 rotation_23 + [ - height * delta_5_23_3 ]
   <= -7
 vc1_5_24: y_5 - y_24 - 5 rotation_5 + [ - height * delta_5_24_1 ] <= -8
 vc2_5_24: - y_5 + y_24 - 6 rotation_24 + [ - height * delta_5_24_3 ]
   <= -10
 vc1_5_25: y_5 - y_25 - 5 rotation_5 + [ - height * delta_5_25_1 ] <= -8
 vc2_5_25: - y_5 + y_25 - 7 rotation_25 + [ - height * delta_5_25_3 ]
   <= -11
 vc1_5_26: y_5 - y_26 - 5 rotation_5 + [ - height * delta_5_26_1 ] <= -8
 vc2_5_26: - y_5 + y_26 - 14 rotation_26 + [ - height * delta_5_26_3 ]
   <= -18
 vc1_6_7: y_6 - y_7 - 6 rotation_6 + [ - height * delta_6_7_1 ] <= -9
 vc2_6_7: - y_6 + y_7 - 7 rotation_7 + [ - height * delta_6_7_3 ] <= -10
 vc1_6_8: y_6 - y_8 - 6 rotation_6 + [ - height * delta_6_8_1 ] <= -9
 vc2_6_8: - y_6 + y_8 - 8 rotation_8 + [ - height * delta_6_8_3 ] <= -11
 vc1_6_9: y_6 - y_9 - 6 rotation_6 + [ - height * delta_6_9_1 ] <= -9
 vc2_6_9: - y_6 + y_9 - 9 rotation_9 + [ - height * delta_6_9_3 ] <= -12
 vc1_6_10: y_6 - y_10 - 6 rotation_6 + [ - height * delta_6_10_1 ] <= -9
 vc2_6_10: - y_6 + y_10 - 10 rotation_10 + [ - height * delta_6_10_3 ]
   <= -13
 vc1_6_11: y_6 - y_11 - 6 rotation_6 + [ - height * delta_6_11_1 ] <= -9
 vc2_6_11: - y_6 + y_11 - 11 rotation_11 + [ - height * delta_6_11_3 ]
   <= -14
 vc1_6_12: y_6 - y_12 - 6 rotation_6 + [ - height * delta_6_12_1 ] <= -9
 vc2_6_12: - y_6 + y_12 - 12 rotation_12 + [ - height * delta_6_12_3 ]
   <= -15
 vc1_6_13: y_6 - y_13 - 6 rotation_6 + [ - height * delta_6_13_1 ] <= -9
 vc2_6_13: - y_6 + y_13 - 15 rotation_13 + [ - height * delta_6_13_3 ]
   <= -18
 vc1_6_14: y_6 - y_14 - 6 rotation_6 + [ - height * delta_6_14_1 ] <= -9
 vc2_6_14: - y_6 + y_14 - 19 rotation_14 + [ - height * delta_6_14_3 ]
   <= -22
 vc1_6_15: y_6 - y_15 - 6 rotation_6 + [ - height * delta_6_15_1 ] <= -9
 vc2_6_15: - y_6 + y_15 - 20 rotation_15 + [ - height * delta_6_15_3 ]
   <= -23
 vc1_6_16: y_6 - y_16 - 6 rotation_6 + [ - height * delta_6_16_1 ] <= -9
 vc2_6_16: - y_6 + y_16 - 21 rotation_16 + [ - height * delta_6_16_3 ]
   <= -24
 vc1_6_17: y_6 - y_17 - 6 rotation_6 + [ - height * delta_6_17_1 ] <= -9
 vc2_6_17: - y_6 + y_17 - 22 rotation_17 + [ - height * delta_6_17_3 ]
   <= -25
 vc1_6_18: y_6 - y_18 - 6 rotation_6 + [ - height * delta_6_18_1 ] <= -9
 vc2_6_18: - y_6 + y_18 - 24 rotation_18 + [ - height * delta_6_18_3 ]
   <= -27
 vc1_6_19: y_6 - y_19 - 6 rotation_6 + [ - height * delta_6_19_1 ] <= -9
 vc2_6_19: - y_6 + y_19 + rotation_19 + [ - height * delta_6_19_3 ] <= -3
 vc1_6_20: y_6 - y_20 - 6 rotation_6 + [ - height * delta_6_20_1 ] <= -9
 vc2_6_20: - y_6 + y_20 + [ - height * delta_6_20_3 ] <= -4
 vc1_6_21: y_6 - y_21 - 6 rotation_6 + [ - height * delta_6_21_1 ] <= -9
 vc2_6_21: - y_6 + y_21 - rotation_21 + [ - height * delta_6_21_3 ] <= -5
 vc1_6_22: y_6 - y_22 - 6 rotation_6 + [ - height * delta_6_22_1 ] <= -9
 vc2_6_22: - y_6 + y_22 - 2 rotation_22 + [ - height * delta_6_22_3 ]
   <= -6
 vc1_6_23: y_6 - y_23 - 6 rotation_6 + [ - height * delta_6_23_1 ] <= -9
 vc2_6_23: - y_6 + y_23 - 3 rotation_23 + [ - height * delta_6_23_3 ]
   <= -7
 vc1_6_24: y_6 - y_24 - 6 rotation_6 + [ - height * delta_6_24_1 ] <= -9
 vc2_6_24: - y_6 + y_24 - 6 rotation_24 + [ - height * delta_6_24_3 ]
   <= -10
 vc1_6_25: y_6 - y_25 - 6 rotation_6 + [ - height * delta_6_25_1 ] <= -9
 vc2_6_25: - y_6 + y_25 - 7 rotation_25 + [ - height * delta_6_25_3 ]
   <= -11
 vc1_6_26: y_6 - y_26 - 6 rotation_6 + [ - height * delta_6_26_1 ] <= -9
 vc2_6_26: - y_6 + y_26 - 14 rotation_26 + [ - height * delta_6_26_3 ]
   <= -18
 vc1_7_8: y_7 - y_8 - 7 rotation_7 + [ - height * delta_7_8_1 ] <= -10
 vc2_7_8: - y_7 + y_8 - 8 rotation_8 + [ - height * delta_7_8_3 ] <= -11
 vc1_7_9: y_7 - y_9 - 7 rotation_7 + [ - height * delta_7_9_1 ] <= -10
 vc2_7_9: - y_7 + y_9 - 9 rotation_9 + [ - height * delta_7_9_3 ] <= -12
 vc1_7_10: y_7 - y_10 - 7 rotation_7 + [ - height * delta_7_10_1 ] <= -10
 vc2_7_10: - y_7 + y_10 - 10 rotation_10 + [ - height * delta_7_10_3 ]
   <= -13
 vc1_7_11: y_7 - y_11 - 7 rotation_7 + [ - height * delta_7_11_1 ] <= -10
 vc2_7_11: - y_7 + y_11 - 11 rotation_11 + [ - height * delta_7_11_3 ]
   <= -14
 vc1_7_12: y_7 - y_12 - 7 rotation_7 + [ - height * delta_7_12_1 ] <= -10
 vc2_7_12: - y_7 + y_12 - 12 rotation_12 + [ - height * delta_7_12_3 ]
   <= -15
 vc1_7_13: y_7 - y_13 - 7 rotation_7 + [ - height * delta_7_13_1 ] <= -10
 vc2_7_13: - y_7 + y_13 - 15 rotation_13 + [ - height * delta_7_13_3 ]
   <= -18
 vc1_7_14: y_7 - y_14 - 7 rotation_7 + [ - height * delta_7_14_1 ] <= -10
 vc2_7_14: - y_7 + y_14 - 19 rotation_14 + [ - height * delta_7_14_3 ]
   <= -22
 vc1_7_15: y_7 - y_15 - 7 rotation_7 + [ - height * delta_7_15_1 ] <= -10
 vc2_7_15: - y_7 + y_15 - 20 rotation_15 + [ - height * delta_7_15_3 ]
   <= -23
 vc1_7_16: y_7 - y_16 - 7 rotation_7 + [ - height * delta_7_16_1 ] <= -10
 vc2_7_16: - y_7 + y_16 - 21 rotation_16 + [ - height * delta_7_16_3 ]
   <= -24
 vc1_7_17: y_7 - y_17 - 7 rotation_7 + [ - height * delta_7_17_1 ] <= -10
 vc2_7_17: - y_7 + y_17 - 22 rotation_17 + [ - height * delta_7_17_3 ]
   <= -25
 vc1_7_18: y_7 - y_18 - 7 rotation_7 + [ - height * delta_7_18_1 ] <= -10
 vc2_7_18: - y_7 + y_18 - 24 rotation_18 + [ - height * delta_7_18_3 ]
   <= -27
 vc1_7_19: y_7 - y_19 - 7 rotation_7 + [ - height * delta_7_19_1 ] <= -10
 vc2_7_19: - y_7 + y_19 + rotation_19 + [ - height * delta_7_19_3 ] <= -3
 vc1_7_20: y_7 - y_20 - 7 rotation_7 + [ - height * delta_7_20_1 ] <= -10
 vc2_7_20: - y_7 + y_20 + [ - height * delta_7_20_3 ] <= -4
 vc1_7_21: y_7 - y_21 - 7 rotation_7 + [ - height * delta_7_21_1 ] <= -10
 vc2_7_21: - y_7 + y_21 - rotation_21 + [ - height * delta_7_21_3 ] <= -5
 vc1_7_22: y_7 - y_22 - 7 rotation_7 + [ - height * delta_7_22_1 ] <= -10
 vc2_7_22: - y_7 + y_22 - 2 rotation_22 + [ - height * delta_7_22_3 ]
   <= -6
 vc1_7_23: y_7 - y_23 - 7 rotation_7 + [ - height * delta_7_23_1 ] <= -10
 vc2_7_23: - y_7 + y_23 - 3 rotation_23 + [ - height * delta_7_23_3 ]
   <= -7
 vc1_7_24: y_7 - y_24 - 7 rotation_7 + [ - height * delta_7_24_1 ] <= -10
 vc2_7_24: - y_7 + y_24 - 6 rotation_24 + [ - height * delta_7_24_3 ]
   <= -10
 vc1_7_25: y_7 - y_25 - 7 rotation_7 + [ - height * delta_7_25_1 ] <= -10
 vc2_7_25: - y_7 + y_25 - 7 rotation_25 + [ - height * delta_7_25_3 ]
   <= -11
 vc1_7_26: y_7 - y_26 - 7 rotation_7 + [ - height * delta_7_26_1 ] <= -10
 vc2_7_26: - y_7 + y_26 - 14 rotation_26 + [ - height * delta_7_26_3 ]
   <= -18
 vc1_8_9: y_8 - y_9 - 8 rotation_8 + [ - height * delta_8_9_1 ] <= -11
 vc2_8_9: - y_8 + y_9 - 9 rotation_9 + [ - height * delta_8_9_3 ] <= -12
 vc1_8_10: y_8 - y_10 - 8 rotation_8 + [ - height * delta_8_10_1 ] <= -11
 vc2_8_10: - y_8 + y_10 - 10 rotation_10 + [ - height * delta_8_10_3 ]
   <= -13
 vc1_8_11: y_8 - y_11 - 8 rotation_8 + [ - height * delta_8_11_1 ] <= -11
 vc2_8_11: - y_8 + y_11 - 11 rotation_11 + [ - height * delta_8_11_3 ]
   <= -14
 vc1_8_12: y_8 - y_12 - 8 rotation_8 + [ - height * delta_8_12_1 ] <= -11
 vc2_8_12: - y_8 + y_12 - 12 rotation_12 + [ - height * delta_8_12_3 ]
   <= -15
 vc1_8_13: y_8 - y_13 - 8 rotation_8 + [ - height * delta_8_13_1 ] <= -11
 vc2_8_13: - y_8 + y_13 - 15 rotation_13 + [ - height * delta_8_13_3 ]
   <= -18
 vc1_8_14: y_8 - y_14 - 8 rotation_8 + [ - height * delta_8_14_1 ] <= -11
 vc2_8_14: - y_8 + y_14 - 19 rotation_14 + [ - height * delta_8_14_3 ]
   <= -22
 vc1_8_15: y_8 - y_15 - 8 rotation_8 + [ - height * delta_8_15_1 ] <= -11
 vc2_8_15: - y_8 + y_15 - 20 rotation_15 + [ - height * delta_8_15_3 ]
   <= -23
 vc1_8_16: y_8 - y_16 - 8 rotation_8 + [ - height * delta_8_16_1 ] <= -11
 vc2_8_16: - y_8 + y_16 - 21 rotation_16 + [ - height * delta_8_16_3 ]
   <= -24
 vc1_8_17: y_8 - y_17 - 8 rotation_8 + [ - height * delta_8_17_1 ] <= -11
 vc2_8_17: - y_8 + y_17 - 22 rotation_17 + [ - height * delta_8_17_3 ]
   <= -25
 vc1_8_18: y_8 - y_18 - 8 rotation_8 + [ - height * delta_8_18_1 ] <= -11
 vc2_8_18: - y_8 + y_18 - 24 rotation_18 + [ - height * delta_8_18_3 ]
   <= -27
 vc1_8_19: y_8 - y_19 - 8 rotation_8 + [ - height * delta_8_19_1 ] <= -11
 vc2_8_19: - y_8 + y_19 + rotation_19 + [ - height * delta_8_19_3 ] <= -3
 vc1_8_20: y_8 - y_20 - 8 rotation_8 + [ - height * delta_8_20_1 ] <= -11
 vc2_8_20: - y_8 + y_20 + [ - height * delta_8_20_3 ] <= -4
 vc1_8_21: y_8 - y_21 - 8 rotation_8 + [ - height * delta_8_21_1 ] <= -11
 vc2_8_21: - y_8 + y_21 - rotation_21 + [ - height * delta_8_21_3 ] <= -5
 vc1_8_22: y_8 - y_22 - 8 rotation_8 + [ - height * delta_8_22_1 ] <= -11
 vc2_8_22: - y_8 + y_22 - 2 rotation_22 + [ - height * delta_8_22_3 ]
   <= -6
 vc1_8_23: y_8 - y_23 - 8 rotation_8 + [ - height * delta_8_23_1 ] <= -11
 vc2_8_23: - y_8 + y_23 - 3 rotation_23 + [ - height * delta_8_23_3 ]
   <= -7
 vc1_8_24: y_8 - y_24 - 8 rotation_8 + [ - height * delta_8_24_1 ] <= -11
 vc2_8_24: - y_8 + y_24 - 6 rotation_24 + [ - height * delta_8_24_3 ]
   <= -10
 vc1_8_25: y_8 - y_25 - 8 rotation_8 + [ - height * delta_8_25_1 ] <= -11
 vc2_8_25: - y_8 + y_25 - 7 rotation_25 + [ - height * delta_8_25_3 ]
   <= -11
 vc1_8_26: y_8 - y_26 - 8 rotation_8 + [ - height * delta_8_26_1 ] <= -11
 vc2_8_26: - y_8 + y_26 - 14 rotation_26 + [ - height * delta_8_26_3 ]
   <= -18
 vc1_9_10: y_9 - y_10 - 9 rotation_9 + [ - height * delta_9_10_1 ] <= -12
 vc2_9_10: - y_9 + y_10 - 10 rotation_10 + [ - height * delta_9_10_3 ]
   <= -13
 vc1_9_11: y_9 - y_11 - 9 rotation_9 + [ - height * delta_9_11_1 ] <= -12
 vc2_9_11: - y_9 + y_11 - 11 rotation_11 + [ - height * delta_9_11_3 ]
   <= -14
 vc1_9_12: y_9 - y_12 - 9 rotation_9 + [ - height * delta_9_12_1 ] <= -12
 vc2_9_12: - y_9 + y_12 - 12 rotation_12 + [ - height * delta_9_12_3 ]
   <= -15
 vc1_9_13: y_9 - y_13 - 9 rotation_9 + [ - height * delta_9_13_1 ] <= -12
 vc2_9_13: - y_9 + y_13 - 15 rotation_13 + [ - height * delta_9_13_3 ]
   <= -18
 vc1_9_14: y_9 - y_14 - 9 rotation_9 + [ - height * delta_9_14_1 ] <= -12
 vc2_9_14: - y_9 + y_14 - 19 rotation_14 + [ - height * delta_9_14_3 ]
   <= -22
 vc1_9_15: y_9 - y_15 - 9 rotation_9 + [ - height * delta_9_15_1 ] <= -12
 vc2_9_15: - y_9 + y_15 - 20 rotation_15 + [ - height * delta_9_15_3 ]
   <= -23
 vc1_9_16: y_9 - y_16 - 9 rotation_9 + [ - height * delta_9_16_1 ] <= -12
 vc2_9_16: - y_9 + y_16 - 21 rotation_16 + [ - height * delta_9_16_3 ]
   <= -24
 vc1_9_17: y_9 - y_17 - 9 rotation_9 + [ - height * delta_9_17_1 ] <= -12
 vc2_9_17: - y_9 + y_17 - 22 rotation_17 + [ - height * delta_9_17_3 ]
   <= -25
 vc1_9_18: y_9 - y_18 - 9 rotation_9 + [ - height * delta_9_18_1 ] <= -12
 vc2_9_18: - y_9 + y_18 - 24 rotation_18 + [ - height * delta_9_18_3 ]
   <= -27
 vc1_9_19: y_9 - y_19 - 9 rotation_9 + [ - height * delta_9_19_1 ] <= -12
 vc2_9_19: - y_9 + y_19 + rotation_19 + [ - height * delta_9_19_3 ] <= -3
 vc1_9_20: y_9 - y_20 - 9 rotation_9 + [ - height * delta_9_20_1 ] <= -12
 vc2_9_20: - y_9 + y_20 + [ - height * delta_9_20_3 ] <= -4
 vc1_9_21: y_9 - y_21 - 9 rotation_9 + [ - height * delta_9_21_1 ] <= -12
 vc2_9_21: - y_9 + y_21 - rotation_21 + [ - height * delta_9_21_3 ] <= -5
 vc1_9_22: y_9 - y_22 - 9 rotation_9 + [ - height * delta_9_22_1 ] <= -12
 vc2_9_22: - y_9 + y_22 - 2 rotation_22 + [ - height * delta_9_22_3 ]
   <= -6
 vc1_9_23: y_9 - y_23 - 9 rotation_9 + [ - height * delta_9_23_1 ] <= -12
 vc2_9_23: - y_9 + y_23 - 3 rotation_23 + [ - height * delta_9_23_3 ]
   <= -7
 vc1_9_24: y_9 - y_24 - 9 rotation_9 + [ - height * delta_9_24_1 ] <= -12
 vc2_9_24: - y_9 + y_24 - 6 rotation_24 + [ - height * delta_9_24_3 ]
   <= -10
 vc1_9_25: y_9 - y_25 - 9 rotation_9 + [ - height * delta_9_25_1 ] <= -12
 vc2_9_25: - y_9 + y_25 - 7 rotation_25 + [ - height * delta_9_25_3 ]
   <= -11
 vc1_9_26: y_9 - y_26 - 9 rotation_9 + [ - height * delta_9_26_1 ] <= -12
 vc2_9_26: - y_9 + y_26 - 14 rotation_26 + [ - height * delta_9_26_3 ]
   <= -18
 vc1_10_11: y_10 - y_11 - 10 rotation_10 + [ - height * delta_10_11_1 ]
   <= -13
 vc2_10_11: - y_10 + y_11 - 11 rotation_11 + [ - height * delta_10_11_3 ]
   <= -14
 vc1_10_12: y_10 - y_12 - 10 rotation_10 + [ - height * delta_10_12_1 ]
   <= -13
 vc2_10_12: - y_10 + y_12 - 12 rotation_12 + [ - height * delta_10_12_3 ]
   <= -15
 vc1_10_13: y_10 - y_13 - 10 rotation_10 + [ - height * delta_10_13_1 ]
   <= -13
 vc2_10_13: - y_10 + y_13 - 15 rotation_13 + [ - height * delta_10_13_3 ]
   <= -18
 vc1_10_14: y_10 - y_14 - 10 rotation_10 + [ - height * delta_10_14_1 ]
   <= -13
 vc2_10_14: - y_10 + y_14 - 19 rotation_14 + [ - height * delta_10_14_3 ]
   <= -22
 vc1_10_15: y_10 - y_15 - 10 rotation_10 + [ - height * delta_10_15_1 ]
   <= -13
 vc2_10_15: - y_10 + y_15 - 20 rotation_15 + [ - height * delta_10_15_3 ]
   <= -23
 vc1_10_16: y_10 - y_16 - 10 rotation_10 + [ - height * delta_10_16_1 ]
   <= -13
 vc2_10_16: - y_10 + y_16 - 21 rotation_16 + [ - height * delta_10_16_3 ]
   <= -24
 vc1_10_17: y_10 - y_17 - 10 rotation_10 + [ - height * delta_10_17_1 ]
   <= -13
 vc2_10_17: - y_10 + y_17 - 22 rotation_17 + [ - height * delta_10_17_3 ]
   <= -25
 vc1_10_18: y_10 - y_18 - 10 rotation_10 + [ - height * delta_10_18_1 ]
   <= -13
 vc2_10_18: - y_10 + y_18 - 24 rotation_18 + [ - height * delta_10_18_3 ]
   <= -27
 vc1_10_19: y_10 - y_19 - 10 rotation_10 + [ - height * delta_10_19_1 ]
   <= -13
 vc2_10_19: - y_10 + y_19 + rotation_19 + [ - height * delta_10_19_3 ]
   <= -3
 vc1_10_20: y_10 - y_20 - 10 rotation_10 + [ - height * delta_10_20_1 ]
   <= -13
 vc2_10_20: - y_10 + y_20 + [ - height * delta_10_20_3 ] <= -4
 vc1_10_21: y_10 - y_21 - 10 rotation_10 + [ - height * delta_10_21_1 ]
   <= -13
 vc2_10_21: - y_10 + y_21 - rotation_21 + [ - height * delta_10_21_3 ]
   <= -5
 vc1_10_22: y_10 - y_22 - 10 rotation_10 + [ - height * delta_10_22_1 ]
   <= -13
 vc2_10_22: - y_10 + y_22 - 2 rotation_22 + [ - height * delta_10_22_3 ]
   <= -6
 vc1_10_23: y_10 - y_23 - 10 rotation_10 + [ - height * delta_10_23_1 ]
   <= -13
 vc2_10_23: - y_10 + y_23 - 3 rotation_23 + [ - height * delta_10_23_3 ]
   <= -7
 vc1_10_24: y_10 - y_24 - 10 rotation_10 + [ - height * delta_10_24_1 ]
   <= -13
 vc2_10_24: - y_10 + y_24 - 6 rotation_24 + [ - height * delta_10_24_3 ]
   <= -10
 vc1_10_25: y_10 - y_25 - 10 rotation_10 + [ - height * delta_10_25_1 ]
   <= -13
 vc2_10_25: - y_10 + y_25 - 7 rotation_25 + [ - height * delta_10_25_3 ]
   <= -11
 vc1_10_26: y_10 - y_26 - 10 rotation_10 + [ - height * delta_10_26_1 ]
   <= -13
 vc2_10_26: - y_10 + y_26 - 14 rotation_26 + [ - height * delta_10_26_3 ]
   <= -18
 vc1_11_12: y_11 - y_12 - 11 rotation_11 + [ - height * delta_11_12_1 ]
   <= -14
 vc2_11_12: - y_11 + y_12 - 12 rotation_12 + [ - height * delta_11_12_3 ]
   <= -15
 vc1_11_13: y_11 - y_13 - 11 rotation_11 + [ - height * delta_11_13_1 ]
   <= -14
 vc2_11_13: - y_11 + y_13 - 15 rotation_13 + [ - height * delta_11_13_3 ]
   <= -18
 vc1_11_14: y_11 - y_14 - 11 rotation_11 + [ - height * delta_11_14_1 ]
   <= -14
 vc2_11_14: - y_11 + y_14 - 19 rotation_14 + [ - height * delta_11_14_3 ]
   <= -22
 vc1_11_15: y_11 - y_15 - 11 rotation_11 + [ - height * delta_11_15_1 ]
   <= -14
 vc2_11_15: - y_11 + y_15 - 20 rotation_15 + [ - height * delta_11_15_3 ]
   <= -23
 vc1_11_16: y_11 - y_16 - 11 rotation_11 + [ - height * delta_11_16_1 ]
   <= -14
 vc2_11_16: - y_11 + y_16 - 21 rotation_16 + [ - height * delta_11_16_3 ]
   <= -24
 vc1_11_17: y_11 - y_17 - 11 rotation_11 + [ - height * delta_11_17_1 ]
   <= -14
 vc2_11_17: - y_11 + y_17 - 22 rotation_17 + [ - height * delta_11_17_3 ]
   <= -25
 vc1_11_18: y_11 - y_18 - 11 rotation_11 + [ - height * delta_11_18_1 ]
   <= -14
 vc2_11_18: - y_11 + y_18 - 24 rotation_18 + [ - height * delta_11_18_3 ]
   <= -27
 vc1_11_19: y_11 - y_19 - 11 rotation_11 + [ - height * delta_11_19_1 ]
   <= -14
 vc2_11_19: - y_11 + y_19 + rotation_19 + [ - height * delta_11_19_3 ]
   <= -3
 vc1_11_20: y_11 - y_20 - 11 rotation_11 + [ - height * delta_11_20_1 ]
   <= -14
 vc2_11_20: - y_11 + y_20 + [ - height * delta_11_20_3 ] <= -4
 vc1_11_21: y_11 - y_21 - 11 rotation_11 + [ - height * delta_11_21_1 ]
   <= -14
 vc2_11_21: - y_11 + y_21 - rotation_21 + [ - height * delta_11_21_3 ]
   <= -5
 vc1_11_22: y_11 - y_22 - 11 rotation_11 + [ - height * delta_11_22_1 ]
   <= -14
 vc2_11_22: - y_11 + y_22 - 2 rotation_22 + [ - height * delta_11_22_3 ]
   <= -6
 vc1_11_23: y_11 - y_23 - 11 rotation_11 + [ - height * delta_11_23_1 ]
   <= -14
 vc2_11_23: - y_11 + y_23 - 3 rotation_23 + [ - height * delta_11_23_3 ]
   <= -7
 vc1_11_24: y_11 - y_24 - 11 rotation_11 + [ - height * delta_11_24_1 ]
   <= -14
 vc2_11_24: - y_11 + y_24 - 6 rotation_24 + [ - height * delta_11_24_3 ]
   <= -10
 vc1_11_25: y_11 - y_25 - 11 rotation_11 + [ - height * delta_11_25_1 ]
   <= -14
 vc2_11_25: - y_11 + y_25 - 7 rotation_25 + [ - height * delta_11_25_3 ]
   <= -11
 vc1_11_26: y_11 - y_26 - 11 rotation_11 + [ - height * delta_11_26_1 ]
   <= -14
 vc2_11_26: - y_11 + y_26 - 14 rotation_26 + [ - height * delta_11_26_3 ]
   <= -18
 vc1_12_13: y_12 - y_13 - 12 rotation_12 + [ - height * delta_12_13_1 ]
   <= -15
 vc2_12_13: - y_12 + y_13 - 15 rotation_13 + [ - height * delta_12_13_3 ]
   <= -18
 vc1_12_14: y_12 - y_14 - 12 rotation_12 + [ - height * delta_12_14_1 ]
   <= -15
 vc2_12_14: - y_12 + y_14 - 19 rotation_14 + [ - height * delta_12_14_3 ]
   <= -22
 vc1_12_15: y_12 - y_15 - 12 rotation_12 + [ - height * delta_12_15_1 ]
   <= -15
 vc2_12_15: - y_12 + y_15 - 20 rotation_15 + [ - height * delta_12_15_3 ]
   <= -23
 vc1_12_16: y_12 - y_16 - 12 rotation_12 + [ - height * delta_12_16_1 ]
   <= -15
 vc2_12_16: - y_12 + y_16 - 21 rotation_16 + [ - height * delta_12_16_3 ]
   <= -24
 vc1_12_17: y_12 - y_17 - 12 rotation_12 + [ - height * delta_12_17_1 ]
   <= -15
 vc2_12_17: - y_12 + y_17 - 22 rotation_17 + [ - height * delta_12_17_3 ]
   <= -25
 vc1_12_18: y_12 - y_18 - 12 rotation_12 + [ - height * delta_12_18_1 ]
   <= -15
 vc2_12_18: - y_12 + y_18 - 24 rotation_18 + [ - height * delta_12_18_3 ]
   <= -27
 vc1_12_19: y_12 - y_19 - 12 rotation_12 + [ - height * delta_12_19_1 ]
   <= -15
 vc2_12_19: - y_12 + y_19 + rotation_19 + [ - height * delta_12_19_3 ]
   <= -3
 vc1_12_20: y_12 - y_20 - 12 rotation_12 + [ - height * delta_12_20_1 ]
   <= -15
 vc2_12_20: - y_12 + y_20 + [ - height * delta_12_20_3 ] <= -4
 vc1_12_21: y_12 - y_21 - 12 rotation_12 + [ - height * delta_12_21_1 ]
   <= -15
 vc2_12_21: - y_12 + y_21 - rotation_21 + [ - height * delta_12_21_3 ]
   <= -5
 vc1_12_22: y_12 - y_22 - 12 rotation_12 + [ - height * delta_12_22_1 ]
   <= -15
 vc2_12_22: - y_12 + y_22 - 2 rotation_22 + [ - height * delta_12_22_3 ]
   <= -6
 vc1_12_23: y_12 - y_23 - 12 rotation_12 + [ - height * delta_12_23_1 ]
   <= -15
 vc2_12_23: - y_12 + y_23 - 3 rotation_23 + [ - height * delta_12_23_3 ]
   <= -7
 vc1_12_24: y_12 - y_24 - 12 rotation_12 + [ - height * delta_12_24_1 ]
   <= -15
 vc2_12_24: - y_12 + y_24 - 6 rotation_24 + [ - height * delta_12_24_3 ]
   <= -10
 vc1_12_25: y_12 - y_25 - 12 rotation_12 + [ - height * delta_12_25_1 ]
   <= -15
 vc2_12_25: - y_12 + y_25 - 7 rotation_25 + [ - height * delta_12_25_3 ]
   <= -11
 vc1_12_26: y_12 - y_26 - 12 rotation_12 + [ - height * delta_12_26_1 ]
   <= -15
 vc2_12_26: - y_12 + y_26 - 14 rotation_26 + [ - height * delta_12_26_3 ]
   <= -18
 vc1_13_14: y_13 - y_14 - 15 rotation_13 + [ - height * delta_13_14_1 ]
   <= -18
 vc2_13_14: - y_13 + y_14 - 19 rotation_14 + [ - height * delta_13_14_3 ]
   <= -22
 vc1_13_15: y_13 - y_15 - 15 rotation_13 + [ - height * delta_13_15_1 ]
   <= -18
 vc2_13_15: - y_13 + y_15 - 20 rotation_15 + [ - height * delta_13_15_3 ]
   <= -23
 vc1_13_16: y_13 - y_16 - 15 rotation_13 + [ - height * delta_13_16_1 ]
   <= -18
 vc2_13_16: - y_13 + y_16 - 21 rotation_16 + [ - height * delta_13_16_3 ]
   <= -24
 vc1_13_17: y_13 - y_17 - 15 rotation_13 + [ - height * delta_13_17_1 ]
   <= -18
 vc2_13_17: - y_13 + y_17 - 22 rotation_17 + [ - height * delta_13_17_3 ]
   <= -25
 vc1_13_18: y_13 - y_18 - 15 rotation_13 + [ - height * delta_13_18_1 ]
   <= -18
 vc2_13_18: - y_13 + y_18 - 24 rotation_18 + [ - height * delta_13_18_3 ]
   <= -27
 vc1_13_19: y_13 - y_19 - 15 rotation_13 + [ - height * delta_13_19_1 ]
   <= -18
 vc2_13_19: - y_13 + y_19 + rotation_19 + [ - height * delta_13_19_3 ]
   <= -3
 vc1_13_20: y_13 - y_20 - 15 rotation_13 + [ - height * delta_13_20_1 ]
   <= -18
 vc2_13_20: - y_13 + y_20 + [ - height * delta_13_20_3 ] <= -4
 vc1_13_21: y_13 - y_21 - 15 rotation_13 + [ - height * delta_13_21_1 ]
   <= -18
 vc2_13_21: - y_13 + y_21 - rotation_21 + [ - height * delta_13_21_3 ]
   <= -5
 vc1_13_22: y_13 - y_22 - 15 rotation_13 + [ - height * delta_13_22_1 ]
   <= -18
 vc2_13_22: - y_13 + y_22 - 2 rotation_22 + [ - height * delta_13_22_3 ]
   <= -6
 vc1_13_23: y_13 - y_23 - 15 rotation_13 + [ - height * delta_13_23_1 ]
   <= -18
 vc2_13_23: - y_13 + y_23 - 3 rotation_23 + [ - height * delta_13_23_3 ]
   <= -7
 vc1_13_24: y_13 - y_24 - 15 rotation_13 + [ - height * delta_13_24_1 ]
   <= -18
 vc2_13_24: - y_13 + y_24 - 6 rotation_24 + [ - height * delta_13_24_3 ]
   <= -10
 vc1_13_25: y_13 - y_25 - 15 rotation_13 + [ - height * delta_13_25_1 ]
   <= -18
 vc2_13_25: - y_13 + y_25 - 7 rotation_25 + [ - height * delta_13_25_3 ]
   <= -11
 vc1_13_26: y_13 - y_26 - 15 rotation_13 + [ - height * delta_13_26_1 ]
   <= -18
 vc2_13_26: - y_13 + y_26 - 14 rotation_26 + [ - height * delta_13_26_3 ]
   <= -18
 vc1_14_15: y_14 - y_15 - 19 rotation_14 + [ - height * delta_14_15_1 ]
   <= -22
 vc2_14_15: - y_14 + y_15 - 20 rotation_15 + [ - height * delta_14_15_3 ]
   <= -23
 vc1_14_16: y_14 - y_16 - 19 rotation_14 + [ - height * delta_14_16_1 ]
   <= -22
 vc2_14_16: - y_14 + y_16 - 21 rotation_16 + [ - height * delta_14_16_3 ]
   <= -24
 vc1_14_17: y_14 - y_17 - 19 rotation_14 + [ - height * delta_14_17_1 ]
   <= -22
 vc2_14_17: - y_14 + y_17 - 22 rotation_17 + [ - height * delta_14_17_3 ]
   <= -25
 vc1_14_18: y_14 - y_18 - 19 rotation_14 + [ - height * delta_14_18_1 ]
   <= -22
 vc2_14_18: - y_14 + y_18 - 24 rotation_18 + [ - height * delta_14_18_3 ]
   <= -27
 vc1_14_19: y_14 - y_19 - 19 rotation_14 + [ - height * delta_14_19_1 ]
   <= -22
 vc2_14_19: - y_14 + y_19 + rotation_19 + [ - height * delta_14_19_3 ]
   <= -3
 vc1_14_20: y_14 - y_20 - 19 rotation_14 + [ - height * delta_14_20_1 ]
   <= -22
 vc2_14_20: - y_14 + y_20 + [ - height * delta_14_20_3 ] <= -4
 vc1_14_21: y_14 - y_21 - 19 rotation_14 + [ - height * delta_14_21_1 ]
   <= -22
 vc2_14_21: - y_14 + y_21 - rotation_21 + [ - height * delta_14_21_3 ]
   <= -5
 vc1_14_22: y_14 - y_22 - 19 rotation_14 + [ - height * delta_14_22_1 ]
   <= -22
 vc2_14_22: - y_14 + y_22 - 2 rotation_22 + [ - height * delta_14_22_3 ]
   <= -6
 vc1_14_23: y_14 - y_23 - 19 rotation_14 + [ - height * delta_14_23_1 ]
   <= -22
 vc2_14_23: - y_14 + y_23 - 3 rotation_23 + [ - height * delta_14_23_3 ]
   <= -7
 vc1_14_24: y_14 - y_24 - 19 rotation_14 + [ - height * delta_14_24_1 ]
   <= -22
 vc2_14_24: - y_14 + y_24 - 6 rotation_24 + [ - height * delta_14_24_3 ]
   <= -10
 vc1_14_25: y_14 - y_25 - 19 rotation_14 + [ - height * delta_14_25_1 ]
   <= -22
 vc2_14_25: - y_14 + y_25 - 7 rotation_25 + [ - height * delta_14_25_3 ]
   <= -11
 vc1_14_26: y_14 - y_26 - 19 rotation_14 + [ - height * delta_14_26_1 ]
   <= -22
 vc2_14_26: - y_14 + y_26 - 14 rotation_26 + [ - height * delta_14_26_3 ]
   <= -18
 vc1_15_16: y_15 - y_16 - 20 rotation_15 + [ - height * delta_15_16_1 ]
   <= -23
 vc2_15_16: - y_15 + y_16 - 21 rotation_16 + [ - height * delta_15_16_3 ]
   <= -24
 vc1_15_17: y_15 - y_17 - 20 rotation_15 + [ - height * delta_15_17_1 ]
   <= -23
 vc2_15_17: - y_15 + y_17 - 22 rotation_17 + [ - height * delta_15_17_3 ]
   <= -25
 vc1_15_18: y_15 - y_18 - 20 rotation_15 + [ - height * delta_15_18_1 ]
   <= -23
 vc2_15_18: - y_15 + y_18 - 24 rotation_18 + [ - height * delta_15_18_3 ]
   <= -27
 vc1_15_19: y_15 - y_19 - 20 rotation_15 + [ - height * delta_15_19_1 ]
   <= -23
 vc2_15_19: - y_15 + y_19 + rotation_19 + [ - height * delta_15_19_3 ]
   <= -3
 vc1_15_20: y_15 - y_20 - 20 rotation_15 + [ - height * delta_15_20_1 ]
   <= -23
 vc2_15_20: - y_15 + y_20 + [ - height * delta_15_20_3 ] <= -4
 vc1_15_21: y_15 - y_21 - 20 rotation_15 + [ - height * delta_15_21_1 ]
   <= -23
 vc2_15_21: - y_15 + y_21 - rotation_21 + [ - height * delta_15_21_3 ]
   <= -5
 vc1_15_22: y_15 - y_22 - 20 rotation_15 + [ - height * delta_15_22_1 ]
   <= -23
 vc2_15_22: - y_15 + y_22 - 2 rotation_22 + [ - height * delta_15_22_3 ]
   <= -6
 vc1_15_23: y_15 - y_23 - 20 rotation_15 + [ - height * delta_15_23_1 ]
   <= -23
 vc2_15_23: - y_15 + y_23 - 3 rotation_23 + [ - height * delta_15_23_3 ]
   <= -7
 vc1_15_24: y_15 - y_24 - 20 rotation_15 + [ - height * delta_15_24_1 ]
   <= -23
 vc2_15_24: - y_15 + y_24 - 6 rotation_24 + [ - height * delta_15_24_3 ]
   <= -10
 vc1_15_25: y_15 - y_25 - 20 rotation_15 + [ - height * delta_15_25_1 ]
   <= -23
 vc2_15_25: - y_15 + y_25 - 7 rotation_25 + [ - height * delta_15_25_3 ]
   <= -11
 vc1_15_26: y_15 - y_26 - 20 rotation_15 + [ - height * delta_15_26_1 ]
   <= -23
 vc2_15_26: - y_15 + y_26 - 14 rotation_26 + [ - height * delta_15_26_3 ]
   <= -18
 vc1_16_17: y_16 - y_17 - 21 rotation_16 + [ - height * delta_16_17_1 ]
   <= -24
 vc2_16_17: - y_16 + y_17 - 22 rotation_17 + [ - height * delta_16_17_3 ]
   <= -25
 vc1_16_18: y_16 - y_18 - 21 rotation_16 + [ - height * delta_16_18_1 ]
   <= -24
 vc2_16_18: - y_16 + y_18 - 24 rotation_18 + [ - height * delta_16_18_3 ]
   <= -27
 vc1_16_19: y_16 - y_19 - 21 rotation_16 + [ - height * delta_16_19_1 ]
   <= -24
 vc2_16_19: - y_16 + y_19 + rotation_19 + [ - height * delta_16_19_3 ]
   <= -3
 vc1_16_20: y_16 - y_20 - 21 rotation_16 + [ - height * delta_16_20_1 ]
   <= -24
 vc2_16_20: - y_16 + y_20 + [ - height * delta_16_20_3 ] <= -4
 vc1_16_21: y_16 - y_21 - 21 rotation_16 + [ - height * delta_16_21_1 ]
   <= -24
 vc2_16_21: - y_16 + y_21 - rotation_21 + [ - height * delta_16_21_3 ]
   <= -5
 vc1_16_22: y_16 - y_22 - 21 rotation_16 + [ - height * delta_16_22_1 ]
   <= -24
 vc2_16_22: - y_16 + y_22 - 2 rotation_22 + [ - height * delta_16_22_3 ]
   <= -6
 vc1_16_23: y_16 - y_23 - 21 rotation_16 + [ - height * delta_16_23_1 ]
   <= -24
 vc2_16_23: - y_16 + y_23 - 3 rotation_23 + [ - height * delta_16_23_3 ]
   <= -7
 vc1_16_24: y_16 - y_24 - 21 rotation_16 + [ - height * delta_16_24_1 ]
   <= -24
 vc2_16_24: - y_16 + y_24 - 6 rotation_24 + [ - height * delta_16_24_3 ]
   <= -10
 vc1_16_25: y_16 - y_25 - 21 rotation_16 + [ - height * delta_16_25_1 ]
   <= -24
 vc2_16_25: - y_16 + y_25 - 7 rotation_25 + [ - height * delta_16_25_3 ]
   <= -11
 vc1_16_26: y_16 - y_26 - 21 rotation_16 + [ - height * delta_16_26_1 ]
   <= -24
 vc2_16_26: - y_16 + y_26 - 14 rotation_26 + [ - height * delta_16_26_3 ]
   <= -18
 vc1_17_18: y_17 - y_18 - 22 rotation_17 + [ - height * delta_17_18_1 ]
   <= -25
 vc2_17_18: - y_17 + y_18 - 24 rotation_18 + [ - height * delta_17_18_3 ]
   <= -27
 vc1_17_19: y_17 - y_19 - 22 rotation_17 + [ - height * delta_17_19_1 ]
   <= -25
 vc2_17_19: - y_17 + y_19 + rotation_19 + [ - height * delta_17_19_3 ]
   <= -3
 vc1_17_20: y_17 - y_20 - 22 rotation_17 + [ - height * delta_17_20_1 ]
   <= -25
 vc2_17_20: - y_17 + y_20 + [ - height * delta_17_20_3 ] <= -4
 vc1_17_21: y_17 - y_21 - 22 rotation_17 + [ - height * delta_17_21_1 ]
   <= -25
 vc2_17_21: - y_17 + y_21 - rotation_21 + [ - height * delta_17_21_3 ]
   <= -5
 vc1_17_22: y_17 - y_22 - 22 rotation_17 + [ - height * delta_17_22_1 ]
   <= -25
 vc2_17_22: - y_17 + y_22 - 2 rotation_22 + [ - height * delta_17_22_3 ]
   <= -6
 vc1_17_23: y_17 - y_23 - 22 rotation_17 + [ - height * delta_17_23_1 ]
   <= -25
 vc2_17_23: - y_17 + y_23 - 3 rotation_23 + [ - height * delta_17_23_3 ]
   <= -7
 vc1_17_24: y_17 - y_24 - 22 rotation_17 + [ - height * delta_17_24_1 ]
   <= -25
 vc2_17_24: - y_17 + y_24 - 6 rotation_24 + [ - height * delta_17_24_3 ]
   <= -10
 vc1_17_25: y_17 - y_25 - 22 rotation_17 + [ - height * delta_17_25_1 ]
   <= -25
 vc2_17_25: - y_17 + y_25 - 7 rotation_25 + [ - height * delta_17_25_3 ]
   <= -11
 vc1_17_26: y_17 - y_26 - 22 rotation_17 + [ - height * delta_17_26_1 ]
   <= -25
 vc2_17_26: - y_17 + y_26 - 14 rotation_26 + [ - height * delta_17_26_3 ]
   <= -18
 vc1_18_19: y_18 - y_19 - 24 rotation_18 + [ - height * delta_18_19_1 ]
   <= -27
 vc2_18_19: - y_18 + y_19 + rotation_19 + [ - height * delta_18_19_3 ]
   <= -3
 vc1_18_20: y_18 - y_20 - 24 rotation_18 + [ - height * delta_18_20_1 ]
   <= -27
 vc2_18_20: - y_18 + y_20 + [ - height * delta_18_20_3 ] <= -4
 vc1_18_21: y_18 - y_21 - 24 rotation_18 + [ - height * delta_18_21_1 ]
   <= -27
 vc2_18_21: - y_18 + y_21 - rotation_21 + [ - height * delta_18_21_3 ]
   <= -5
 vc1_18_22: y_18 - y_22 - 24 rotation_18 + [ - height * delta_18_22_1 ]
   <= -27
 vc2_18_22: - y_18 + y_22 - 2 rotation_22 + [ - height * delta_18_22_3 ]
   <= -6
 vc1_18_23: y_18 - y_23 - 24 rotation_18 + [ - height * delta_18_23_1 ]
   <= -27
 vc2_18_23: - y_18 + y_23 - 3 rotation_23 + [ - height * delta_18_23_3 ]
   <= -7
 vc1_18_24: y_18 - y_24 - 24 rotation_18 + [ - height * delta_18_24_1 ]
   <= -27
 vc2_18_24: - y_18 + y_24 - 6 rotation_24 + [ - height * delta_18_24_3 ]
   <= -10
 vc1_18_25: y_18 - y_25 - 24 rotation_18 + [ - height * delta_18_25_1 ]
   <= -27
 vc2_18_25: - y_18 + y_25 - 7 rotation_25 + [ - height * delta_18_25_3 ]
   <= -11
 vc1_18_26: y_18 - y_26 - 24 rotation_18 + [ - height * delta_18_26_1 ]
   <= -27
 vc2_18_26: - y_18 + y_26 - 14 rotation_26 + [ - height * delta_18_26_3 ]
   <= -18
 vc1_19_20: y_19 - y_20 + rotation_19 + [ - height * delta_19_20_1 ] <= -3
 vc2_19_20: - y_19 + y_20 + [ - height * delta_19_20_3 ] <= -4
 vc1_19_21: y_19 - y_21 + rotation_19 + [ - height * delta_19_21_1 ] <= -3
 vc2_19_21: - y_19 + y_21 - rotation_21 + [ - height * delta_19_21_3 ]
   <= -5
 vc1_19_22: y_19 - y_22 + rotation_19 + [ - height * delta_19_22_1 ] <= -3
 vc2_19_22: - y_19 + y_22 - 2 rotation_22 + [ - height * delta_19_22_3 ]
   <= -6
 vc1_19_23: y_19 - y_23 + rotation_19 + [ - height * delta_19_23_1 ] <= -3
 vc2_19_23: - y_19 + y_23 - 3 rotation_23 + [ - height * delta_19_23_3 ]
   <= -7
 vc1_19_24: y_19 - y_24 + rotation_19 + [ - height * delta_19_24_1 ] <= -3
 vc2_19_24: - y_19 + y_24 - 6 rotation_24 + [ - height * delta_19_24_3 ]
   <= -10
 vc1_19_25: y_19 - y_25 + rotation_19 + [ - height * delta_19_25_1 ] <= -3
 vc2_19_25: - y_19 + y_25 - 7 rotation_25 + [ - height * delta_19_25_3 ]
   <= -11
 vc1_19_26: y_19 - y_26 + rotation_19 + [ - height * delta_19_26_1 ] <= -3
 vc2_19_26: - y_19 + y_26 - 14 rotation_26 + [ - height * delta_19_26_3 ]
   <= -18
 vc1_20_21: y_20 - y_21 + [ - height * delta_20_21_1 ] <= -4
 vc2_20_21: - y_20 + y_21 - rotation_21 + [ - height * delta_20_21_3 ]
   <= -5
 vc1_20_22: y_20 - y_22 + [ - height * delta_20_22_1 ] <= -4
 vc2_20_22: - y_20 + y_22 - 2 rotation_22 + [ - height * delta_20_22_3 ]
   <= -6
 vc1_20_23: y_20 - y_23 + [ - height * delta_20_23_1 ] <= -4
 vc2_20_23: - y_20 + y_23 - 3 rotation_23 + [ - height * delta_20_23_3 ]
   <= -7
 vc1_20_24: y_20 - y_24 + [ - height * delta_20_24_1 ] <= -4
 vc2_20_24: - y_20 + y_24 - 6 rotation_24 + [ - height * delta_20_24_3 ]
   <= -10
 vc1_20_25: y_20 - y_25 + [ - height * delta_20_25_1 ] <= -4
 vc2_20_25: - y_20 + y_25 - 7 rotation_25 + [ - height * delta_20_25_3 ]
   <= -11
 vc1_20_26: y_20 - y_26 + [ - height * delta_20_26_1 ] <= -4
 vc2_20_26: - y_20 + y_26 - 14 rotation_26 + [ - height * delta_20_26_3 ]
   <= -18
 vc1_21_22: y_21 - y_22 - rotation_21 + [ - height * delta_21_22_1 ] <= -5
 vc2_21_22: - y_21 + y_22 - 2 rotation_22 + [ - height * delta_21_22_3 ]
   <= -6
 vc1_21_23: y_21 - y_23 - rotation_21 + [ - height * delta_21_23_1 ] <= -5
 vc2_21_23: - y_21 + y_23 - 3 rotation_23 + [ - height * delta_21_23_3 ]
   <= -7
 vc1_21_24: y_21 - y_24 - rotation_21 + [ - height * delta_21_24_1 ] <= -5
 vc2_21_24: - y_21 + y_24 - 6 rotation_24 + [ - height * delta_21_24_3 ]
   <= -10
 vc1_21_25: y_21 - y_25 - rotation_21 + [ - height * delta_21_25_1 ] <= -5
 vc2_21_25: - y_21 + y_25 - 7 rotation_25 + [ - height * delta_21_25_3 ]
   <= -11
 vc1_21_26: y_21 - y_26 - rotation_21 + [ - height * delta_21_26_1 ] <= -5
 vc2_21_26: - y_21 + y_26 - 14 rotation_26 + [ - height * delta_21_26_3 ]
   <= -18
 vc1_22_23: y_22 - y_23 - 2 rotation_22 + [ - height * delta_22_23_1 ]
   <= -6
 vc2_22_23: - y_22 + y_23 - 3 rotation_23 + [ - height * delta_22_23_3 ]
   <= -7
 vc1_22_24: y_22 - y_24 - 2 rotation_22 + [ - height * delta_22_24_1 ]
   <= -6
 vc2_22_24: - y_22 + y_24 - 6 rotation_24 + [ - height * delta_22_24_3 ]
   <= -10
 vc1_22_25: y_22 - y_25 - 2 rotation_22 + [ - height * delta_22_25_1 ]
   <= -6
 vc2_22_25: - y_22 + y_25 - 7 rotation_25 + [ - height * delta_22_25_3 ]
   <= -11
 vc1_22_26: y_22 - y_26 - 2 rotation_22 + [ - height * delta_22_26_1 ]
   <= -6
 vc2_22_26: - y_22 + y_26 - 14 rotation_26 + [ - height * delta_22_26_3 ]
   <= -18
 vc1_23_24: y_23 - y_24 - 3 rotation_23 + [ - height * delta_23_24_1 ]
   <= -7
 vc2_23_24: - y_23 + y_24 - 6 rotation_24 + [ - height * delta_23_24_3 ]
   <= -10
 vc1_23_25: y_23 - y_25 - 3 rotation_23 + [ - height * delta_23_25_1 ]
   <= -7
 vc2_23_25: - y_23 + y_25 - 7 rotation_25 + [ - height * delta_23_25_3 ]
   <= -11
 vc1_23_26: y_23 - y_26 - 3 rotation_23 + [ - height * delta_23_26_1 ]
   <= -7
 vc2_23_26: - y_23 + y_26 - 14 rotation_26 + [ - height * delta_23_26_3 ]
   <= -18
 vc1_24_25: y_24 - y_25 - 6 rotation_24 + [ - height * delta_24_25_1 ]
   <= -10
 vc2_24_25: - y_24 + y_25 - 7 rotation_25 + [ - height * delta_24_25_3 ]
   <= -11
 vc1_24_26: y_24 - y_26 - 6 rotation_24 + [ - height * delta_24_26_1 ]
   <= -10
 vc2_24_26: - y_24 + y_26 - 14 rotation_26 + [ - height * delta_24_26_3 ]
   <= -18
 vc1_25_26: y_25 - y_26 - 7 rotation_25 + [ - height * delta_25_26_1 ]
   <= -11
 vc2_25_26: - y_25 + y_26 - 14 rotation_26 + [ - height * delta_25_26_3 ]
   <= -18
Bounds
 x_0 <= 29
 y_0 <= 317
 x_1 <= 29
 y_1 <= 317
 x_2 <= 29
 y_2 <= 317
 x_3 <= 29
 y_3 <= 317
 x_4 <= 29
 y_4 <= 317
 x_5 <= 29
 y_5 <= 317
 x_6 <= 29
 y_6 <= 317
 x_7 <= 29
 y_7 <= 317
 x_8 <= 29
 y_8 <= 317
 x_9 <= 29
 y_9 <= 317
 x_10 <= 29
 y_10 <= 317
 x_11 <= 29
 y_11 <= 317
 x_12 <= 29
 y_12 <= 317
 x_13 <= 29
 y_13 <= 317
 x_14 <= 29
 y_14 <= 317
 x_15 <= 29
 y_15 <= 317
 x_16 <= 29
 y_16 <= 317
 x_17 <= 29
 y_17 <= 317
 x_18 <= 29
 y_18 <= 317
 x_19 <= 29
 y_19 <= 317
 x_20 <= 29
 y_20 <= 317
 x_21 <= 29
 y_21 <= 317
 x_22 <= 29
 y_22 <= 317
 x_23 <= 29
 y_23 <= 317
 x_24 <= 29
 y_24 <= 317
 x_25 <= 29
 y_25 <= 317
 x_26 <= 29
 y_26 <= 317
 32 <= height <= 320
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
 delta_0_21_3 delta_0_22_0 delta_0_22_1 delta_0_22_2 delta_0_22_3
 delta_0_23_0 delta_0_23_1 delta_0_23_2 delta_0_23_3 delta_0_24_0
 delta_0_24_1 delta_0_24_2 delta_0_24_3 delta_0_25_0 delta_0_25_1
 delta_0_25_2 delta_0_25_3 delta_0_26_0 delta_0_26_1 delta_0_26_2
 delta_0_26_3 delta_1_0_0 delta_1_0_1 delta_1_0_2 delta_1_0_3 delta_1_1_0
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
 delta_1_21_2 delta_1_21_3 delta_1_22_0 delta_1_22_1 delta_1_22_2
 delta_1_22_3 delta_1_23_0 delta_1_23_1 delta_1_23_2 delta_1_23_3
 delta_1_24_0 delta_1_24_1 delta_1_24_2 delta_1_24_3 delta_1_25_0
 delta_1_25_1 delta_1_25_2 delta_1_25_3 delta_1_26_0 delta_1_26_1
 delta_1_26_2 delta_1_26_3 delta_2_0_0 delta_2_0_1 delta_2_0_2 delta_2_0_3
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
 delta_2_21_1 delta_2_21_2 delta_2_21_3 delta_2_22_0 delta_2_22_1
 delta_2_22_2 delta_2_22_3 delta_2_23_0 delta_2_23_1 delta_2_23_2
 delta_2_23_3 delta_2_24_0 delta_2_24_1 delta_2_24_2 delta_2_24_3
 delta_2_25_0 delta_2_25_1 delta_2_25_2 delta_2_25_3 delta_2_26_0
 delta_2_26_1 delta_2_26_2 delta_2_26_3 delta_3_0_0 delta_3_0_1 delta_3_0_2
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
 delta_3_21_0 delta_3_21_1 delta_3_21_2 delta_3_21_3 delta_3_22_0
 delta_3_22_1 delta_3_22_2 delta_3_22_3 delta_3_23_0 delta_3_23_1
 delta_3_23_2 delta_3_23_3 delta_3_24_0 delta_3_24_1 delta_3_24_2
 delta_3_24_3 delta_3_25_0 delta_3_25_1 delta_3_25_2 delta_3_25_3
 delta_3_26_0 delta_3_26_1 delta_3_26_2 delta_3_26_3 delta_4_0_0
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
 delta_4_22_0 delta_4_22_1 delta_4_22_2 delta_4_22_3 delta_4_23_0
 delta_4_23_1 delta_4_23_2 delta_4_23_3 delta_4_24_0 delta_4_24_1
 delta_4_24_2 delta_4_24_3 delta_4_25_0 delta_4_25_1 delta_4_25_2
 delta_4_25_3 delta_4_26_0 delta_4_26_1 delta_4_26_2 delta_4_26_3
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
 delta_5_21_3 delta_5_22_0 delta_5_22_1 delta_5_22_2 delta_5_22_3
 delta_5_23_0 delta_5_23_1 delta_5_23_2 delta_5_23_3 delta_5_24_0
 delta_5_24_1 delta_5_24_2 delta_5_24_3 delta_5_25_0 delta_5_25_1
 delta_5_25_2 delta_5_25_3 delta_5_26_0 delta_5_26_1 delta_5_26_2
 delta_5_26_3 delta_6_0_0 delta_6_0_1 delta_6_0_2 delta_6_0_3 delta_6_1_0
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
 delta_6_21_2 delta_6_21_3 delta_6_22_0 delta_6_22_1 delta_6_22_2
 delta_6_22_3 delta_6_23_0 delta_6_23_1 delta_6_23_2 delta_6_23_3
 delta_6_24_0 delta_6_24_1 delta_6_24_2 delta_6_24_3 delta_6_25_0
 delta_6_25_1 delta_6_25_2 delta_6_25_3 delta_6_26_0 delta_6_26_1
 delta_6_26_2 delta_6_26_3 delta_7_0_0 delta_7_0_1 delta_7_0_2 delta_7_0_3
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
 delta_7_21_1 delta_7_21_2 delta_7_21_3 delta_7_22_0 delta_7_22_1
 delta_7_22_2 delta_7_22_3 delta_7_23_0 delta_7_23_1 delta_7_23_2
 delta_7_23_3 delta_7_24_0 delta_7_24_1 delta_7_24_2 delta_7_24_3
 delta_7_25_0 delta_7_25_1 delta_7_25_2 delta_7_25_3 delta_7_26_0
 delta_7_26_1 delta_7_26_2 delta_7_26_3 delta_8_0_0 delta_8_0_1 delta_8_0_2
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
 delta_8_21_0 delta_8_21_1 delta_8_21_2 delta_8_21_3 delta_8_22_0
 delta_8_22_1 delta_8_22_2 delta_8_22_3 delta_8_23_0 delta_8_23_1
 delta_8_23_2 delta_8_23_3 delta_8_24_0 delta_8_24_1 delta_8_24_2
 delta_8_24_3 delta_8_25_0 delta_8_25_1 delta_8_25_2 delta_8_25_3
 delta_8_26_0 delta_8_26_1 delta_8_26_2 delta_8_26_3 delta_9_0_0
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
 delta_9_22_0 delta_9_22_1 delta_9_22_2 delta_9_22_3 delta_9_23_0
 delta_9_23_1 delta_9_23_2 delta_9_23_3 delta_9_24_0 delta_9_24_1
 delta_9_24_2 delta_9_24_3 delta_9_25_0 delta_9_25_1 delta_9_25_2
 delta_9_25_3 delta_9_26_0 delta_9_26_1 delta_9_26_2 delta_9_26_3
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
 delta_10_21_1 delta_10_21_2 delta_10_21_3 delta_10_22_0 delta_10_22_1
 delta_10_22_2 delta_10_22_3 delta_10_23_0 delta_10_23_1 delta_10_23_2
 delta_10_23_3 delta_10_24_0 delta_10_24_1 delta_10_24_2 delta_10_24_3
 delta_10_25_0 delta_10_25_1 delta_10_25_2 delta_10_25_3 delta_10_26_0
 delta_10_26_1 delta_10_26_2 delta_10_26_3 delta_11_0_0 delta_11_0_1
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
 delta_11_21_3 delta_11_22_0 delta_11_22_1 delta_11_22_2 delta_11_22_3
 delta_11_23_0 delta_11_23_1 delta_11_23_2 delta_11_23_3 delta_11_24_0
 delta_11_24_1 delta_11_24_2 delta_11_24_3 delta_11_25_0 delta_11_25_1
 delta_11_25_2 delta_11_25_3 delta_11_26_0 delta_11_26_1 delta_11_26_2
 delta_11_26_3 delta_12_0_0 delta_12_0_1 delta_12_0_2 delta_12_0_3
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
 delta_12_21_0 delta_12_21_1 delta_12_21_2 delta_12_21_3 delta_12_22_0
 delta_12_22_1 delta_12_22_2 delta_12_22_3 delta_12_23_0 delta_12_23_1
 delta_12_23_2 delta_12_23_3 delta_12_24_0 delta_12_24_1 delta_12_24_2
 delta_12_24_3 delta_12_25_0 delta_12_25_1 delta_12_25_2 delta_12_25_3
 delta_12_26_0 delta_12_26_1 delta_12_26_2 delta_12_26_3 delta_13_0_0
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
 delta_13_21_2 delta_13_21_3 delta_13_22_0 delta_13_22_1 delta_13_22_2
 delta_13_22_3 delta_13_23_0 delta_13_23_1 delta_13_23_2 delta_13_23_3
 delta_13_24_0 delta_13_24_1 delta_13_24_2 delta_13_24_3 delta_13_25_0
 delta_13_25_1 delta_13_25_2 delta_13_25_3 delta_13_26_0 delta_13_26_1
 delta_13_26_2 delta_13_26_3 delta_14_0_0 delta_14_0_1 delta_14_0_2
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
 delta_14_22_0 delta_14_22_1 delta_14_22_2 delta_14_22_3 delta_14_23_0
 delta_14_23_1 delta_14_23_2 delta_14_23_3 delta_14_24_0 delta_14_24_1
 delta_14_24_2 delta_14_24_3 delta_14_25_0 delta_14_25_1 delta_14_25_2
 delta_14_25_3 delta_14_26_0 delta_14_26_1 delta_14_26_2 delta_14_26_3
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
 delta_15_21_1 delta_15_21_2 delta_15_21_3 delta_15_22_0 delta_15_22_1
 delta_15_22_2 delta_15_22_3 delta_15_23_0 delta_15_23_1 delta_15_23_2
 delta_15_23_3 delta_15_24_0 delta_15_24_1 delta_15_24_2 delta_15_24_3
 delta_15_25_0 delta_15_25_1 delta_15_25_2 delta_15_25_3 delta_15_26_0
 delta_15_26_1 delta_15_26_2 delta_15_26_3 delta_16_0_0 delta_16_0_1
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
 delta_16_21_3 delta_16_22_0 delta_16_22_1 delta_16_22_2 delta_16_22_3
 delta_16_23_0 delta_16_23_1 delta_16_23_2 delta_16_23_3 delta_16_24_0
 delta_16_24_1 delta_16_24_2 delta_16_24_3 delta_16_25_0 delta_16_25_1
 delta_16_25_2 delta_16_25_3 delta_16_26_0 delta_16_26_1 delta_16_26_2
 delta_16_26_3 delta_17_0_0 delta_17_0_1 delta_17_0_2 delta_17_0_3
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
 delta_17_21_0 delta_17_21_1 delta_17_21_2 delta_17_21_3 delta_17_22_0
 delta_17_22_1 delta_17_22_2 delta_17_22_3 delta_17_23_0 delta_17_23_1
 delta_17_23_2 delta_17_23_3 delta_17_24_0 delta_17_24_1 delta_17_24_2
 delta_17_24_3 delta_17_25_0 delta_17_25_1 delta_17_25_2 delta_17_25_3
 delta_17_26_0 delta_17_26_1 delta_17_26_2 delta_17_26_3 delta_18_0_0
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
 delta_18_21_2 delta_18_21_3 delta_18_22_0 delta_18_22_1 delta_18_22_2
 delta_18_22_3 delta_18_23_0 delta_18_23_1 delta_18_23_2 delta_18_23_3
 delta_18_24_0 delta_18_24_1 delta_18_24_2 delta_18_24_3 delta_18_25_0
 delta_18_25_1 delta_18_25_2 delta_18_25_3 delta_18_26_0 delta_18_26_1
 delta_18_26_2 delta_18_26_3 delta_19_0_0 delta_19_0_1 delta_19_0_2
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
 delta_19_22_0 delta_19_22_1 delta_19_22_2 delta_19_22_3 delta_19_23_0
 delta_19_23_1 delta_19_23_2 delta_19_23_3 delta_19_24_0 delta_19_24_1
 delta_19_24_2 delta_19_24_3 delta_19_25_0 delta_19_25_1 delta_19_25_2
 delta_19_25_3 delta_19_26_0 delta_19_26_1 delta_19_26_2 delta_19_26_3
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
 delta_20_21_1 delta_20_21_2 delta_20_21_3 delta_20_22_0 delta_20_22_1
 delta_20_22_2 delta_20_22_3 delta_20_23_0 delta_20_23_1 delta_20_23_2
 delta_20_23_3 delta_20_24_0 delta_20_24_1 delta_20_24_2 delta_20_24_3
 delta_20_25_0 delta_20_25_1 delta_20_25_2 delta_20_25_3 delta_20_26_0
 delta_20_26_1 delta_20_26_2 delta_20_26_3 delta_21_0_0 delta_21_0_1
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
 delta_21_21_3 delta_21_22_0 delta_21_22_1 delta_21_22_2 delta_21_22_3
 delta_21_23_0 delta_21_23_1 delta_21_23_2 delta_21_23_3 delta_21_24_0
 delta_21_24_1 delta_21_24_2 delta_21_24_3 delta_21_25_0 delta_21_25_1
 delta_21_25_2 delta_21_25_3 delta_21_26_0 delta_21_26_1 delta_21_26_2
 delta_21_26_3 delta_22_0_0 delta_22_0_1 delta_22_0_2 delta_22_0_3
 delta_22_1_0 delta_22_1_1 delta_22_1_2 delta_22_1_3 delta_22_2_0
 delta_22_2_1 delta_22_2_2 delta_22_2_3 delta_22_3_0 delta_22_3_1
 delta_22_3_2 delta_22_3_3 delta_22_4_0 delta_22_4_1 delta_22_4_2
 delta_22_4_3 delta_22_5_0 delta_22_5_1 delta_22_5_2 delta_22_5_3
 delta_22_6_0 delta_22_6_1 delta_22_6_2 delta_22_6_3 delta_22_7_0
 delta_22_7_1 delta_22_7_2 delta_22_7_3 delta_22_8_0 delta_22_8_1
 delta_22_8_2 delta_22_8_3 delta_22_9_0 delta_22_9_1 delta_22_9_2
 delta_22_9_3 delta_22_10_0 delta_22_10_1 delta_22_10_2 delta_22_10_3
 delta_22_11_0 delta_22_11_1 delta_22_11_2 delta_22_11_3 delta_22_12_0
 delta_22_12_1 delta_22_12_2 delta_22_12_3 delta_22_13_0 delta_22_13_1
 delta_22_13_2 delta_22_13_3 delta_22_14_0 delta_22_14_1 delta_22_14_2
 delta_22_14_3 delta_22_15_0 delta_22_15_1 delta_22_15_2 delta_22_15_3
 delta_22_16_0 delta_22_16_1 delta_22_16_2 delta_22_16_3 delta_22_17_0
 delta_22_17_1 delta_22_17_2 delta_22_17_3 delta_22_18_0 delta_22_18_1
 delta_22_18_2 delta_22_18_3 delta_22_19_0 delta_22_19_1 delta_22_19_2
 delta_22_19_3 delta_22_20_0 delta_22_20_1 delta_22_20_2 delta_22_20_3
 delta_22_21_0 delta_22_21_1 delta_22_21_2 delta_22_21_3 delta_22_22_0
 delta_22_22_1 delta_22_22_2 delta_22_22_3 delta_22_23_0 delta_22_23_1
 delta_22_23_2 delta_22_23_3 delta_22_24_0 delta_22_24_1 delta_22_24_2
 delta_22_24_3 delta_22_25_0 delta_22_25_1 delta_22_25_2 delta_22_25_3
 delta_22_26_0 delta_22_26_1 delta_22_26_2 delta_22_26_3 delta_23_0_0
 delta_23_0_1 delta_23_0_2 delta_23_0_3 delta_23_1_0 delta_23_1_1
 delta_23_1_2 delta_23_1_3 delta_23_2_0 delta_23_2_1 delta_23_2_2
 delta_23_2_3 delta_23_3_0 delta_23_3_1 delta_23_3_2 delta_23_3_3
 delta_23_4_0 delta_23_4_1 delta_23_4_2 delta_23_4_3 delta_23_5_0
 delta_23_5_1 delta_23_5_2 delta_23_5_3 delta_23_6_0 delta_23_6_1
 delta_23_6_2 delta_23_6_3 delta_23_7_0 delta_23_7_1 delta_23_7_2
 delta_23_7_3 delta_23_8_0 delta_23_8_1 delta_23_8_2 delta_23_8_3
 delta_23_9_0 delta_23_9_1 delta_23_9_2 delta_23_9_3 delta_23_10_0
 delta_23_10_1 delta_23_10_2 delta_23_10_3 delta_23_11_0 delta_23_11_1
 delta_23_11_2 delta_23_11_3 delta_23_12_0 delta_23_12_1 delta_23_12_2
 delta_23_12_3 delta_23_13_0 delta_23_13_1 delta_23_13_2 delta_23_13_3
 delta_23_14_0 delta_23_14_1 delta_23_14_2 delta_23_14_3 delta_23_15_0
 delta_23_15_1 delta_23_15_2 delta_23_15_3 delta_23_16_0 delta_23_16_1
 delta_23_16_2 delta_23_16_3 delta_23_17_0 delta_23_17_1 delta_23_17_2
 delta_23_17_3 delta_23_18_0 delta_23_18_1 delta_23_18_2 delta_23_18_3
 delta_23_19_0 delta_23_19_1 delta_23_19_2 delta_23_19_3 delta_23_20_0
 delta_23_20_1 delta_23_20_2 delta_23_20_3 delta_23_21_0 delta_23_21_1
 delta_23_21_2 delta_23_21_3 delta_23_22_0 delta_23_22_1 delta_23_22_2
 delta_23_22_3 delta_23_23_0 delta_23_23_1 delta_23_23_2 delta_23_23_3
 delta_23_24_0 delta_23_24_1 delta_23_24_2 delta_23_24_3 delta_23_25_0
 delta_23_25_1 delta_23_25_2 delta_23_25_3 delta_23_26_0 delta_23_26_1
 delta_23_26_2 delta_23_26_3 delta_24_0_0 delta_24_0_1 delta_24_0_2
 delta_24_0_3 delta_24_1_0 delta_24_1_1 delta_24_1_2 delta_24_1_3
 delta_24_2_0 delta_24_2_1 delta_24_2_2 delta_24_2_3 delta_24_3_0
 delta_24_3_1 delta_24_3_2 delta_24_3_3 delta_24_4_0 delta_24_4_1
 delta_24_4_2 delta_24_4_3 delta_24_5_0 delta_24_5_1 delta_24_5_2
 delta_24_5_3 delta_24_6_0 delta_24_6_1 delta_24_6_2 delta_24_6_3
 delta_24_7_0 delta_24_7_1 delta_24_7_2 delta_24_7_3 delta_24_8_0
 delta_24_8_1 delta_24_8_2 delta_24_8_3 delta_24_9_0 delta_24_9_1
 delta_24_9_2 delta_24_9_3 delta_24_10_0 delta_24_10_1 delta_24_10_2
 delta_24_10_3 delta_24_11_0 delta_24_11_1 delta_24_11_2 delta_24_11_3
 delta_24_12_0 delta_24_12_1 delta_24_12_2 delta_24_12_3 delta_24_13_0
 delta_24_13_1 delta_24_13_2 delta_24_13_3 delta_24_14_0 delta_24_14_1
 delta_24_14_2 delta_24_14_3 delta_24_15_0 delta_24_15_1 delta_24_15_2
 delta_24_15_3 delta_24_16_0 delta_24_16_1 delta_24_16_2 delta_24_16_3
 delta_24_17_0 delta_24_17_1 delta_24_17_2 delta_24_17_3 delta_24_18_0
 delta_24_18_1 delta_24_18_2 delta_24_18_3 delta_24_19_0 delta_24_19_1
 delta_24_19_2 delta_24_19_3 delta_24_20_0 delta_24_20_1 delta_24_20_2
 delta_24_20_3 delta_24_21_0 delta_24_21_1 delta_24_21_2 delta_24_21_3
 delta_24_22_0 delta_24_22_1 delta_24_22_2 delta_24_22_3 delta_24_23_0
 delta_24_23_1 delta_24_23_2 delta_24_23_3 delta_24_24_0 delta_24_24_1
 delta_24_24_2 delta_24_24_3 delta_24_25_0 delta_24_25_1 delta_24_25_2
 delta_24_25_3 delta_24_26_0 delta_24_26_1 delta_24_26_2 delta_24_26_3
 delta_25_0_0 delta_25_0_1 delta_25_0_2 delta_25_0_3 delta_25_1_0
 delta_25_1_1 delta_25_1_2 delta_25_1_3 delta_25_2_0 delta_25_2_1
 delta_25_2_2 delta_25_2_3 delta_25_3_0 delta_25_3_1 delta_25_3_2
 delta_25_3_3 delta_25_4_0 delta_25_4_1 delta_25_4_2 delta_25_4_3
 delta_25_5_0 delta_25_5_1 delta_25_5_2 delta_25_5_3 delta_25_6_0
 delta_25_6_1 delta_25_6_2 delta_25_6_3 delta_25_7_0 delta_25_7_1
 delta_25_7_2 delta_25_7_3 delta_25_8_0 delta_25_8_1 delta_25_8_2
 delta_25_8_3 delta_25_9_0 delta_25_9_1 delta_25_9_2 delta_25_9_3
 delta_25_10_0 delta_25_10_1 delta_25_10_2 delta_25_10_3 delta_25_11_0
 delta_25_11_1 delta_25_11_2 delta_25_11_3 delta_25_12_0 delta_25_12_1
 delta_25_12_2 delta_25_12_3 delta_25_13_0 delta_25_13_1 delta_25_13_2
 delta_25_13_3 delta_25_14_0 delta_25_14_1 delta_25_14_2 delta_25_14_3
 delta_25_15_0 delta_25_15_1 delta_25_15_2 delta_25_15_3 delta_25_16_0
 delta_25_16_1 delta_25_16_2 delta_25_16_3 delta_25_17_0 delta_25_17_1
 delta_25_17_2 delta_25_17_3 delta_25_18_0 delta_25_18_1 delta_25_18_2
 delta_25_18_3 delta_25_19_0 delta_25_19_1 delta_25_19_2 delta_25_19_3
 delta_25_20_0 delta_25_20_1 delta_25_20_2 delta_25_20_3 delta_25_21_0
 delta_25_21_1 delta_25_21_2 delta_25_21_3 delta_25_22_0 delta_25_22_1
 delta_25_22_2 delta_25_22_3 delta_25_23_0 delta_25_23_1 delta_25_23_2
 delta_25_23_3 delta_25_24_0 delta_25_24_1 delta_25_24_2 delta_25_24_3
 delta_25_25_0 delta_25_25_1 delta_25_25_2 delta_25_25_3 delta_25_26_0
 delta_25_26_1 delta_25_26_2 delta_25_26_3 delta_26_0_0 delta_26_0_1
 delta_26_0_2 delta_26_0_3 delta_26_1_0 delta_26_1_1 delta_26_1_2
 delta_26_1_3 delta_26_2_0 delta_26_2_1 delta_26_2_2 delta_26_2_3
 delta_26_3_0 delta_26_3_1 delta_26_3_2 delta_26_3_3 delta_26_4_0
 delta_26_4_1 delta_26_4_2 delta_26_4_3 delta_26_5_0 delta_26_5_1
 delta_26_5_2 delta_26_5_3 delta_26_6_0 delta_26_6_1 delta_26_6_2
 delta_26_6_3 delta_26_7_0 delta_26_7_1 delta_26_7_2 delta_26_7_3
 delta_26_8_0 delta_26_8_1 delta_26_8_2 delta_26_8_3 delta_26_9_0
 delta_26_9_1 delta_26_9_2 delta_26_9_3 delta_26_10_0 delta_26_10_1
 delta_26_10_2 delta_26_10_3 delta_26_11_0 delta_26_11_1 delta_26_11_2
 delta_26_11_3 delta_26_12_0 delta_26_12_1 delta_26_12_2 delta_26_12_3
 delta_26_13_0 delta_26_13_1 delta_26_13_2 delta_26_13_3 delta_26_14_0
 delta_26_14_1 delta_26_14_2 delta_26_14_3 delta_26_15_0 delta_26_15_1
 delta_26_15_2 delta_26_15_3 delta_26_16_0 delta_26_16_1 delta_26_16_2
 delta_26_16_3 delta_26_17_0 delta_26_17_1 delta_26_17_2 delta_26_17_3
 delta_26_18_0 delta_26_18_1 delta_26_18_2 delta_26_18_3 delta_26_19_0
 delta_26_19_1 delta_26_19_2 delta_26_19_3 delta_26_20_0 delta_26_20_1
 delta_26_20_2 delta_26_20_3 delta_26_21_0 delta_26_21_1 delta_26_21_2
 delta_26_21_3 delta_26_22_0 delta_26_22_1 delta_26_22_2 delta_26_22_3
 delta_26_23_0 delta_26_23_1 delta_26_23_2 delta_26_23_3 delta_26_24_0
 delta_26_24_1 delta_26_24_2 delta_26_24_3 delta_26_25_0 delta_26_25_1
 delta_26_25_2 delta_26_25_3 delta_26_26_0 delta_26_26_1 delta_26_26_2
 delta_26_26_3 rotation_0 rotation_1 rotation_2 rotation_3 rotation_4
 rotation_5 rotation_6 rotation_7 rotation_8 rotation_9 rotation_10
 rotation_11 rotation_12 rotation_13 rotation_14 rotation_15 rotation_16
 rotation_17 rotation_18 rotation_19 rotation_20 rotation_21 rotation_22
 rotation_23 rotation_24 rotation_25 rotation_26
Generals
 x_0 y_0 x_1 y_1 x_2 y_2 x_3 y_3 x_4 y_4 x_5 y_5 x_6 y_6 x_7 y_7 x_8 y_8
 x_9 y_9 x_10 y_10 x_11 y_11 x_12 y_12 x_13 y_13 x_14 y_14 x_15 y_15 x_16
 y_16 x_17 y_17 x_18 y_18 x_19 y_19 x_20 y_20 x_21 y_21 x_22 y_22 x_23 y_23
 x_24 y_24 x_25 y_25 x_26 y_26 height
End
