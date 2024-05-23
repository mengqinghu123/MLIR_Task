module {
  func.func @matmul(%arg0: memref<16384x16384xi32>, %arg1: memref<16384x16384xi32>, %arg2: memref<16384x16384xi32>) -> memref<16384x16384xi32> attributes {llvm.emit_c_interface} {
    %alloc = memref.alloc() {alignment = 64 : i64} : memref<16384x16384xi32>
    memref.copy %arg2, %alloc : memref<16384x16384xi32> to memref<16384x16384xi32>
    affine.for %arg3 = 0 to 16384 {
      affine.for %arg4 = 0 to 16384 {
        affine.for %arg5 = 0 to 16384 {
          %0 = affine.load %arg0[%arg3, %arg4] : memref<16384x16384xi32>
          %1 = affine.load %arg1[%arg4, %arg5] : memref<16384x16384xi32>
          %2 = affine.load %alloc[%arg3, %arg5] : memref<16384x16384xi32>
          %3 = arith.muli %0, %1 : i32
          %4 = arith.addi %2, %3 : i32
          affine.store %4, %alloc[%arg3, %arg5] : memref<16384x16384xi32>
        }
      }
    }
    return %alloc : memref<16384x16384xi32>
  }
}

