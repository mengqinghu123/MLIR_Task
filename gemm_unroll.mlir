#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module {
  func.func @matmul(%arg0: memref<16384x16384xi32>, %arg1: memref<16384x16384xi32>, %arg2: memref<16384x16384xi32>) -> memref<16384x16384xi32> attributes {llvm.emit_c_interface} {
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<16384x16384xi32>
    memref.copy %arg2, %alloc : memref<16384x16384xi32> to memref<16384x16384xi32>
    affine.for %arg3 = 0 to 16384 {
      affine.for %arg4 = 0 to 16384 {
        affine.for %arg5 = 0 to 16384 step 4 {
          %0 = affine.load %arg0[%arg3, %arg4] : memref<16384x16384xi32>
          %1 = affine.load %arg1[%arg4, %arg5] : memref<16384x16384xi32>
          %2 = affine.load %alloc[%arg3, %arg5] : memref<16384x16384xi32>
          %3 = arith.muli %0, %1 : i32
          %4 = arith.addi %2, %3 : i32
          affine.store %4, %alloc[%arg3, %arg5] : memref<16384x16384xi32>
          %5 = affine.apply #map(%arg5)
          %6 = affine.load %arg0[%arg3, %arg4] : memref<16384x16384xi32>
          %7 = affine.load %arg1[%arg4, %5] : memref<16384x16384xi32>
          %8 = affine.load %alloc[%arg3, %5] : memref<16384x16384xi32>
          %9 = arith.muli %6, %7 : i32
          %10 = arith.addi %8, %9 : i32
          affine.store %10, %alloc[%arg3, %5] : memref<16384x16384xi32>
          %11 = affine.apply #map1(%arg5)
          %12 = affine.load %arg0[%arg3, %arg4] : memref<16384x16384xi32>
          %13 = affine.load %arg1[%arg4, %11] : memref<16384x16384xi32>
          %14 = affine.load %alloc[%arg3, %11] : memref<16384x16384xi32>
          %15 = arith.muli %12, %13 : i32
          %16 = arith.addi %14, %15 : i32
          affine.store %16, %alloc[%arg3, %11] : memref<16384x16384xi32>
          %17 = affine.apply #map2(%arg5)
          %18 = affine.load %arg0[%arg3, %arg4] : memref<16384x16384xi32>
          %19 = affine.load %arg1[%arg4, %17] : memref<16384x16384xi32>
          %20 = affine.load %alloc[%arg3, %17] : memref<16384x16384xi32>
          %21 = arith.muli %18, %19 : i32
          %22 = arith.addi %20, %21 : i32
          affine.store %22, %alloc[%arg3, %17] : memref<16384x16384xi32>
        }
      }
    }
    return %alloc : memref<16384x16384xi32>
  }
}

