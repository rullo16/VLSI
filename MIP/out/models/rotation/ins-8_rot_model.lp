\ Model VLSI_Design_rot
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  height
Subject To
 square_block_0: rotation_0 = 0
 symmetry_break_x: x_8 = 0
 symmetry_break_y: y_8 = 0
 area_low: 15 height >= 225
 area_up: 15 height <= 1080
 w_overflow_0: x_0 <= 12
 h_overflow_0: y_0 - height <= -3
 w_overflow_1: x_1 + rotation_1 <= 12
 h_overflow_1: y_1 - height - rotation_1 <= -4
 w_overflow_2: x_2 + 2 rotation_2 <= 12
 h_overflow_2: y_2 - height - 2 rotation_2 <= -5
 w_overflow_3: x_3 + 3 rotation_3 <= 12
 h_overflow_3: y_3 - height - 3 rotation_3 <= -6
 w_overflow_4: x_4 + 4 rotation_4 <= 12
 h_overflow_4: y_4 - height - 4 rotation_4 <= -7
 w_overflow_5: x_5 + 5 rotation_5 <= 12
 h_overflow_5: y_5 - height - 5 rotation_5 <= -8
 w_overflow_6: x_6 + 6 rotation_6 <= 12
 h_overflow_6: y_6 - height - 6 rotation_6 <= -9
 w_overflow_7: x_7 + 9 rotation_7 <= 12
 h_overflow_7: y_7 - height - 9 rotation_7 <= -12
 w_overflow_8: x_8 + 12 rotation_8 <= 12
 h_overflow_8: y_8 - height - 12 rotation_8 <= -15
 w_overflow_9: x_9 - 3 rotation_9 <= 9
 h_overflow_9: y_9 - height + 3 rotation_9 <= -3
 hc1_0_1: x_0 - x_1 - 15 delta_0_1_0 <= -3
 hc2_0_1: - x_0 + x_1 - 15 delta_0_1_2 + rotation_1 <= -3
 hc1_0_2: x_0 - x_2 - 15 delta_0_2_0 <= -3
 hc2_0_2: - x_0 + x_2 - 15 delta_0_2_2 + 2 rotation_2 <= -3
 hc1_0_3: x_0 - x_3 - 15 delta_0_3_0 <= -3
 hc2_0_3: - x_0 + x_3 - 15 delta_0_3_2 + 3 rotation_3 <= -3
 hc1_0_4: x_0 - x_4 - 15 delta_0_4_0 <= -3
 hc2_0_4: - x_0 + x_4 - 15 delta_0_4_2 + 4 rotation_4 <= -3
 hc1_0_5: x_0 - x_5 - 15 delta_0_5_0 <= -3
 hc2_0_5: - x_0 + x_5 - 15 delta_0_5_2 + 5 rotation_5 <= -3
 hc1_0_6: x_0 - x_6 - 15 delta_0_6_0 <= -3
 hc2_0_6: - x_0 + x_6 - 15 delta_0_6_2 + 6 rotation_6 <= -3
 hc1_0_7: x_0 - x_7 - 15 delta_0_7_0 <= -3
 hc2_0_7: - x_0 + x_7 - 15 delta_0_7_2 + 9 rotation_7 <= -3
 hc1_0_8: x_0 - x_8 - 15 delta_0_8_0 <= -3
 hc2_0_8: - x_0 + x_8 - 15 delta_0_8_2 + 12 rotation_8 <= -3
 hc1_0_9: x_0 - x_9 - 15 delta_0_9_0 <= -3
 hc2_0_9: - x_0 + x_9 - 15 delta_0_9_2 - 3 rotation_9 <= -6
 hc1_1_2: x_1 - x_2 - 15 delta_1_2_0 + rotation_1 <= -3
 hc2_1_2: - x_1 + x_2 - 15 delta_1_2_2 + 2 rotation_2 <= -3
 hc1_1_3: x_1 - x_3 - 15 delta_1_3_0 + rotation_1 <= -3
 hc2_1_3: - x_1 + x_3 - 15 delta_1_3_2 + 3 rotation_3 <= -3
 hc1_1_4: x_1 - x_4 - 15 delta_1_4_0 + rotation_1 <= -3
 hc2_1_4: - x_1 + x_4 - 15 delta_1_4_2 + 4 rotation_4 <= -3
 hc1_1_5: x_1 - x_5 - 15 delta_1_5_0 + rotation_1 <= -3
 hc2_1_5: - x_1 + x_5 - 15 delta_1_5_2 + 5 rotation_5 <= -3
 hc1_1_6: x_1 - x_6 - 15 delta_1_6_0 + rotation_1 <= -3
 hc2_1_6: - x_1 + x_6 - 15 delta_1_6_2 + 6 rotation_6 <= -3
 hc1_1_7: x_1 - x_7 - 15 delta_1_7_0 + rotation_1 <= -3
 hc2_1_7: - x_1 + x_7 - 15 delta_1_7_2 + 9 rotation_7 <= -3
 hc1_1_8: x_1 - x_8 - 15 delta_1_8_0 + rotation_1 <= -3
 hc2_1_8: - x_1 + x_8 - 15 delta_1_8_2 + 12 rotation_8 <= -3
 hc1_1_9: x_1 - x_9 - 15 delta_1_9_0 + rotation_1 <= -3
 hc2_1_9: - x_1 + x_9 - 15 delta_1_9_2 - 3 rotation_9 <= -6
 hc1_2_3: x_2 - x_3 - 15 delta_2_3_0 + 2 rotation_2 <= -3
 hc2_2_3: - x_2 + x_3 - 15 delta_2_3_2 + 3 rotation_3 <= -3
 hc1_2_4: x_2 - x_4 - 15 delta_2_4_0 + 2 rotation_2 <= -3
 hc2_2_4: - x_2 + x_4 - 15 delta_2_4_2 + 4 rotation_4 <= -3
 hc1_2_5: x_2 - x_5 - 15 delta_2_5_0 + 2 rotation_2 <= -3
 hc2_2_5: - x_2 + x_5 - 15 delta_2_5_2 + 5 rotation_5 <= -3
 hc1_2_6: x_2 - x_6 - 15 delta_2_6_0 + 2 rotation_2 <= -3
 hc2_2_6: - x_2 + x_6 - 15 delta_2_6_2 + 6 rotation_6 <= -3
 hc1_2_7: x_2 - x_7 - 15 delta_2_7_0 + 2 rotation_2 <= -3
 hc2_2_7: - x_2 + x_7 - 15 delta_2_7_2 + 9 rotation_7 <= -3
 hc1_2_8: x_2 - x_8 - 15 delta_2_8_0 + 2 rotation_2 <= -3
 hc2_2_8: - x_2 + x_8 - 15 delta_2_8_2 + 12 rotation_8 <= -3
 hc1_2_9: x_2 - x_9 - 15 delta_2_9_0 + 2 rotation_2 <= -3
 hc2_2_9: - x_2 + x_9 - 15 delta_2_9_2 - 3 rotation_9 <= -6
 hc1_3_4: x_3 - x_4 - 15 delta_3_4_0 + 3 rotation_3 <= -3
 hc2_3_4: - x_3 + x_4 - 15 delta_3_4_2 + 4 rotation_4 <= -3
 hc1_3_5: x_3 - x_5 - 15 delta_3_5_0 + 3 rotation_3 <= -3
 hc2_3_5: - x_3 + x_5 - 15 delta_3_5_2 + 5 rotation_5 <= -3
 hc1_3_6: x_3 - x_6 - 15 delta_3_6_0 + 3 rotation_3 <= -3
 hc2_3_6: - x_3 + x_6 - 15 delta_3_6_2 + 6 rotation_6 <= -3
 hc1_3_7: x_3 - x_7 - 15 delta_3_7_0 + 3 rotation_3 <= -3
 hc2_3_7: - x_3 + x_7 - 15 delta_3_7_2 + 9 rotation_7 <= -3
 hc1_3_8: x_3 - x_8 - 15 delta_3_8_0 + 3 rotation_3 <= -3
 hc2_3_8: - x_3 + x_8 - 15 delta_3_8_2 + 12 rotation_8 <= -3
 hc1_3_9: x_3 - x_9 - 15 delta_3_9_0 + 3 rotation_3 <= -3
 hc2_3_9: - x_3 + x_9 - 15 delta_3_9_2 - 3 rotation_9 <= -6
 hc1_4_5: x_4 - x_5 - 15 delta_4_5_0 + 4 rotation_4 <= -3
 hc2_4_5: - x_4 + x_5 - 15 delta_4_5_2 + 5 rotation_5 <= -3
 hc1_4_6: x_4 - x_6 - 15 delta_4_6_0 + 4 rotation_4 <= -3
 hc2_4_6: - x_4 + x_6 - 15 delta_4_6_2 + 6 rotation_6 <= -3
 hc1_4_7: x_4 - x_7 - 15 delta_4_7_0 + 4 rotation_4 <= -3
 hc2_4_7: - x_4 + x_7 - 15 delta_4_7_2 + 9 rotation_7 <= -3
 hc1_4_8: x_4 - x_8 - 15 delta_4_8_0 + 4 rotation_4 <= -3
 hc2_4_8: - x_4 + x_8 - 15 delta_4_8_2 + 12 rotation_8 <= -3
 hc1_4_9: x_4 - x_9 - 15 delta_4_9_0 + 4 rotation_4 <= -3
 hc2_4_9: - x_4 + x_9 - 15 delta_4_9_2 - 3 rotation_9 <= -6
 hc1_5_6: x_5 - x_6 - 15 delta_5_6_0 + 5 rotation_5 <= -3
 hc2_5_6: - x_5 + x_6 - 15 delta_5_6_2 + 6 rotation_6 <= -3
 hc1_5_7: x_5 - x_7 - 15 delta_5_7_0 + 5 rotation_5 <= -3
 hc2_5_7: - x_5 + x_7 - 15 delta_5_7_2 + 9 rotation_7 <= -3
 hc1_5_8: x_5 - x_8 - 15 delta_5_8_0 + 5 rotation_5 <= -3
 hc2_5_8: - x_5 + x_8 - 15 delta_5_8_2 + 12 rotation_8 <= -3
 hc1_5_9: x_5 - x_9 - 15 delta_5_9_0 + 5 rotation_5 <= -3
 hc2_5_9: - x_5 + x_9 - 15 delta_5_9_2 - 3 rotation_9 <= -6
 hc1_6_7: x_6 - x_7 - 15 delta_6_7_0 + 6 rotation_6 <= -3
 hc2_6_7: - x_6 + x_7 - 15 delta_6_7_2 + 9 rotation_7 <= -3
 hc1_6_8: x_6 - x_8 - 15 delta_6_8_0 + 6 rotation_6 <= -3
 hc2_6_8: - x_6 + x_8 - 15 delta_6_8_2 + 12 rotation_8 <= -3
 hc1_6_9: x_6 - x_9 - 15 delta_6_9_0 + 6 rotation_6 <= -3
 hc2_6_9: - x_6 + x_9 - 15 delta_6_9_2 - 3 rotation_9 <= -6
 hc1_7_8: x_7 - x_8 - 15 delta_7_8_0 + 9 rotation_7 <= -3
 hc2_7_8: - x_7 + x_8 - 15 delta_7_8_2 + 12 rotation_8 <= -3
 hc1_7_9: x_7 - x_9 - 15 delta_7_9_0 + 9 rotation_7 <= -3
 hc2_7_9: - x_7 + x_9 - 15 delta_7_9_2 - 3 rotation_9 <= -6
 hc1_8_9: x_8 - x_9 - 15 delta_8_9_0 + 12 rotation_8 <= -3
 hc2_8_9: - x_8 + x_9 - 15 delta_8_9_2 - 3 rotation_9 <= -6
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
 vc2_0_7: - y_0 + y_7 - 9 rotation_7 + [ - height * delta_0_7_3 ] <= -12
 vc1_0_8: y_0 - y_8 + [ - height * delta_0_8_1 ] <= -3
 vc2_0_8: - y_0 + y_8 - 12 rotation_8 + [ - height * delta_0_8_3 ] <= -15
 vc1_0_9: y_0 - y_9 + [ - height * delta_0_9_1 ] <= -3
 vc2_0_9: - y_0 + y_9 + 3 rotation_9 + [ - height * delta_0_9_3 ] <= -3
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
 vc2_1_7: - y_1 + y_7 - 9 rotation_7 + [ - height * delta_1_7_3 ] <= -12
 vc1_1_8: y_1 - y_8 - rotation_1 + [ - height * delta_1_8_1 ] <= -4
 vc2_1_8: - y_1 + y_8 - 12 rotation_8 + [ - height * delta_1_8_3 ] <= -15
 vc1_1_9: y_1 - y_9 - rotation_1 + [ - height * delta_1_9_1 ] <= -4
 vc2_1_9: - y_1 + y_9 + 3 rotation_9 + [ - height * delta_1_9_3 ] <= -3
 vc1_2_3: y_2 - y_3 - 2 rotation_2 + [ - height * delta_2_3_1 ] <= -5
 vc2_2_3: - y_2 + y_3 - 3 rotation_3 + [ - height * delta_2_3_3 ] <= -6
 vc1_2_4: y_2 - y_4 - 2 rotation_2 + [ - height * delta_2_4_1 ] <= -5
 vc2_2_4: - y_2 + y_4 - 4 rotation_4 + [ - height * delta_2_4_3 ] <= -7
 vc1_2_5: y_2 - y_5 - 2 rotation_2 + [ - height * delta_2_5_1 ] <= -5
 vc2_2_5: - y_2 + y_5 - 5 rotation_5 + [ - height * delta_2_5_3 ] <= -8
 vc1_2_6: y_2 - y_6 - 2 rotation_2 + [ - height * delta_2_6_1 ] <= -5
 vc2_2_6: - y_2 + y_6 - 6 rotation_6 + [ - height * delta_2_6_3 ] <= -9
 vc1_2_7: y_2 - y_7 - 2 rotation_2 + [ - height * delta_2_7_1 ] <= -5
 vc2_2_7: - y_2 + y_7 - 9 rotation_7 + [ - height * delta_2_7_3 ] <= -12
 vc1_2_8: y_2 - y_8 - 2 rotation_2 + [ - height * delta_2_8_1 ] <= -5
 vc2_2_8: - y_2 + y_8 - 12 rotation_8 + [ - height * delta_2_8_3 ] <= -15
 vc1_2_9: y_2 - y_9 - 2 rotation_2 + [ - height * delta_2_9_1 ] <= -5
 vc2_2_9: - y_2 + y_9 + 3 rotation_9 + [ - height * delta_2_9_3 ] <= -3
 vc1_3_4: y_3 - y_4 - 3 rotation_3 + [ - height * delta_3_4_1 ] <= -6
 vc2_3_4: - y_3 + y_4 - 4 rotation_4 + [ - height * delta_3_4_3 ] <= -7
 vc1_3_5: y_3 - y_5 - 3 rotation_3 + [ - height * delta_3_5_1 ] <= -6
 vc2_3_5: - y_3 + y_5 - 5 rotation_5 + [ - height * delta_3_5_3 ] <= -8
 vc1_3_6: y_3 - y_6 - 3 rotation_3 + [ - height * delta_3_6_1 ] <= -6
 vc2_3_6: - y_3 + y_6 - 6 rotation_6 + [ - height * delta_3_6_3 ] <= -9
 vc1_3_7: y_3 - y_7 - 3 rotation_3 + [ - height * delta_3_7_1 ] <= -6
 vc2_3_7: - y_3 + y_7 - 9 rotation_7 + [ - height * delta_3_7_3 ] <= -12
 vc1_3_8: y_3 - y_8 - 3 rotation_3 + [ - height * delta_3_8_1 ] <= -6
 vc2_3_8: - y_3 + y_8 - 12 rotation_8 + [ - height * delta_3_8_3 ] <= -15
 vc1_3_9: y_3 - y_9 - 3 rotation_3 + [ - height * delta_3_9_1 ] <= -6
 vc2_3_9: - y_3 + y_9 + 3 rotation_9 + [ - height * delta_3_9_3 ] <= -3
 vc1_4_5: y_4 - y_5 - 4 rotation_4 + [ - height * delta_4_5_1 ] <= -7
 vc2_4_5: - y_4 + y_5 - 5 rotation_5 + [ - height * delta_4_5_3 ] <= -8
 vc1_4_6: y_4 - y_6 - 4 rotation_4 + [ - height * delta_4_6_1 ] <= -7
 vc2_4_6: - y_4 + y_6 - 6 rotation_6 + [ - height * delta_4_6_3 ] <= -9
 vc1_4_7: y_4 - y_7 - 4 rotation_4 + [ - height * delta_4_7_1 ] <= -7
 vc2_4_7: - y_4 + y_7 - 9 rotation_7 + [ - height * delta_4_7_3 ] <= -12
 vc1_4_8: y_4 - y_8 - 4 rotation_4 + [ - height * delta_4_8_1 ] <= -7
 vc2_4_8: - y_4 + y_8 - 12 rotation_8 + [ - height * delta_4_8_3 ] <= -15
 vc1_4_9: y_4 - y_9 - 4 rotation_4 + [ - height * delta_4_9_1 ] <= -7
 vc2_4_9: - y_4 + y_9 + 3 rotation_9 + [ - height * delta_4_9_3 ] <= -3
 vc1_5_6: y_5 - y_6 - 5 rotation_5 + [ - height * delta_5_6_1 ] <= -8
 vc2_5_6: - y_5 + y_6 - 6 rotation_6 + [ - height * delta_5_6_3 ] <= -9
 vc1_5_7: y_5 - y_7 - 5 rotation_5 + [ - height * delta_5_7_1 ] <= -8
 vc2_5_7: - y_5 + y_7 - 9 rotation_7 + [ - height * delta_5_7_3 ] <= -12
 vc1_5_8: y_5 - y_8 - 5 rotation_5 + [ - height * delta_5_8_1 ] <= -8
 vc2_5_8: - y_5 + y_8 - 12 rotation_8 + [ - height * delta_5_8_3 ] <= -15
 vc1_5_9: y_5 - y_9 - 5 rotation_5 + [ - height * delta_5_9_1 ] <= -8
 vc2_5_9: - y_5 + y_9 + 3 rotation_9 + [ - height * delta_5_9_3 ] <= -3
 vc1_6_7: y_6 - y_7 - 6 rotation_6 + [ - height * delta_6_7_1 ] <= -9
 vc2_6_7: - y_6 + y_7 - 9 rotation_7 + [ - height * delta_6_7_3 ] <= -12
 vc1_6_8: y_6 - y_8 - 6 rotation_6 + [ - height * delta_6_8_1 ] <= -9
 vc2_6_8: - y_6 + y_8 - 12 rotation_8 + [ - height * delta_6_8_3 ] <= -15
 vc1_6_9: y_6 - y_9 - 6 rotation_6 + [ - height * delta_6_9_1 ] <= -9
 vc2_6_9: - y_6 + y_9 + 3 rotation_9 + [ - height * delta_6_9_3 ] <= -3
 vc1_7_8: y_7 - y_8 - 9 rotation_7 + [ - height * delta_7_8_1 ] <= -12
 vc2_7_8: - y_7 + y_8 - 12 rotation_8 + [ - height * delta_7_8_3 ] <= -15
 vc1_7_9: y_7 - y_9 - 9 rotation_7 + [ - height * delta_7_9_1 ] <= -12
 vc2_7_9: - y_7 + y_9 + 3 rotation_9 + [ - height * delta_7_9_3 ] <= -3
 vc1_8_9: y_8 - y_9 - 12 rotation_8 + [ - height * delta_8_9_1 ] <= -15
 vc2_8_9: - y_8 + y_9 + 3 rotation_9 + [ - height * delta_8_9_3 ] <= -3
Bounds
 x_0 <= 12
 y_0 <= 69
 x_1 <= 12
 y_1 <= 69
 x_2 <= 12
 y_2 <= 69
 x_3 <= 12
 y_3 <= 69
 x_4 <= 12
 y_4 <= 69
 x_5 <= 12
 y_5 <= 69
 x_6 <= 12
 y_6 <= 69
 x_7 <= 12
 y_7 <= 69
 x_8 <= 12
 y_8 <= 69
 x_9 <= 12
 y_9 <= 69
 15 <= height <= 72
Binaries
 delta_0_0_0 delta_0_0_1 delta_0_0_2 delta_0_0_3 delta_0_1_0 delta_0_1_1
 delta_0_1_2 delta_0_1_3 delta_0_2_0 delta_0_2_1 delta_0_2_2 delta_0_2_3
 delta_0_3_0 delta_0_3_1 delta_0_3_2 delta_0_3_3 delta_0_4_0 delta_0_4_1
 delta_0_4_2 delta_0_4_3 delta_0_5_0 delta_0_5_1 delta_0_5_2 delta_0_5_3
 delta_0_6_0 delta_0_6_1 delta_0_6_2 delta_0_6_3 delta_0_7_0 delta_0_7_1
 delta_0_7_2 delta_0_7_3 delta_0_8_0 delta_0_8_1 delta_0_8_2 delta_0_8_3
 delta_0_9_0 delta_0_9_1 delta_0_9_2 delta_0_9_3 delta_1_0_0 delta_1_0_1
 delta_1_0_2 delta_1_0_3 delta_1_1_0 delta_1_1_1 delta_1_1_2 delta_1_1_3
 delta_1_2_0 delta_1_2_1 delta_1_2_2 delta_1_2_3 delta_1_3_0 delta_1_3_1
 delta_1_3_2 delta_1_3_3 delta_1_4_0 delta_1_4_1 delta_1_4_2 delta_1_4_3
 delta_1_5_0 delta_1_5_1 delta_1_5_2 delta_1_5_3 delta_1_6_0 delta_1_6_1
 delta_1_6_2 delta_1_6_3 delta_1_7_0 delta_1_7_1 delta_1_7_2 delta_1_7_3
 delta_1_8_0 delta_1_8_1 delta_1_8_2 delta_1_8_3 delta_1_9_0 delta_1_9_1
 delta_1_9_2 delta_1_9_3 delta_2_0_0 delta_2_0_1 delta_2_0_2 delta_2_0_3
 delta_2_1_0 delta_2_1_1 delta_2_1_2 delta_2_1_3 delta_2_2_0 delta_2_2_1
 delta_2_2_2 delta_2_2_3 delta_2_3_0 delta_2_3_1 delta_2_3_2 delta_2_3_3
 delta_2_4_0 delta_2_4_1 delta_2_4_2 delta_2_4_3 delta_2_5_0 delta_2_5_1
 delta_2_5_2 delta_2_5_3 delta_2_6_0 delta_2_6_1 delta_2_6_2 delta_2_6_3
 delta_2_7_0 delta_2_7_1 delta_2_7_2 delta_2_7_3 delta_2_8_0 delta_2_8_1
 delta_2_8_2 delta_2_8_3 delta_2_9_0 delta_2_9_1 delta_2_9_2 delta_2_9_3
 delta_3_0_0 delta_3_0_1 delta_3_0_2 delta_3_0_3 delta_3_1_0 delta_3_1_1
 delta_3_1_2 delta_3_1_3 delta_3_2_0 delta_3_2_1 delta_3_2_2 delta_3_2_3
 delta_3_3_0 delta_3_3_1 delta_3_3_2 delta_3_3_3 delta_3_4_0 delta_3_4_1
 delta_3_4_2 delta_3_4_3 delta_3_5_0 delta_3_5_1 delta_3_5_2 delta_3_5_3
 delta_3_6_0 delta_3_6_1 delta_3_6_2 delta_3_6_3 delta_3_7_0 delta_3_7_1
 delta_3_7_2 delta_3_7_3 delta_3_8_0 delta_3_8_1 delta_3_8_2 delta_3_8_3
 delta_3_9_0 delta_3_9_1 delta_3_9_2 delta_3_9_3 delta_4_0_0 delta_4_0_1
 delta_4_0_2 delta_4_0_3 delta_4_1_0 delta_4_1_1 delta_4_1_2 delta_4_1_3
 delta_4_2_0 delta_4_2_1 delta_4_2_2 delta_4_2_3 delta_4_3_0 delta_4_3_1
 delta_4_3_2 delta_4_3_3 delta_4_4_0 delta_4_4_1 delta_4_4_2 delta_4_4_3
 delta_4_5_0 delta_4_5_1 delta_4_5_2 delta_4_5_3 delta_4_6_0 delta_4_6_1
 delta_4_6_2 delta_4_6_3 delta_4_7_0 delta_4_7_1 delta_4_7_2 delta_4_7_3
 delta_4_8_0 delta_4_8_1 delta_4_8_2 delta_4_8_3 delta_4_9_0 delta_4_9_1
 delta_4_9_2 delta_4_9_3 delta_5_0_0 delta_5_0_1 delta_5_0_2 delta_5_0_3
 delta_5_1_0 delta_5_1_1 delta_5_1_2 delta_5_1_3 delta_5_2_0 delta_5_2_1
 delta_5_2_2 delta_5_2_3 delta_5_3_0 delta_5_3_1 delta_5_3_2 delta_5_3_3
 delta_5_4_0 delta_5_4_1 delta_5_4_2 delta_5_4_3 delta_5_5_0 delta_5_5_1
 delta_5_5_2 delta_5_5_3 delta_5_6_0 delta_5_6_1 delta_5_6_2 delta_5_6_3
 delta_5_7_0 delta_5_7_1 delta_5_7_2 delta_5_7_3 delta_5_8_0 delta_5_8_1
 delta_5_8_2 delta_5_8_3 delta_5_9_0 delta_5_9_1 delta_5_9_2 delta_5_9_3
 delta_6_0_0 delta_6_0_1 delta_6_0_2 delta_6_0_3 delta_6_1_0 delta_6_1_1
 delta_6_1_2 delta_6_1_3 delta_6_2_0 delta_6_2_1 delta_6_2_2 delta_6_2_3
 delta_6_3_0 delta_6_3_1 delta_6_3_2 delta_6_3_3 delta_6_4_0 delta_6_4_1
 delta_6_4_2 delta_6_4_3 delta_6_5_0 delta_6_5_1 delta_6_5_2 delta_6_5_3
 delta_6_6_0 delta_6_6_1 delta_6_6_2 delta_6_6_3 delta_6_7_0 delta_6_7_1
 delta_6_7_2 delta_6_7_3 delta_6_8_0 delta_6_8_1 delta_6_8_2 delta_6_8_3
 delta_6_9_0 delta_6_9_1 delta_6_9_2 delta_6_9_3 delta_7_0_0 delta_7_0_1
 delta_7_0_2 delta_7_0_3 delta_7_1_0 delta_7_1_1 delta_7_1_2 delta_7_1_3
 delta_7_2_0 delta_7_2_1 delta_7_2_2 delta_7_2_3 delta_7_3_0 delta_7_3_1
 delta_7_3_2 delta_7_3_3 delta_7_4_0 delta_7_4_1 delta_7_4_2 delta_7_4_3
 delta_7_5_0 delta_7_5_1 delta_7_5_2 delta_7_5_3 delta_7_6_0 delta_7_6_1
 delta_7_6_2 delta_7_6_3 delta_7_7_0 delta_7_7_1 delta_7_7_2 delta_7_7_3
 delta_7_8_0 delta_7_8_1 delta_7_8_2 delta_7_8_3 delta_7_9_0 delta_7_9_1
 delta_7_9_2 delta_7_9_3 delta_8_0_0 delta_8_0_1 delta_8_0_2 delta_8_0_3
 delta_8_1_0 delta_8_1_1 delta_8_1_2 delta_8_1_3 delta_8_2_0 delta_8_2_1
 delta_8_2_2 delta_8_2_3 delta_8_3_0 delta_8_3_1 delta_8_3_2 delta_8_3_3
 delta_8_4_0 delta_8_4_1 delta_8_4_2 delta_8_4_3 delta_8_5_0 delta_8_5_1
 delta_8_5_2 delta_8_5_3 delta_8_6_0 delta_8_6_1 delta_8_6_2 delta_8_6_3
 delta_8_7_0 delta_8_7_1 delta_8_7_2 delta_8_7_3 delta_8_8_0 delta_8_8_1
 delta_8_8_2 delta_8_8_3 delta_8_9_0 delta_8_9_1 delta_8_9_2 delta_8_9_3
 delta_9_0_0 delta_9_0_1 delta_9_0_2 delta_9_0_3 delta_9_1_0 delta_9_1_1
 delta_9_1_2 delta_9_1_3 delta_9_2_0 delta_9_2_1 delta_9_2_2 delta_9_2_3
 delta_9_3_0 delta_9_3_1 delta_9_3_2 delta_9_3_3 delta_9_4_0 delta_9_4_1
 delta_9_4_2 delta_9_4_3 delta_9_5_0 delta_9_5_1 delta_9_5_2 delta_9_5_3
 delta_9_6_0 delta_9_6_1 delta_9_6_2 delta_9_6_3 delta_9_7_0 delta_9_7_1
 delta_9_7_2 delta_9_7_3 delta_9_8_0 delta_9_8_1 delta_9_8_2 delta_9_8_3
 delta_9_9_0 delta_9_9_1 delta_9_9_2 delta_9_9_3 rotation_0 rotation_1
 rotation_2 rotation_3 rotation_4 rotation_5 rotation_6 rotation_7
 rotation_8 rotation_9
Generals
 x_0 y_0 x_1 y_1 x_2 y_2 x_3 y_3 x_4 y_4 x_5 y_5 x_6 y_6 x_7 y_7 x_8 y_8
 x_9 y_9 height
End
