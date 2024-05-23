#map0 = affine_map<(d0, d1, d2) -> (d0, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d1)>
module {
  func.func @matmul(%A: tensor<16384x16384xi32>, %B: tensor<16384x16384xi32>, %C: tensor<16384x16384xi32>) -> tensor<16384x16384xi32> attributes {llvm.emit_c_interface} {
    %D = linalg.generic {indexing_maps = [#map2, #map1, #map0],
                         iterator_types = ["parallel", "parallel", "reduction"]}
        ins(%A, %B: tensor<16384x16384xi32>, tensor<16384x16384xi32>) outs(%C: tensor<16384x16384xi32>) {
        ^bb0(%a: i32, %b: i32, %c: i32):
          %1 = arith.muli %a, %b : i32
          %2 = arith.addi %c, %1 : i32
          linalg.yield %2 : i32
      } -> tensor<16384x16384xi32>
    return %D: tensor<16384x16384xi32>
  }
}
