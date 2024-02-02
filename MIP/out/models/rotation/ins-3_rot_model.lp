\ Model VLSI_Design_rot
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  height
Subject To
 square_block_0: rotation_0 = 0
 square_block_4: rotation_4 = 0
 symmetry_break_x: x_5 = 0
 symmetry_break_y: y_5 = 0
 area_low: 10 height >= 100
 area_up: 10 height <= 300
 w_overflow_0: x_0 <= 7
 h_overflow_0: y_0 - height <= -3
 w_overflow_1: x_1 + rotation_1 <= 7
 h_overflow_1: y_1 - height - rotation_1 <= -4
 w_overflow_2: x_2 + 3 rotation_2 <= 7
 h_overflow_2: y_2 - height - 3 rotation_2 <= -6
 w_overflow_3: x_3 + 4 rotation_3 <= 7
 h_overflow_3: y_3 - height - 4 rotation_3 <= -7
 w_overflow_4: x_4 <= 6
 h_overflow_4: y_4 - height <= -4
 w_overflow_5: x_5 + 2 rotation_5 <= 6
 h_overflow_5: y_5 - height - 2 rotation_5 <= -6
 hc1_0_1: x_0 - x_1 - 10 delta_0_1_0 <= -3
 hc2_0_1: - x_0 + x_1 - 10 delta_0_1_2 + rotation_1 <= -3
 hc1_0_2: x_0 - x_2 - 10 delta_0_2_0 <= -3
 hc2_0_2: - x_0 + x_2 - 10 delta_0_2_2 + 3 rotation_2 <= -3
 hc1_0_3: x_0 - x_3 - 10 delta_0_3_0 <= -3
 hc2_0_3: - x_0 + x_3 - 10 delta_0_3_2 + 4 rotation_3 <= -3
 hc1_0_4: x_0 - x_4 - 10 delta_0_4_0 <= -3
 hc2_0_4: - x_0 + x_4 - 10 delta_0_4_2 <= -4
 hc1_0_5: x_0 - x_5 - 10 delta_0_5_0 <= -3
 hc2_0_5: - x_0 + x_5 - 10 delta_0_5_2 + 2 rotation_5 <= -4
 hc1_1_2: x_1 - x_2 - 10 delta_1_2_0 + rotation_1 <= -3
 hc2_1_2: - x_1 + x_2 - 10 delta_1_2_2 + 3 rotation_2 <= -3
 hc1_1_3: x_1 - x_3 - 10 delta_1_3_0 + rotation_1 <= -3
 hc2_1_3: - x_1 + x_3 - 10 delta_1_3_2 + 4 rotation_3 <= -3
 hc1_1_4: x_1 - x_4 - 10 delta_1_4_0 + rotation_1 <= -3
 hc2_1_4: - x_1 + x_4 - 10 delta_1_4_2 <= -4
 hc1_1_5: x_1 - x_5 - 10 delta_1_5_0 + rotation_1 <= -3
 hc2_1_5: - x_1 + x_5 - 10 delta_1_5_2 + 2 rotation_5 <= -4
 hc1_2_3: x_2 - x_3 - 10 delta_2_3_0 + 3 rotation_2 <= -3
 hc2_2_3: - x_2 + x_3 - 10 delta_2_3_2 + 4 rotation_3 <= -3
 hc1_2_4: x_2 - x_4 - 10 delta_2_4_0 + 3 rotation_2 <= -3
 hc2_2_4: - x_2 + x_4 - 10 delta_2_4_2 <= -4
 hc1_2_5: x_2 - x_5 - 10 delta_2_5_0 + 3 rotation_2 <= -3
 hc2_2_5: - x_2 + x_5 - 10 delta_2_5_2 + 2 rotation_5 <= -4
 hc1_3_4: x_3 - x_4 - 10 delta_3_4_0 + 4 rotation_3 <= -3
 hc2_3_4: - x_3 + x_4 - 10 delta_3_4_2 <= -4
 hc1_3_5: x_3 - x_5 - 10 delta_3_5_0 + 4 rotation_3 <= -3
 hc2_3_5: - x_3 + x_5 - 10 delta_3_5_2 + 2 rotation_5 <= -4
 hc1_4_5: x_4 - x_5 - 10 delta_4_5_0 <= -4
 hc2_4_5: - x_4 + x_5 - 10 delta_4_5_2 + 2 rotation_5 <= -4
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
 vc1_0_1: y_0 - y_1 + [ - height * delta_0_1_1 ] <= -3
 vc2_0_1: - y_0 + y_1 - rotation_1 + [ - height * delta_0_1_3 ] <= -4
 vc1_0_2: y_0 - y_2 + [ - height * delta_0_2_1 ] <= -3
 vc2_0_2: - y_0 + y_2 - 3 rotation_2 + [ - height * delta_0_2_3 ] <= -6
 vc1_0_3: y_0 - y_3 + [ - height * delta_0_3_1 ] <= -3
 vc2_0_3: - y_0 + y_3 - 4 rotation_3 + [ - height * delta_0_3_3 ] <= -7
 vc1_0_4: y_0 - y_4 + [ - height * delta_0_4_1 ] <= -3
 vc2_0_4: - y_0 + y_4 + [ - height * delta_0_4_3 ] <= -4
 vc1_0_5: y_0 - y_5 + [ - height * delta_0_5_1 ] <= -3
 vc2_0_5: - y_0 + y_5 - 2 rotation_5 + [ - height * delta_0_5_3 ] <= -6
 vc1_1_2: y_1 - y_2 - rotation_1 + [ - height * delta_1_2_1 ] <= -4
 vc2_1_2: - y_1 + y_2 - 3 rotation_2 + [ - height * delta_1_2_3 ] <= -6
 vc1_1_3: y_1 - y_3 - rotation_1 + [ - height * delta_1_3_1 ] <= -4
 vc2_1_3: - y_1 + y_3 - 4 rotation_3 + [ - height * delta_1_3_3 ] <= -7
 vc1_1_4: y_1 - y_4 - rotation_1 + [ - height * delta_1_4_1 ] <= -4
 vc2_1_4: - y_1 + y_4 + [ - height * delta_1_4_3 ] <= -4
 vc1_1_5: y_1 - y_5 - rotation_1 + [ - height * delta_1_5_1 ] <= -4
 vc2_1_5: - y_1 + y_5 - 2 rotation_5 + [ - height * delta_1_5_3 ] <= -6
 vc1_2_3: y_2 - y_3 - 3 rotation_2 + [ - height * delta_2_3_1 ] <= -6
 vc2_2_3: - y_2 + y_3 - 4 rotation_3 + [ - height * delta_2_3_3 ] <= -7
 vc1_2_4: y_2 - y_4 - 3 rotation_2 + [ - height * delta_2_4_1 ] <= -6
 vc2_2_4: - y_2 + y_4 + [ - height * delta_2_4_3 ] <= -4
 vc1_2_5: y_2 - y_5 - 3 rotation_2 + [ - height * delta_2_5_1 ] <= -6
 vc2_2_5: - y_2 + y_5 - 2 rotation_5 + [ - height * delta_2_5_3 ] <= -6
 vc1_3_4: y_3 - y_4 - 4 rotation_3 + [ - height * delta_3_4_1 ] <= -7
 vc2_3_4: - y_3 + y_4 + [ - height * delta_3_4_3 ] <= -4
 vc1_3_5: y_3 - y_5 - 4 rotation_3 + [ - height * delta_3_5_1 ] <= -7
 vc2_3_5: - y_3 + y_5 - 2 rotation_5 + [ - height * delta_3_5_3 ] <= -6
 vc1_4_5: y_4 - y_5 + [ - height * delta_4_5_1 ] <= -4
 vc2_4_5: - y_4 + y_5 - 2 rotation_5 + [ - height * delta_4_5_3 ] <= -6
Bounds
 x_0 <= 7
 y_0 <= 27
 x_1 <= 7
 y_1 <= 27
 x_2 <= 7
 y_2 <= 27
 x_3 <= 7
 y_3 <= 27
 x_4 <= 7
 y_4 <= 27
 x_5 <= 7
 y_5 <= 27
 10 <= height <= 30
Binaries
 delta_0_0_0 delta_0_0_1 delta_0_0_2 delta_0_0_3 delta_0_1_0 delta_0_1_1
 delta_0_1_2 delta_0_1_3 delta_0_2_0 delta_0_2_1 delta_0_2_2 delta_0_2_3
 delta_0_3_0 delta_0_3_1 delta_0_3_2 delta_0_3_3 delta_0_4_0 delta_0_4_1
 delta_0_4_2 delta_0_4_3 delta_0_5_0 delta_0_5_1 delta_0_5_2 delta_0_5_3
 delta_1_0_0 delta_1_0_1 delta_1_0_2 delta_1_0_3 delta_1_1_0 delta_1_1_1
 delta_1_1_2 delta_1_1_3 delta_1_2_0 delta_1_2_1 delta_1_2_2 delta_1_2_3
 delta_1_3_0 delta_1_3_1 delta_1_3_2 delta_1_3_3 delta_1_4_0 delta_1_4_1
 delta_1_4_2 delta_1_4_3 delta_1_5_0 delta_1_5_1 delta_1_5_2 delta_1_5_3
 delta_2_0_0 delta_2_0_1 delta_2_0_2 delta_2_0_3 delta_2_1_0 delta_2_1_1
 delta_2_1_2 delta_2_1_3 delta_2_2_0 delta_2_2_1 delta_2_2_2 delta_2_2_3
 delta_2_3_0 delta_2_3_1 delta_2_3_2 delta_2_3_3 delta_2_4_0 delta_2_4_1
 delta_2_4_2 delta_2_4_3 delta_2_5_0 delta_2_5_1 delta_2_5_2 delta_2_5_3
 delta_3_0_0 delta_3_0_1 delta_3_0_2 delta_3_0_3 delta_3_1_0 delta_3_1_1
 delta_3_1_2 delta_3_1_3 delta_3_2_0 delta_3_2_1 delta_3_2_2 delta_3_2_3
 delta_3_3_0 delta_3_3_1 delta_3_3_2 delta_3_3_3 delta_3_4_0 delta_3_4_1
 delta_3_4_2 delta_3_4_3 delta_3_5_0 delta_3_5_1 delta_3_5_2 delta_3_5_3
 delta_4_0_0 delta_4_0_1 delta_4_0_2 delta_4_0_3 delta_4_1_0 delta_4_1_1
 delta_4_1_2 delta_4_1_3 delta_4_2_0 delta_4_2_1 delta_4_2_2 delta_4_2_3
 delta_4_3_0 delta_4_3_1 delta_4_3_2 delta_4_3_3 delta_4_4_0 delta_4_4_1
 delta_4_4_2 delta_4_4_3 delta_4_5_0 delta_4_5_1 delta_4_5_2 delta_4_5_3
 delta_5_0_0 delta_5_0_1 delta_5_0_2 delta_5_0_3 delta_5_1_0 delta_5_1_1
 delta_5_1_2 delta_5_1_3 delta_5_2_0 delta_5_2_1 delta_5_2_2 delta_5_2_3
 delta_5_3_0 delta_5_3_1 delta_5_3_2 delta_5_3_3 delta_5_4_0 delta_5_4_1
 delta_5_4_2 delta_5_4_3 delta_5_5_0 delta_5_5_1 delta_5_5_2 delta_5_5_3
 rotation_0 rotation_1 rotation_2 rotation_3 rotation_4 rotation_5
Generals
 x_0 y_0 x_1 y_1 x_2 y_2 x_3 y_3 x_4 y_4 x_5 y_5 height
End
