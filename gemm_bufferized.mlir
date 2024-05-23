#map = affine_map<(d0, d1, d2) -> (d0, d1)>
#map1 = affine_map<(d0, d1, d2) -> (d1, d2)>
#map2 = affine_map<(d0, d1, d2) -> (d0, d2)>
module {
  func.func @matmul(%arg0: memref<16384x16384xi32>, %arg1: memref<16384x16384xi32>, %arg2: memref<16384x16384xi32>) -> memref<16384x16384xi32> attributes {llvm.emit_c_interface} {
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<16384x16384xi32>
    memref.copy %arg2, %alloc : memref<16384x16384xi32> to memref<16384x16384xi32>
    linalg.generic {indexing_maps = [#map, #map1, #map2], iterator_types = ["parallel", "parallel", "reduction"]} ins(%arg0, %arg1 : memref<16384x16384xi32>, memref<16384x16384xi32>) outs(%alloc : memref<16384x16384xi32>) {
    ^bb0(%in: i32, %in_0: i32, %out: i32):
      %0 = arith.muli %in, %in_0 : i32
      %1 = arith.addi %out, %0 : i32
      linalg.yield %1 : i32
    }
    return %alloc : memref<16384x16384xi32>
  }
}

