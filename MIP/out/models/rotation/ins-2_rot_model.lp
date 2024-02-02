\ Model VLSI_Design_rot
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  height
Subject To
 square_block_0: rotation_0 = 0
 symmetry_break_x: x_4 = 0
 symmetry_break_y: y_4 = 0
 area_low: 9 height >= 81
 area_up: 9 height <= 243
 w_overflow_0: x_0 <= 6
 h_overflow_0: y_0 - height <= -3
 w_overflow_1: x_1 + rotation_1 <= 6
 h_overflow_1: y_1 - height - rotation_1 <= -4
 w_overflow_2: x_2 + 2 rotation_2 <= 6
 h_overflow_2: y_2 - height - 2 rotation_2 <= -5
 w_overflow_3: x_3 + 3 rotation_3 <= 6
 h_overflow_3: y_3 - height - 3 rotation_3 <= -6
 w_overflow_4: x_4 + 6 rotation_4 <= 6
 h_overflow_4: y_4 - height - 6 rotation_4 <= -9
 hc1_0_1: x_0 - x_1 - 9 delta_0_1_0 <= -3
 hc2_0_1: - x_0 + x_1 - 9 delta_0_1_2 + rotation_1 <= -3
 hc1_0_2: x_0 - x_2 - 9 delta_0_2_0 <= -3
 hc2_0_2: - x_0 + x_2 - 9 delta_0_2_2 + 2 rotation_2 <= -3
 hc1_0_3: x_0 - x_3 - 9 delta_0_3_0 <= -3
 hc2_0_3: - x_0 + x_3 - 9 delta_0_3_2 + 3 rotation_3 <= -3
 hc1_0_4: x_0 - x_4 - 9 delta_0_4_0 <= -3
 hc2_0_4: - x_0 + x_4 - 9 delta_0_4_2 + 6 rotation_4 <= -3
 hc1_1_2: x_1 - x_2 - 9 delta_1_2_0 + rotation_1 <= -3
 hc2_1_2: - x_1 + x_2 - 9 delta_1_2_2 + 2 rotation_2 <= -3
 hc1_1_3: x_1 - x_3 - 9 delta_1_3_0 + rotation_1 <= -3
 hc2_1_3: - x_1 + x_3 - 9 delta_1_3_2 + 3 rotation_3 <= -3
 hc1_1_4: x_1 - x_4 - 9 delta_1_4_0 + rotation_1 <= -3
 hc2_1_4: - x_1 + x_4 - 9 delta_1_4_2 + 6 rotation_4 <= -3
 hc1_2_3: x_2 - x_3 - 9 delta_2_3_0 + 2 rotation_2 <= -3
 hc2_2_3: - x_2 + x_3 - 9 delta_2_3_2 + 3 rotation_3 <= -3
 hc1_2_4: x_2 - x_4 - 9 delta_2_4_0 + 2 rotation_2 <= -3
 hc2_2_4: - x_2 + x_4 - 9 delta_2_4_2 + 6 rotation_4 <= -3
 hc1_3_4: x_3 - x_4 - 9 delta_3_4_0 + 3 rotation_3 <= -3
 hc2_3_4: - x_3 + x_4 - 9 delta_3_4_2 + 6 rotation_4 <= -3
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
 vc1_0_1: y_0 - y_1 + [ - height * delta_0_1_1 ] <= -3
 vc2_0_1: - y_0 + y_1 - rotation_1 + [ - height * delta_0_1_3 ] <= -4
 vc1_0_2: y_0 - y_2 + [ - height * delta_0_2_1 ] <= -3
 vc2_0_2: - y_0 + y_2 - 2 rotation_2 + [ - height * delta_0_2_3 ] <= -5
 vc1_0_3: y_0 - y_3 + [ - height * delta_0_3_1 ] <= -3
 vc2_0_3: - y_0 + y_3 - 3 rotation_3 + [ - height * delta_0_3_3 ] <= -6
 vc1_0_4: y_0 - y_4 + [ - height * delta_0_4_1 ] <= -3
 vc2_0_4: - y_0 + y_4 - 6 rotation_4 + [ - height * delta_0_4_3 ] <= -9
 vc1_1_2: y_1 - y_2 - rotation_1 + [ - height * delta_1_2_1 ] <= -4
 vc2_1_2: - y_1 + y_2 - 2 rotation_2 + [ - height * delta_1_2_3 ] <= -5
 vc1_1_3: y_1 - y_3 - rotation_1 + [ - height * delta_1_3_1 ] <= -4
 vc2_1_3: - y_1 + y_3 - 3 rotation_3 + [ - height * delta_1_3_3 ] <= -6
 vc1_1_4: y_1 - y_4 - rotation_1 + [ - height * delta_1_4_1 ] <= -4
 vc2_1_4: - y_1 + y_4 - 6 rotation_4 + [ - height * delta_1_4_3 ] <= -9
 vc1_2_3: y_2 - y_3 - 2 rotation_2 + [ - height * delta_2_3_1 ] <= -5
 vc2_2_3: - y_2 + y_3 - 3 rotation_3 + [ - height * delta_2_3_3 ] <= -6
 vc1_2_4: y_2 - y_4 - 2 rotation_2 + [ - height * delta_2_4_1 ] <= -5
 vc2_2_4: - y_2 + y_4 - 6 rotation_4 + [ - height * delta_2_4_3 ] <= -9
 vc1_3_4: y_3 - y_4 - 3 rotation_3 + [ - height * delta_3_4_1 ] <= -6
 vc2_3_4: - y_3 + y_4 - 6 rotation_4 + [ - height * delta_3_4_3 ] <= -9
Bounds
 x_0 <= 6
 y_0 <= 24
 x_1 <= 6
 y_1 <= 24
 x_2 <= 6
 y_2 <= 24
 x_3 <= 6
 y_3 <= 24
 x_4 <= 6
 y_4 <= 24
 9 <= height <= 27
Binaries
 delta_0_0_0 delta_0_0_1 delta_0_0_2 delta_0_0_3 delta_0_1_0 delta_0_1_1
 delta_0_1_2 delta_0_1_3 delta_0_2_0 delta_0_2_1 delta_0_2_2 delta_0_2_3
 delta_0_3_0 delta_0_3_1 delta_0_3_2 delta_0_3_3 delta_0_4_0 delta_0_4_1
 delta_0_4_2 delta_0_4_3 delta_1_0_0 delta_1_0_1 delta_1_0_2 delta_1_0_3
 delta_1_1_0 delta_1_1_1 delta_1_1_2 delta_1_1_3 delta_1_2_0 delta_1_2_1
 delta_1_2_2 delta_1_2_3 delta_1_3_0 delta_1_3_1 delta_1_3_2 delta_1_3_3
 delta_1_4_0 delta_1_4_1 delta_1_4_2 delta_1_4_3 delta_2_0_0 delta_2_0_1
 delta_2_0_2 delta_2_0_3 delta_2_1_0 delta_2_1_1 delta_2_1_2 delta_2_1_3
 delta_2_2_0 delta_2_2_1 delta_2_2_2 delta_2_2_3 delta_2_3_0 delta_2_3_1
 delta_2_3_2 delta_2_3_3 delta_2_4_0 delta_2_4_1 delta_2_4_2 delta_2_4_3
 delta_3_0_0 delta_3_0_1 delta_3_0_2 delta_3_0_3 delta_3_1_0 delta_3_1_1
 delta_3_1_2 delta_3_1_3 delta_3_2_0 delta_3_2_1 delta_3_2_2 delta_3_2_3
 delta_3_3_0 delta_3_3_1 delta_3_3_2 delta_3_3_3 delta_3_4_0 delta_3_4_1
 delta_3_4_2 delta_3_4_3 delta_4_0_0 delta_4_0_1 delta_4_0_2 delta_4_0_3
 delta_4_1_0 delta_4_1_1 delta_4_1_2 delta_4_1_3 delta_4_2_0 delta_4_2_1
 delta_4_2_2 delta_4_2_3 delta_4_3_0 delta_4_3_1 delta_4_3_2 delta_4_3_3
 delta_4_4_0 delta_4_4_1 delta_4_4_2 delta_4_4_3 rotation_0 rotation_1
 rotation_2 rotation_3 rotation_4
Generals
 x_0 y_0 x_1 y_1 x_2 y_2 x_3 y_3 x_4 y_4 height
End
