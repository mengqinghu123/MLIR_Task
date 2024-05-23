## Task2

#### Step1: Bufferization

mlir-opt -tensor-bufferize -arith-bufferize -func-bufferize -linalg-bufferize gemm.mlir -o  gemm_bufferized.mlir



#### Step2: Convert to Affine Loops

mlir-opt -convert-linalg-to-affine-loops gemm_bufferized.mlir -o gemm_affine.mlir



#### Step3: Loop-Unroll

mlir-opt -affine-loop-unroll gemm_affine.mlir -o gemm_unroll.mlir



## Task3

#### Step4: Convert to LLVM Dialect

mlir-opt  -lower-affine -convert-scf-to-cf -convert-cf-to-llvm -convert-arith-to-llvm -convert-func-to-llvm -finalize-memref-to-llvm -reconcile-unrealized-casts gemm_unroll.mlir -o gemm_llvm.mlir



#### Step5: Translate to LLVM IR

mlir-translate --mlir-to-llvmir gemm_llvm.mlir -o llvmir.ll