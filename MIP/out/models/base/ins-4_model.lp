\ Model VLSI_Design
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  height
Subject To
 symmetry_break_x: x_6 = 0
 symmetry_break_y: y_6 = 0
 area_low: 11 height >= 121
 area_up: 11 height <= 319
 w_overflow_0: x_0 <= 8
 h_overflow_0: y_0 - height <= -3
 w_overflow_1: x_1 <= 8
 h_overflow_1: y_1 - height <= -4
 w_overflow_2: x_2 <= 8
 h_overflow_2: y_2 - height <= -5
 w_overflow_3: x_3 <= 8
 h_overflow_3: y_3 - height <= -6
 w_overflow_4: x_4 <= 6
 h_overflow_4: y_4 - height <= -3
 w_overflow_5: x_5 <= 6
 h_overflow_5: y_5 - height <= -4
 w_overflow_6: x_6 <= 3
 h_overflow_6: y_6 - height <= -4
 hc1_0_1: x_0 - x_1 - 11 delta_0_1_0 <= -3
 hc2_0_1: - x_0 + x_1 - 11 delta_0_1_2 <= -3
 hc1_0_2: x_0 - x_2 - 11 delta_0_2_0 <= -3
 hc2_0_2: - x_0 + x_2 - 11 delta_0_2_2 <= -3
 hc1_0_3: x_0 - x_3 - 11 delta_0_3_0 <= -3
 hc2_0_3: - x_0 + x_3 - 11 delta_0_3_2 <= -3
 hc1_0_4: x_0 - x_4 - 11 delta_0_4_0 <= -3
 hc2_0_4: - x_0 + x_4 - 11 delta_0_4_2 <= -5
 hc1_0_5: x_0 - x_5 - 11 delta_0_5_0 <= -3
 hc2_0_5: - x_0 + x_5 - 11 delta_0_5_2 <= -5
 hc1_0_6: x_0 - x_6 - 11 delta_0_6_0 <= -3
 hc2_0_6: - x_0 + x_6 - 11 delta_0_6_2 <= -8
 hc1_1_2: x_1 - x_2 - 11 delta_1_2_0 <= -3
 hc2_1_2: - x_1 + x_2 - 11 delta_1_2_2 <= -3
 hc1_1_3: x_1 - x_3 - 11 delta_1_3_0 <= -3
 hc2_1_3: - x_1 + x_3 - 11 delta_1_3_2 <= -3
 hc1_1_4: x_1 - x_4 - 11 delta_1_4_0 <= -3
 hc2_1_4: - x_1 + x_4 - 11 delta_1_4_2 <= -5
 hc1_1_5: x_1 - x_5 - 11 delta_1_5_0 <= -3
 hc2_1_5: - x_1 + x_5 - 11 delta_1_5_2 <= -5
 hc1_1_6: x_1 - x_6 - 11 delta_1_6_0 <= -3
 hc2_1_6: - x_1 + x_6 - 11 delta_1_6_2 <= -8
 hc1_2_3: x_2 - x_3 - 11 delta_2_3_0 <= -3
 hc2_2_3: - x_2 + x_3 - 11 delta_2_3_2 <= -3
 hc1_2_4: x_2 - x_4 - 11 delta_2_4_0 <= -3
 hc2_2_4: - x_2 + x_4 - 11 delta_2_4_2 <= -5
 hc1_2_5: x_2 - x_5 - 11 delta_2_5_0 <= -3
 hc2_2_5: - x_2 + x_5 - 11 delta_2_5_2 <= -5
 hc1_2_6: x_2 - x_6 - 11 delta_2_6_0 <= -3
 hc2_2_6: - x_2 + x_6 - 11 delta_2_6_2 <= -8
 hc1_3_4: x_3 - x_4 - 11 delta_3_4_0 <= -3
 hc2_3_4: - x_3 + x_4 - 11 delta_3_4_2 <= -5
 hc1_3_5: x_3 - x_5 - 11 delta_3_5_0 <= -3
 hc2_3_5: - x_3 + x_5 - 11 delta_3_5_2 <= -5
 hc1_3_6: x_3 - x_6 - 11 delta_3_6_0 <= -3
 hc2_3_6: - x_3 + x_6 - 11 delta_3_6_2 <= -8
 hc1_4_5: x_4 - x_5 - 11 delta_4_5_0 <= -5
 hc2_4_5: - x_4 + x_5 - 11 delta_4_5_2 <= -5
 hc1_4_6: x_4 - x_6 - 11 delta_4_6_0 <= -5
 hc2_4_6: - x_4 + x_6 - 11 delta_4_6_2 <= -8
 hc1_5_6: x_5 - x_6 - 11 delta_5_6_0 <= -5
 hc2_5_6: - x_5 + x_6 - 11 delta_5_6_2 <= -8
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
 vc1_0_1: y_0 - y_1 + [ - height * delta_0_1_1 ] <= -3
 vc2_0_1: - y_0 + y_1 + [ - height * delta_0_1_3 ] <= -4
 vc1_0_2: y_0 - y_2 + [ - height * delta_0_2_1 ] <= -3
 vc2_0_2: - y_0 + y_2 + [ - height * delta_0_2_3 ] <= -5
 vc1_0_3: y_0 - y_3 + [ - height * delta_0_3_1 ] <= -3
 vc2_0_3: - y_0 + y_3 + [ - height * delta_0_3_3 ] <= -6
 vc1_0_4: y_0 - y_4 + [ - height * delta_0_4_1 ] <= -3
 vc2_0_4: - y_0 + y_4 + [ - height * delta_0_4_3 ] <= -3
 vc1_0_5: y_0 - y_5 + [ - height * delta_0_5_1 ] <= -3
 vc2_0_5: - y_0 + y_5 + [ - height * delta_0_5_3 ] <= -4
 vc1_0_6: y_0 - y_6 + [ - height * delta_0_6_1 ] <= -3
 vc2_0_6: - y_0 + y_6 + [ - height * delta_0_6_3 ] <= -4
 vc1_1_2: y_1 - y_2 + [ - height * delta_1_2_1 ] <= -4
 vc2_1_2: - y_1 + y_2 + [ - height * delta_1_2_3 ] <= -5
 vc1_1_3: y_1 - y_3 + [ - height * delta_1_3_1 ] <= -4
 vc2_1_3: - y_1 + y_3 + [ - height * delta_1_3_3 ] <= -6
 vc1_1_4: y_1 - y_4 + [ - height * delta_1_4_1 ] <= -4
 vc2_1_4: - y_1 + y_4 + [ - height * delta_1_4_3 ] <= -3
 vc1_1_5: y_1 - y_5 + [ - height * delta_1_5_1 ] <= -4
 vc2_1_5: - y_1 + y_5 + [ - height * delta_1_5_3 ] <= -4
 vc1_1_6: y_1 - y_6 + [ - height * delta_1_6_1 ] <= -4
 vc2_1_6: - y_1 + y_6 + [ - height * delta_1_6_3 ] <= -4
 vc1_2_3: y_2 - y_3 + [ - height * delta_2_3_1 ] <= -5
 vc2_2_3: - y_2 + y_3 + [ - height * delta_2_3_3 ] <= -6
 vc1_2_4: y_2 - y_4 + [ - height * delta_2_4_1 ] <= -5
 vc2_2_4: - y_2 + y_4 + [ - height * delta_2_4_3 ] <= -3
 vc1_2_5: y_2 - y_5 + [ - height * delta_2_5_1 ] <= -5
 vc2_2_5: - y_2 + y_5 + [ - height * delta_2_5_3 ] <= -4
 vc1_2_6: y_2 - y_6 + [ - height * delta_2_6_1 ] <= -5
 vc2_2_6: - y_2 + y_6 + [ - height * delta_2_6_3 ] <= -4
 vc1_3_4: y_3 - y_4 + [ - height * delta_3_4_1 ] <= -6
 vc2_3_4: - y_3 + y_4 + [ - height * delta_3_4_3 ] <= -3
 vc1_3_5: y_3 - y_5 + [ - height * delta_3_5_1 ] <= -6
 vc2_3_5: - y_3 + y_5 + [ - height * delta_3_5_3 ] <= -4
 vc1_3_6: y_3 - y_6 + [ - height * delta_3_6_1 ] <= -6
 vc2_3_6: - y_3 + y_6 + [ - height * delta_3_6_3 ] <= -4
 vc1_4_5: y_4 - y_5 + [ - height * delta_4_5_1 ] <= -3
 vc2_4_5: - y_4 + y_5 + [ - height * delta_4_5_3 ] <= -4
 vc1_4_6: y_4 - y_6 + [ - height * delta_4_6_1 ] <= -3
 vc2_4_6: - y_4 + y_6 + [ - height * delta_4_6_3 ] <= -4
 vc1_5_6: y_5 - y_6 + [ - height * delta_5_6_1 ] <= -4
 vc2_5_6: - y_5 + y_6 + [ - height * delta_5_6_3 ] <= -4
Bounds
 x_0 <= 8
 y_0 <= 26
 x_1 <= 8
 y_1 <= 26
 x_2 <= 8
 y_2 <= 26
 x_3 <= 8
 y_3 <= 26
 x_4 <= 8
 y_4 <= 26
 x_5 <= 8
 y_5 <= 26
 x_6 <= 8
 y_6 <= 26
 11 <= height <= 29
Binaries
 delta_0_0_0 delta_0_0_1 delta_0_0_2 delta_0_0_3 delta_0_1_0 delta_0_1_1
 delta_0_1_2 delta_0_1_3 delta_0_2_0 delta_0_2_1 delta_0_2_2 delta_0_2_3
 delta_0_3_0 delta_0_3_1 delta_0_3_2 delta_0_3_3 delta_0_4_0 delta_0_4_1
 delta_0_4_2 delta_0_4_3 delta_0_5_0 delta_0_5_1 delta_0_5_2 delta_0_5_3
 delta_0_6_0 delta_0_6_1 delta_0_6_2 delta_0_6_3 delta_1_0_0 delta_1_0_1
 delta_1_0_2 delta_1_0_3 delta_1_1_0 delta_1_1_1 delta_1_1_2 delta_1_1_3
 delta_1_2_0 delta_1_2_1 delta_1_2_2 delta_1_2_3 delta_1_3_0 delta_1_3_1
 delta_1_3_2 delta_1_3_3 delta_1_4_0 delta_1_4_1 delta_1_4_2 delta_1_4_3
 delta_1_5_0 delta_1_5_1 delta_1_5_2 delta_1_5_3 delta_1_6_0 delta_1_6_1
 delta_1_6_2 delta_1_6_3 delta_2_0_0 delta_2_0_1 delta_2_0_2 delta_2_0_3
 delta_2_1_0 delta_2_1_1 delta_2_1_2 delta_2_1_3 delta_2_2_0 delta_2_2_1
 delta_2_2_2 delta_2_2_3 delta_2_3_0 delta_2_3_1 delta_2_3_2 delta_2_3_3
 delta_2_4_0 delta_2_4_1 delta_2_4_2 delta_2_4_3 delta_2_5_0 delta_2_5_1
 delta_2_5_2 delta_2_5_3 delta_2_6_0 delta_2_6_1 delta_2_6_2 delta_2_6_3
 delta_3_0_0 delta_3_0_1 delta_3_0_2 delta_3_0_3 delta_3_1_0 delta_3_1_1
 delta_3_1_2 delta_3_1_3 delta_3_2_0 delta_3_2_1 delta_3_2_2 delta_3_2_3
 delta_3_3_0 delta_3_3_1 delta_3_3_2 delta_3_3_3 delta_3_4_0 delta_3_4_1
 delta_3_4_2 delta_3_4_3 delta_3_5_0 delta_3_5_1 delta_3_5_2 delta_3_5_3
 delta_3_6_0 delta_3_6_1 delta_3_6_2 delta_3_6_3 delta_4_0_0 delta_4_0_1
 delta_4_0_2 delta_4_0_3 delta_4_1_0 delta_4_1_1 delta_4_1_2 delta_4_1_3
 delta_4_2_0 delta_4_2_1 delta_4_2_2 delta_4_2_3 delta_4_3_0 delta_4_3_1
 delta_4_3_2 delta_4_3_3 delta_4_4_0 delta_4_4_1 delta_4_4_2 delta_4_4_3
 delta_4_5_0 delta_4_5_1 delta_4_5_2 delta_4_5_3 delta_4_6_0 delta_4_6_1
 delta_4_6_2 delta_4_6_3 delta_5_0_0 delta_5_0_1 delta_5_0_2 delta_5_0_3
 delta_5_1_0 delta_5_1_1 delta_5_1_2 delta_5_1_3 delta_5_2_0 delta_5_2_1
 delta_5_2_2 delta_5_2_3 delta_5_3_0 delta_5_3_1 delta_5_3_2 delta_5_3_3
 delta_5_4_0 delta_5_4_1 delta_5_4_2 delta_5_4_3 delta_5_5_0 delta_5_5_1
 delta_5_5_2 delta_5_5_3 delta_5_6_0 delta_5_6_1 delta_5_6_2 delta_5_6_3
 delta_6_0_0 delta_6_0_1 delta_6_0_2 delta_6_0_3 delta_6_1_0 delta_6_1_1
 delta_6_1_2 delta_6_1_3 delta_6_2_0 delta_6_2_1 delta_6_2_2 delta_6_2_3
 delta_6_3_0 delta_6_3_1 delta_6_3_2 delta_6_3_3 delta_6_4_0 delta_6_4_1
 delta_6_4_2 delta_6_4_3 delta_6_5_0 delta_6_5_1 delta_6_5_2 delta_6_5_3
 delta_6_6_0 delta_6_6_1 delta_6_6_2 delta_6_6_3
Generals
 x_0 y_0 x_1 y_1 x_2 y_2 x_3 y_3 x_4 y_4 x_5 y_5 x_6 y_6 height
End
