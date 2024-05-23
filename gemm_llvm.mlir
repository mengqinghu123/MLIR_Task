module {
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.func @matmul(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr, %arg15: !llvm.ptr, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg14, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg15, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg16, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg17, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg19, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg18, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg20, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %arg0, %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %arg1, %17[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.insertvalue %arg2, %18[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.insertvalue %arg3, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.insertvalue %arg5, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.insertvalue %arg4, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.insertvalue %arg6, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.constant(16384 : index) : i64
    %25 = llvm.mlir.constant(16384 : index) : i64
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.mlir.constant(268435456 : index) : i64
    %28 = llvm.mlir.zero : !llvm.ptr
    %29 = llvm.getelementptr %28[%27] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %30 = llvm.ptrtoint %29 : !llvm.ptr to i64
    %31 = llvm.mlir.constant(64 : index) : i64
    %32 = llvm.add %30, %31 : i64
    %33 = llvm.call @malloc(%32) : (i64) -> !llvm.ptr
    %34 = llvm.ptrtoint %33 : !llvm.ptr to i64
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.sub %31, %35 : i64
    %37 = llvm.add %34, %36 : i64
    %38 = llvm.urem %37, %31  : i64
    %39 = llvm.sub %37, %38 : i64
    %40 = llvm.inttoptr %39 : i64 to !llvm.ptr
    %41 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %42 = llvm.insertvalue %33, %41[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %46 = llvm.insertvalue %24, %45[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.insertvalue %25, %46[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.insertvalue %25, %47[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.insertvalue %26, %48[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mul %arg17, %50 : i64
    %52 = llvm.mul %51, %arg18 : i64
    %53 = llvm.mlir.zero : !llvm.ptr
    %54 = llvm.getelementptr %53[1] : (!llvm.ptr) -> !llvm.ptr, i32
    %55 = llvm.ptrtoint %54 : !llvm.ptr to i64
    %56 = llvm.mul %52, %55 : i64
    %57 = llvm.getelementptr %arg15[%arg16] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %58 = llvm.getelementptr %40[%44] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    "llvm.intr.memcpy"(%58, %57, %56) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.mlir.constant(16384 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%59 : i64)
  ^bb1(%62: i64):  // 2 preds: ^bb0, ^bb8
    %63 = llvm.icmp "slt" %62, %60 : i64
    llvm.cond_br %63, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.mlir.constant(16384 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%64 : i64)
  ^bb3(%67: i64):  // 2 preds: ^bb2, ^bb7
    %68 = llvm.icmp "slt" %67, %65 : i64
    llvm.cond_br %68, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.mlir.constant(16384 : index) : i64
    %71 = llvm.mlir.constant(4 : index) : i64
    llvm.br ^bb5(%69 : i64)
  ^bb5(%72: i64):  // 2 preds: ^bb4, ^bb6
    %73 = llvm.icmp "slt" %72, %70 : i64
    llvm.cond_br %73, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %74 = llvm.mlir.constant(16384 : index) : i64
    %75 = llvm.mul %62, %74 : i64
    %76 = llvm.add %75, %67 : i64
    %77 = llvm.getelementptr %arg1[%76] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %78 = llvm.load %77 : !llvm.ptr -> i32
    %79 = llvm.mlir.constant(16384 : index) : i64
    %80 = llvm.mul %67, %79 : i64
    %81 = llvm.add %80, %72 : i64
    %82 = llvm.getelementptr %arg8[%81] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %83 = llvm.load %82 : !llvm.ptr -> i32
    %84 = llvm.mlir.constant(16384 : index) : i64
    %85 = llvm.mul %62, %84 : i64
    %86 = llvm.add %85, %72 : i64
    %87 = llvm.getelementptr %40[%86] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %88 = llvm.load %87 : !llvm.ptr -> i32
    %89 = llvm.mul %78, %83 : i32
    %90 = llvm.add %88, %89 : i32
    %91 = llvm.mlir.constant(16384 : index) : i64
    %92 = llvm.mul %62, %91 : i64
    %93 = llvm.add %92, %72 : i64
    %94 = llvm.getelementptr %40[%93] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %90, %94 : i32, !llvm.ptr
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.add %72, %95 : i64
    %97 = llvm.mlir.constant(16384 : index) : i64
    %98 = llvm.mul %62, %97 : i64
    %99 = llvm.add %98, %67 : i64
    %100 = llvm.getelementptr %arg1[%99] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %101 = llvm.load %100 : !llvm.ptr -> i32
    %102 = llvm.mlir.constant(16384 : index) : i64
    %103 = llvm.mul %67, %102 : i64
    %104 = llvm.add %103, %96 : i64
    %105 = llvm.getelementptr %arg8[%104] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %106 = llvm.load %105 : !llvm.ptr -> i32
    %107 = llvm.mlir.constant(16384 : index) : i64
    %108 = llvm.mul %62, %107 : i64
    %109 = llvm.add %108, %96 : i64
    %110 = llvm.getelementptr %40[%109] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %111 = llvm.load %110 : !llvm.ptr -> i32
    %112 = llvm.mul %101, %106 : i32
    %113 = llvm.add %111, %112 : i32
    %114 = llvm.mlir.constant(16384 : index) : i64
    %115 = llvm.mul %62, %114 : i64
    %116 = llvm.add %115, %96 : i64
    %117 = llvm.getelementptr %40[%116] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %113, %117 : i32, !llvm.ptr
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.add %72, %118 : i64
    %120 = llvm.mlir.constant(16384 : index) : i64
    %121 = llvm.mul %62, %120 : i64
    %122 = llvm.add %121, %67 : i64
    %123 = llvm.getelementptr %arg1[%122] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %124 = llvm.load %123 : !llvm.ptr -> i32
    %125 = llvm.mlir.constant(16384 : index) : i64
    %126 = llvm.mul %67, %125 : i64
    %127 = llvm.add %126, %119 : i64
    %128 = llvm.getelementptr %arg8[%127] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %129 = llvm.load %128 : !llvm.ptr -> i32
    %130 = llvm.mlir.constant(16384 : index) : i64
    %131 = llvm.mul %62, %130 : i64
    %132 = llvm.add %131, %119 : i64
    %133 = llvm.getelementptr %40[%132] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %134 = llvm.load %133 : !llvm.ptr -> i32
    %135 = llvm.mul %124, %129 : i32
    %136 = llvm.add %134, %135 : i32
    %137 = llvm.mlir.constant(16384 : index) : i64
    %138 = llvm.mul %62, %137 : i64
    %139 = llvm.add %138, %119 : i64
    %140 = llvm.getelementptr %40[%139] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %136, %140 : i32, !llvm.ptr
    %141 = llvm.mlir.constant(3 : index) : i64
    %142 = llvm.add %72, %141 : i64
    %143 = llvm.mlir.constant(16384 : index) : i64
    %144 = llvm.mul %62, %143 : i64
    %145 = llvm.add %144, %67 : i64
    %146 = llvm.getelementptr %arg1[%145] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %147 = llvm.load %146 : !llvm.ptr -> i32
    %148 = llvm.mlir.constant(16384 : index) : i64
    %149 = llvm.mul %67, %148 : i64
    %150 = llvm.add %149, %142 : i64
    %151 = llvm.getelementptr %arg8[%150] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %152 = llvm.load %151 : !llvm.ptr -> i32
    %153 = llvm.mlir.constant(16384 : index) : i64
    %154 = llvm.mul %62, %153 : i64
    %155 = llvm.add %154, %142 : i64
    %156 = llvm.getelementptr %40[%155] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %157 = llvm.load %156 : !llvm.ptr -> i32
    %158 = llvm.mul %147, %152 : i32
    %159 = llvm.add %157, %158 : i32
    %160 = llvm.mlir.constant(16384 : index) : i64
    %161 = llvm.mul %62, %160 : i64
    %162 = llvm.add %161, %142 : i64
    %163 = llvm.getelementptr %40[%162] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %159, %163 : i32, !llvm.ptr
    %164 = llvm.add %72, %71 : i64
    llvm.br ^bb5(%164 : i64)
  ^bb7:  // pred: ^bb5
    %165 = llvm.add %67, %66 : i64
    llvm.br ^bb3(%165 : i64)
  ^bb8:  // pred: ^bb3
    %166 = llvm.add %62, %61 : i64
    llvm.br ^bb1(%166 : i64)
  ^bb9:  // pred: ^bb1
    llvm.return %49 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
  }
  llvm.func @_mlir_ciface_matmul(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: !llvm.ptr) attributes {llvm.emit_c_interface} {
    %0 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.load %arg2 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.extractvalue %8[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.extractvalue %8[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.extractvalue %8[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.extractvalue %8[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.extractvalue %8[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.load %arg3 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.extractvalue %16[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.extractvalue %16[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.extractvalue %16[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.extractvalue %16[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.extractvalue %16[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.extractvalue %16[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.extractvalue %16[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.call @matmul(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    llvm.store %24, %arg0 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>, !llvm.ptr
    llvm.return
  }
}

