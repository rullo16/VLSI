\ Model VLSI_Design_rot
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  height
Subject To
 square_block_0: rotation_0 = 0
 square_block_3: rotation_3 = 0
 symmetry_break_x: x_3 = 0
 symmetry_break_y: y_3 = 0
 area_low: 8 height >= 64
 area_up: 8 height <= 128
 w_overflow_0: x_0 <= 5
 h_overflow_0: y_0 - height <= -3
 w_overflow_1: x_1 + 2 rotation_1 <= 5
 h_overflow_1: y_1 - height - 2 rotation_1 <= -5
 w_overflow_2: x_2 - 2 rotation_2 <= 3
 h_overflow_2: y_2 - height + 2 rotation_2 <= -3
 w_overflow_3: x_3 <= 3
 h_overflow_3: y_3 - height <= -5
 hc1_0_1: x_0 - x_1 - 8 delta_0_1_0 <= -3
 hc2_0_1: - x_0 + x_1 - 8 delta_0_1_2 + 2 rotation_1 <= -3
 hc1_0_2: x_0 - x_2 - 8 delta_0_2_0 <= -3
 hc2_0_2: - x_0 + x_2 - 8 delta_0_2_2 - 2 rotation_2 <= -5
 hc1_0_3: x_0 - x_3 - 8 delta_0_3_0 <= -3
 hc2_0_3: - x_0 + x_3 - 8 delta_0_3_2 <= -5
 hc1_1_2: x_1 - x_2 - 8 delta_1_2_0 + 2 rotation_1 <= -3
 hc2_1_2: - x_1 + x_2 - 8 delta_1_2_2 - 2 rotation_2 <= -5
 hc1_1_3: x_1 - x_3 - 8 delta_1_3_0 + 2 rotation_1 <= -3
 hc2_1_3: - x_1 + x_3 - 8 delta_1_3_2 <= -5
 hc1_2_3: x_2 - x_3 - 8 delta_2_3_0 - 2 rotation_2 <= -5
 hc2_2_3: - x_2 + x_3 - 8 delta_2_3_2 <= -5
 no_overlap_0_0: delta_0_0_0 + delta_0_0_1 + delta_0_0_2 + delta_0_0_3
   <= 3
 no_overlap_0_1: delta_0_1_0 + delta_0_1_1 + delta_0_1_2 + delta_0_1_3
   <= 3
 no_overlap_0_2: delta_0_2_0 + delta_0_2_1 + delta_0_2_2 + delta_0_2_3
   <= 3
 no_overlap_0_3: delta_0_3_0 + delta_0_3_1 + delta_0_3_2 + delta_0_3_3
   <= 3
 no_overlap_1_0: delta_1_0_0 + delta_1_0_1 + delta_1_0_2 + delta_1_0_3
   <= 3
 no_overlap_1_1: delta_1_1_0 + delta_1_1_1 + delta_1_1_2 + delta_1_1_3
   <= 3
 no_overlap_1_2: delta_1_2_0 + delta_1_2_1 + delta_1_2_2 + delta_1_2_3
   <= 3
 no_overlap_1_3: delta_1_3_0 + delta_1_3_1 + delta_1_3_2 + delta_1_3_3
   <= 3
 no_overlap_2_0: delta_2_0_0 + delta_2_0_1 + delta_2_0_2 + delta_2_0_3
   <= 3
 no_overlap_2_1: delta_2_1_0 + delta_2_1_1 + delta_2_1_2 + delta_2_1_3
   <= 3
 no_overlap_2_2: delta_2_2_0 + delta_2_2_1 + delta_2_2_2 + delta_2_2_3
   <= 3
 no_overlap_2_3: delta_2_3_0 + delta_2_3_1 + delta_2_3_2 + delta_2_3_3
   <= 3
 no_overlap_3_0: delta_3_0_0 + delta_3_0_1 + delta_3_0_2 + delta_3_0_3
   <= 3
 no_overlap_3_1: delta_3_1_0 + delta_3_1_1 + delta_3_1_2 + delta_3_1_3
   <= 3
 no_overlap_3_2: delta_3_2_0 + delta_3_2_1 + delta_3_2_2 + delta_3_2_3
   <= 3
 no_overlap_3_3: delta_3_3_0 + delta_3_3_1 + delta_3_3_2 + delta_3_3_3
   <= 3
 vc1_0_1: y_0 - y_1 + [ - height * delta_0_1_1 ] <= -3
 vc2_0_1: - y_0 + y_1 - 2 rotation_1 + [ - height * delta_0_1_3 ] <= -5
 vc1_0_2: y_0 - y_2 + [ - height * delta_0_2_1 ] <= -3
 vc2_0_2: - y_0 + y_2 + 2 rotation_2 + [ - height * delta_0_2_3 ] <= -3
 vc1_0_3: y_0 - y_3 + [ - height * delta_0_3_1 ] <= -3
 vc2_0_3: - y_0 + y_3 + [ - height * delta_0_3_3 ] <= -5
 vc1_1_2: y_1 - y_2 - 2 rotation_1 + [ - height * delta_1_2_1 ] <= -5
 vc2_1_2: - y_1 + y_2 + 2 rotation_2 + [ - height * delta_1_2_3 ] <= -3
 vc1_1_3: y_1 - y_3 - 2 rotation_1 + [ - height * delta_1_3_1 ] <= -5
 vc2_1_3: - y_1 + y_3 + [ - height * delta_1_3_3 ] <= -5
 vc1_2_3: y_2 - y_3 + 2 rotation_2 + [ - height * delta_2_3_1 ] <= -3
 vc2_2_3: - y_2 + y_3 + [ - height * delta_2_3_3 ] <= -5
Bounds
 x_0 <= 5
 y_0 <= 13
 x_1 <= 5
 y_1 <= 13
 x_2 <= 5
 y_2 <= 13
 x_3 <= 5
 y_3 <= 13
 8 <= height <= 16
Binaries
 delta_0_0_0 delta_0_0_1 delta_0_0_2 delta_0_0_3 delta_0_1_0 delta_0_1_1
 delta_0_1_2 delta_0_1_3 delta_0_2_0 delta_0_2_1 delta_0_2_2 delta_0_2_3
 delta_0_3_0 delta_0_3_1 delta_0_3_2 delta_0_3_3 delta_1_0_0 delta_1_0_1
 delta_1_0_2 delta_1_0_3 delta_1_1_0 delta_1_1_1 delta_1_1_2 delta_1_1_3
 delta_1_2_0 delta_1_2_1 delta_1_2_2 delta_1_2_3 delta_1_3_0 delta_1_3_1
 delta_1_3_2 delta_1_3_3 delta_2_0_0 delta_2_0_1 delta_2_0_2 delta_2_0_3
 delta_2_1_0 delta_2_1_1 delta_2_1_2 delta_2_1_3 delta_2_2_0 delta_2_2_1
 delta_2_2_2 delta_2_2_3 delta_2_3_0 delta_2_3_1 delta_2_3_2 delta_2_3_3
 delta_3_0_0 delta_3_0_1 delta_3_0_2 delta_3_0_3 delta_3_1_0 delta_3_1_1
 delta_3_1_2 delta_3_1_3 delta_3_2_0 delta_3_2_1 delta_3_2_2 delta_3_2_3
 delta_3_3_0 delta_3_3_1 delta_3_3_2 delta_3_3_3 rotation_0 rotation_1
 rotation_2 rotation_3
Generals
 x_0 y_0 x_1 y_1 x_2 y_2 x_3 y_3 height
End
