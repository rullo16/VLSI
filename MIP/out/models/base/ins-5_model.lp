\ Model VLSI_Design
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  height
Subject To
 symmetry_break_x: x_6 = 0
 symmetry_break_y: y_6 = 0
 area_low: 12 height >= 144
 area_up: 12 height <= 540
 w_overflow_0: x_0 <= 9
 h_overflow_0: y_0 - height <= -3
 w_overflow_1: x_1 <= 9
 h_overflow_1: y_1 - height <= -4
 w_overflow_2: x_2 <= 9
 h_overflow_2: y_2 - height <= -5
 w_overflow_3: x_3 <= 9
 h_overflow_3: y_3 - height <= -6
 w_overflow_4: x_4 <= 9
 h_overflow_4: y_4 - height <= -7
 w_overflow_5: x_5 <= 9
 h_overflow_5: y_5 - height <= -8
 w_overflow_6: x_6 <= 9
 h_overflow_6: y_6 - height <= -9
 w_overflow_7: x_7 <= 6
 h_overflow_7: y_7 - height <= -3
 hc1_0_1: x_0 - x_1 - 12 delta_0_1_0 <= -3
 hc2_0_1: - x_0 + x_1 - 12 delta_0_1_2 <= -3
 hc1_0_2: x_0 - x_2 - 12 delta_0_2_0 <= -3
 hc2_0_2: - x_0 + x_2 - 12 delta_0_2_2 <= -3
 hc1_0_3: x_0 - x_3 - 12 delta_0_3_0 <= -3
 hc2_0_3: - x_0 + x_3 - 12 delta_0_3_2 <= -3
 hc1_0_4: x_0 - x_4 - 12 delta_0_4_0 <= -3
 hc2_0_4: - x_0 + x_4 - 12 delta_0_4_2 <= -3
 hc1_0_5: x_0 - x_5 - 12 delta_0_5_0 <= -3
 hc2_0_5: - x_0 + x_5 - 12 delta_0_5_2 <= -3
 hc1_0_6: x_0 - x_6 - 12 delta_0_6_0 <= -3
 hc2_0_6: - x_0 + x_6 - 12 delta_0_6_2 <= -3
 hc1_0_7: x_0 - x_7 - 12 delta_0_7_0 <= -3
 hc2_0_7: - x_0 + x_7 - 12 delta_0_7_2 <= -6
 hc1_1_2: x_1 - x_2 - 12 delta_1_2_0 <= -3
 hc2_1_2: - x_1 + x_2 - 12 delta_1_2_2 <= -3
 hc1_1_3: x_1 - x_3 - 12 delta_1_3_0 <= -3
 hc2_1_3: - x_1 + x_3 - 12 delta_1_3_2 <= -3
 hc1_1_4: x_1 - x_4 - 12 delta_1_4_0 <= -3
 hc2_1_4: - x_1 + x_4 - 12 delta_1_4_2 <= -3
 hc1_1_5: x_1 - x_5 - 12 delta_1_5_0 <= -3
 hc2_1_5: - x_1 + x_5 - 12 delta_1_5_2 <= -3
 hc1_1_6: x_1 - x_6 - 12 delta_1_6_0 <= -3
 hc2_1_6: - x_1 + x_6 - 12 delta_1_6_2 <= -3
 hc1_1_7: x_1 - x_7 - 12 delta_1_7_0 <= -3
 hc2_1_7: - x_1 + x_7 - 12 delta_1_7_2 <= -6
 hc1_2_3: x_2 - x_3 - 12 delta_2_3_0 <= -3
 hc2_2_3: - x_2 + x_3 - 12 delta_2_3_2 <= -3
 hc1_2_4: x_2 - x_4 - 12 delta_2_4_0 <= -3
 hc2_2_4: - x_2 + x_4 - 12 delta_2_4_2 <= -3
 hc1_2_5: x_2 - x_5 - 12 delta_2_5_0 <= -3
 hc2_2_5: - x_2 + x_5 - 12 delta_2_5_2 <= -3
 hc1_2_6: x_2 - x_6 - 12 delta_2_6_0 <= -3
 hc2_2_6: - x_2 + x_6 - 12 delta_2_6_2 <= -3
 hc1_2_7: x_2 - x_7 - 12 delta_2_7_0 <= -3
 hc2_2_7: - x_2 + x_7 - 12 delta_2_7_2 <= -6
 hc1_3_4: x_3 - x_4 - 12 delta_3_4_0 <= -3
 hc2_3_4: - x_3 + x_4 - 12 delta_3_4_2 <= -3
 hc1_3_5: x_3 - x_5 - 12 delta_3_5_0 <= -3
 hc2_3_5: - x_3 + x_5 - 12 delta_3_5_2 <= -3
 hc1_3_6: x_3 - x_6 - 12 delta_3_6_0 <= -3
 hc2_3_6: - x_3 + x_6 - 12 delta_3_6_2 <= -3
 hc1_3_7: x_3 - x_7 - 12 delta_3_7_0 <= -3
 hc2_3_7: - x_3 + x_7 - 12 delta_3_7_2 <= -6
 hc1_4_5: x_4 - x_5 - 12 delta_4_5_0 <= -3
 hc2_4_5: - x_4 + x_5 - 12 delta_4_5_2 <= -3
 hc1_4_6: x_4 - x_6 - 12 delta_4_6_0 <= -3
 hc2_4_6: - x_4 + x_6 - 12 delta_4_6_2 <= -3
 hc1_4_7: x_4 - x_7 - 12 delta_4_7_0 <= -3
 hc2_4_7: - x_4 + x_7 - 12 delta_4_7_2 <= -6
 hc1_5_6: x_5 - x_6 - 12 delta_5_6_0 <= -3
 hc2_5_6: - x_5 + x_6 - 12 delta_5_6_2 <= -3
 hc1_5_7: x_5 - x_7 - 12 delta_5_7_0 <= -3
 hc2_5_7: - x_5 + x_7 - 12 delta_5_7_2 <= -6
 hc1_6_7: x_6 - x_7 - 12 delta_6_7_0 <= -3
 hc2_6_7: - x_6 + x_7 - 12 delta_6_7_2 <= -6
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
 vc1_0_1: y_0 - y_1 + [ - height * delta_0_1_1 ] <= -3
 vc2_0_1: - y_0 + y_1 + [ - height * delta_0_1_3 ] <= -4
 vc1_0_2: y_0 - y_2 + [ - height * delta_0_2_1 ] <= -3
 vc2_0_2: - y_0 + y_2 + [ - height * delta_0_2_3 ] <= -5
 vc1_0_3: y_0 - y_3 + [ - height * delta_0_3_1 ] <= -3
 vc2_0_3: - y_0 + y_3 + [ - height * delta_0_3_3 ] <= -6
 vc1_0_4: y_0 - y_4 + [ - height * delta_0_4_1 ] <= -3
 vc2_0_4: - y_0 + y_4 + [ - height * delta_0_4_3 ] <= -7
 vc1_0_5: y_0 - y_5 + [ - height * delta_0_5_1 ] <= -3
 vc2_0_5: - y_0 + y_5 + [ - height * delta_0_5_3 ] <= -8
 vc1_0_6: y_0 - y_6 + [ - height * delta_0_6_1 ] <= -3
 vc2_0_6: - y_0 + y_6 + [ - height * delta_0_6_3 ] <= -9
 vc1_0_7: y_0 - y_7 + [ - height * delta_0_7_1 ] <= -3
 vc2_0_7: - y_0 + y_7 + [ - height * delta_0_7_3 ] <= -3
 vc1_1_2: y_1 - y_2 + [ - height * delta_1_2_1 ] <= -4
 vc2_1_2: - y_1 + y_2 + [ - height * delta_1_2_3 ] <= -5
 vc1_1_3: y_1 - y_3 + [ - height * delta_1_3_1 ] <= -4
 vc2_1_3: - y_1 + y_3 + [ - height * delta_1_3_3 ] <= -6
 vc1_1_4: y_1 - y_4 + [ - height * delta_1_4_1 ] <= -4
 vc2_1_4: - y_1 + y_4 + [ - height * delta_1_4_3 ] <= -7
 vc1_1_5: y_1 - y_5 + [ - height * delta_1_5_1 ] <= -4
 vc2_1_5: - y_1 + y_5 + [ - height * delta_1_5_3 ] <= -8
 vc1_1_6: y_1 - y_6 + [ - height * delta_1_6_1 ] <= -4
 vc2_1_6: - y_1 + y_6 + [ - height * delta_1_6_3 ] <= -9
 vc1_1_7: y_1 - y_7 + [ - height * delta_1_7_1 ] <= -4
 vc2_1_7: - y_1 + y_7 + [ - height * delta_1_7_3 ] <= -3
 vc1_2_3: y_2 - y_3 + [ - height * delta_2_3_1 ] <= -5
 vc2_2_3: - y_2 + y_3 + [ - height * delta_2_3_3 ] <= -6
 vc1_2_4: y_2 - y_4 + [ - height * delta_2_4_1 ] <= -5
 vc2_2_4: - y_2 + y_4 + [ - height * delta_2_4_3 ] <= -7
 vc1_2_5: y_2 - y_5 + [ - height * delta_2_5_1 ] <= -5
 vc2_2_5: - y_2 + y_5 + [ - height * delta_2_5_3 ] <= -8
 vc1_2_6: y_2 - y_6 + [ - height * delta_2_6_1 ] <= -5
 vc2_2_6: - y_2 + y_6 + [ - height * delta_2_6_3 ] <= -9
 vc1_2_7: y_2 - y_7 + [ - height * delta_2_7_1 ] <= -5
 vc2_2_7: - y_2 + y_7 + [ - height * delta_2_7_3 ] <= -3
 vc1_3_4: y_3 - y_4 + [ - height * delta_3_4_1 ] <= -6
 vc2_3_4: - y_3 + y_4 + [ - height * delta_3_4_3 ] <= -7
 vc1_3_5: y_3 - y_5 + [ - height * delta_3_5_1 ] <= -6
 vc2_3_5: - y_3 + y_5 + [ - height * delta_3_5_3 ] <= -8
 vc1_3_6: y_3 - y_6 + [ - height * delta_3_6_1 ] <= -6
 vc2_3_6: - y_3 + y_6 + [ - height * delta_3_6_3 ] <= -9
 vc1_3_7: y_3 - y_7 + [ - height * delta_3_7_1 ] <= -6
 vc2_3_7: - y_3 + y_7 + [ - height * delta_3_7_3 ] <= -3
 vc1_4_5: y_4 - y_5 + [ - height * delta_4_5_1 ] <= -7
 vc2_4_5: - y_4 + y_5 + [ - height * delta_4_5_3 ] <= -8
 vc1_4_6: y_4 - y_6 + [ - height * delta_4_6_1 ] <= -7
 vc2_4_6: - y_4 + y_6 + [ - height * delta_4_6_3 ] <= -9
 vc1_4_7: y_4 - y_7 + [ - height * delta_4_7_1 ] <= -7
 vc2_4_7: - y_4 + y_7 + [ - height * delta_4_7_3 ] <= -3
 vc1_5_6: y_5 - y_6 + [ - height * delta_5_6_1 ] <= -8
 vc2_5_6: - y_5 + y_6 + [ - height * delta_5_6_3 ] <= -9
 vc1_5_7: y_5 - y_7 + [ - height * delta_5_7_1 ] <= -8
 vc2_5_7: - y_5 + y_7 + [ - height * delta_5_7_3 ] <= -3
 vc1_6_7: y_6 - y_7 + [ - height * delta_6_7_1 ] <= -9
 vc2_6_7: - y_6 + y_7 + [ - height * delta_6_7_3 ] <= -3
Bounds
 x_0 <= 9
 y_0 <= 42
 x_1 <= 9
 y_1 <= 42
 x_2 <= 9
 y_2 <= 42
 x_3 <= 9
 y_3 <= 42
 x_4 <= 9
 y_4 <= 42
 x_5 <= 9
 y_5 <= 42
 x_6 <= 9
 y_6 <= 42
 x_7 <= 9
 y_7 <= 42
 12 <= height <= 45
Binaries
 delta_0_0_0 delta_0_0_1 delta_0_0_2 delta_0_0_3 delta_0_1_0 delta_0_1_1
 delta_0_1_2 delta_0_1_3 delta_0_2_0 delta_0_2_1 delta_0_2_2 delta_0_2_3
 delta_0_3_0 delta_0_3_1 delta_0_3_2 delta_0_3_3 delta_0_4_0 delta_0_4_1
 delta_0_4_2 delta_0_4_3 delta_0_5_0 delta_0_5_1 delta_0_5_2 delta_0_5_3
 delta_0_6_0 delta_0_6_1 delta_0_6_2 delta_0_6_3 delta_0_7_0 delta_0_7_1
 delta_0_7_2 delta_0_7_3 delta_1_0_0 delta_1_0_1 delta_1_0_2 delta_1_0_3
 delta_1_1_0 delta_1_1_1 delta_1_1_2 delta_1_1_3 delta_1_2_0 delta_1_2_1
 delta_1_2_2 delta_1_2_3 delta_1_3_0 delta_1_3_1 delta_1_3_2 delta_1_3_3
 delta_1_4_0 delta_1_4_1 delta_1_4_2 delta_1_4_3 delta_1_5_0 delta_1_5_1
 delta_1_5_2 delta_1_5_3 delta_1_6_0 delta_1_6_1 delta_1_6_2 delta_1_6_3
 delta_1_7_0 delta_1_7_1 delta_1_7_2 delta_1_7_3 delta_2_0_0 delta_2_0_1
 delta_2_0_2 delta_2_0_3 delta_2_1_0 delta_2_1_1 delta_2_1_2 delta_2_1_3
 delta_2_2_0 delta_2_2_1 delta_2_2_2 delta_2_2_3 delta_2_3_0 delta_2_3_1
 delta_2_3_2 delta_2_3_3 delta_2_4_0 delta_2_4_1 delta_2_4_2 delta_2_4_3
 delta_2_5_0 delta_2_5_1 delta_2_5_2 delta_2_5_3 delta_2_6_0 delta_2_6_1
 delta_2_6_2 delta_2_6_3 delta_2_7_0 delta_2_7_1 delta_2_7_2 delta_2_7_3
 delta_3_0_0 delta_3_0_1 delta_3_0_2 delta_3_0_3 delta_3_1_0 delta_3_1_1
 delta_3_1_2 delta_3_1_3 delta_3_2_0 delta_3_2_1 delta_3_2_2 delta_3_2_3
 delta_3_3_0 delta_3_3_1 delta_3_3_2 delta_3_3_3 delta_3_4_0 delta_3_4_1
 delta_3_4_2 delta_3_4_3 delta_3_5_0 delta_3_5_1 delta_3_5_2 delta_3_5_3
 delta_3_6_0 delta_3_6_1 delta_3_6_2 delta_3_6_3 delta_3_7_0 delta_3_7_1
 delta_3_7_2 delta_3_7_3 delta_4_0_0 delta_4_0_1 delta_4_0_2 delta_4_0_3
 delta_4_1_0 delta_4_1_1 delta_4_1_2 delta_4_1_3 delta_4_2_0 delta_4_2_1
 delta_4_2_2 delta_4_2_3 delta_4_3_0 delta_4_3_1 delta_4_3_2 delta_4_3_3
 delta_4_4_0 delta_4_4_1 delta_4_4_2 delta_4_4_3 delta_4_5_0 delta_4_5_1
 delta_4_5_2 delta_4_5_3 delta_4_6_0 delta_4_6_1 delta_4_6_2 delta_4_6_3
 delta_4_7_0 delta_4_7_1 delta_4_7_2 delta_4_7_3 delta_5_0_0 delta_5_0_1
 delta_5_0_2 delta_5_0_3 delta_5_1_0 delta_5_1_1 delta_5_1_2 delta_5_1_3
 delta_5_2_0 delta_5_2_1 delta_5_2_2 delta_5_2_3 delta_5_3_0 delta_5_3_1
 delta_5_3_2 delta_5_3_3 delta_5_4_0 delta_5_4_1 delta_5_4_2 delta_5_4_3
 delta_5_5_0 delta_5_5_1 delta_5_5_2 delta_5_5_3 delta_5_6_0 delta_5_6_1
 delta_5_6_2 delta_5_6_3 delta_5_7_0 delta_5_7_1 delta_5_7_2 delta_5_7_3
 delta_6_0_0 delta_6_0_1 delta_6_0_2 delta_6_0_3 delta_6_1_0 delta_6_1_1
 delta_6_1_2 delta_6_1_3 delta_6_2_0 delta_6_2_1 delta_6_2_2 delta_6_2_3
 delta_6_3_0 delta_6_3_1 delta_6_3_2 delta_6_3_3 delta_6_4_0 delta_6_4_1
 delta_6_4_2 delta_6_4_3 delta_6_5_0 delta_6_5_1 delta_6_5_2 delta_6_5_3
 delta_6_6_0 delta_6_6_1 delta_6_6_2 delta_6_6_3 delta_6_7_0 delta_6_7_1
 delta_6_7_2 delta_6_7_3 delta_7_0_0 delta_7_0_1 delta_7_0_2 delta_7_0_3
 delta_7_1_0 delta_7_1_1 delta_7_1_2 delta_7_1_3 delta_7_2_0 delta_7_2_1
 delta_7_2_2 delta_7_2_3 delta_7_3_0 delta_7_3_1 delta_7_3_2 delta_7_3_3
 delta_7_4_0 delta_7_4_1 delta_7_4_2 delta_7_4_3 delta_7_5_0 delta_7_5_1
 delta_7_5_2 delta_7_5_3 delta_7_6_0 delta_7_6_1 delta_7_6_2 delta_7_6_3
 delta_7_7_0 delta_7_7_1 delta_7_7_2 delta_7_7_3
Generals
 x_0 y_0 x_1 y_1 x_2 y_2 x_3 y_3 x_4 y_4 x_5 y_5 x_6 y_6 x_7 y_7 height
End
