; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

declare ptr @malloc(i64)

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @matmul(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20) {
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %14, 0
  %23 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, ptr %15, 1
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %23, i64 %16, 2
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, i64 %17, 3, 0
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 %19, 4, 0
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, i64 %18, 3, 1
  %28 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, i64 %20, 4, 1
  %29 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %7, 0
  %30 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, ptr %8, 1
  %31 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %30, i64 %9, 2
  %32 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, i64 %10, 3, 0
  %33 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, i64 %12, 4, 0
  %34 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, i64 %11, 3, 1
  %35 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %34, i64 %13, 4, 1
  %36 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %0, 0
  %37 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %36, ptr %1, 1
  %38 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, i64 %2, 2
  %39 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %38, i64 %3, 3, 0
  %40 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %39, i64 %5, 4, 0
  %41 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, i64 %4, 3, 1
  %42 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, i64 %6, 4, 1
  %43 = call ptr @malloc(i64 add (i64 ptrtoint (ptr getelementptr (i32, ptr null, i64 268435456) to i64), i64 64))
  %44 = ptrtoint ptr %43 to i64
  %45 = add i64 %44, 63
  %46 = urem i64 %45, 64
  %47 = sub i64 %45, %46
  %48 = inttoptr i64 %47 to ptr
  %49 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %43, 0
  %50 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %49, ptr %48, 1
  %51 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %50, i64 0, 2
  %52 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %51, i64 16384, 3, 0
  %53 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %52, i64 16384, 3, 1
  %54 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %53, i64 16384, 4, 0
  %55 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %54, i64 1, 4, 1
  %56 = mul i64 %17, 1
  %57 = mul i64 %56, %18
  %58 = mul i64 %57, ptrtoint (ptr getelementptr (i32, ptr null, i32 1) to i64)
  %59 = getelementptr i32, ptr %15, i64 %16
  %60 = getelementptr i32, ptr %48, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr %60, ptr %59, i64 %58, i1 false)
  br label %61

61:                                               ; preds = %147, %21
  %62 = phi i64 [ %148, %147 ], [ 0, %21 ]
  %63 = icmp slt i64 %62, 16384
  br i1 %63, label %64, label %149

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %145, %64
  %66 = phi i64 [ %146, %145 ], [ 0, %64 ]
  %67 = icmp slt i64 %66, 16384
  br i1 %67, label %68, label %147

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %72, %68
  %70 = phi i64 [ %144, %72 ], [ 0, %68 ]
  %71 = icmp slt i64 %70, 16384
  br i1 %71, label %72, label %145

72:                                               ; preds = %69
  %73 = mul i64 %62, 16384
  %74 = add i64 %73, %66
  %75 = getelementptr i32, ptr %1, i64 %74
  %76 = load i32, ptr %75, align 4
  %77 = mul i64 %66, 16384
  %78 = add i64 %77, %70
  %79 = getelementptr i32, ptr %8, i64 %78
  %80 = load i32, ptr %79, align 4
  %81 = mul i64 %62, 16384
  %82 = add i64 %81, %70
  %83 = getelementptr i32, ptr %48, i64 %82
  %84 = load i32, ptr %83, align 4
  %85 = mul i32 %76, %80
  %86 = add i32 %84, %85
  %87 = mul i64 %62, 16384
  %88 = add i64 %87, %70
  %89 = getelementptr i32, ptr %48, i64 %88
  store i32 %86, ptr %89, align 4
  %90 = add i64 %70, 1
  %91 = mul i64 %62, 16384
  %92 = add i64 %91, %66
  %93 = getelementptr i32, ptr %1, i64 %92
  %94 = load i32, ptr %93, align 4
  %95 = mul i64 %66, 16384
  %96 = add i64 %95, %90
  %97 = getelementptr i32, ptr %8, i64 %96
  %98 = load i32, ptr %97, align 4
  %99 = mul i64 %62, 16384
  %100 = add i64 %99, %90
  %101 = getelementptr i32, ptr %48, i64 %100
  %102 = load i32, ptr %101, align 4
  %103 = mul i32 %94, %98
  %104 = add i32 %102, %103
  %105 = mul i64 %62, 16384
  %106 = add i64 %105, %90
  %107 = getelementptr i32, ptr %48, i64 %106
  store i32 %104, ptr %107, align 4
  %108 = add i64 %70, 2
  %109 = mul i64 %62, 16384
  %110 = add i64 %109, %66
  %111 = getelementptr i32, ptr %1, i64 %110
  %112 = load i32, ptr %111, align 4
  %113 = mul i64 %66, 16384
  %114 = add i64 %113, %108
  %115 = getelementptr i32, ptr %8, i64 %114
  %116 = load i32, ptr %115, align 4
  %117 = mul i64 %62, 16384
  %118 = add i64 %117, %108
  %119 = getelementptr i32, ptr %48, i64 %118
  %120 = load i32, ptr %119, align 4
  %121 = mul i32 %112, %116
  %122 = add i32 %120, %121
  %123 = mul i64 %62, 16384
  %124 = add i64 %123, %108
  %125 = getelementptr i32, ptr %48, i64 %124
  store i32 %122, ptr %125, align 4
  %126 = add i64 %70, 3
  %127 = mul i64 %62, 16384
  %128 = add i64 %127, %66
  %129 = getelementptr i32, ptr %1, i64 %128
  %130 = load i32, ptr %129, align 4
  %131 = mul i64 %66, 16384
  %132 = add i64 %131, %126
  %133 = getelementptr i32, ptr %8, i64 %132
  %134 = load i32, ptr %133, align 4
  %135 = mul i64 %62, 16384
  %136 = add i64 %135, %126
  %137 = getelementptr i32, ptr %48, i64 %136
  %138 = load i32, ptr %137, align 4
  %139 = mul i32 %130, %134
  %140 = add i32 %138, %139
  %141 = mul i64 %62, 16384
  %142 = add i64 %141, %126
  %143 = getelementptr i32, ptr %48, i64 %142
  store i32 %140, ptr %143, align 4
  %144 = add i64 %70, 4
  br label %69

145:                                              ; preds = %69
  %146 = add i64 %66, 1
  br label %65

147:                                              ; preds = %65
  %148 = add i64 %62, 1
  br label %61

149:                                              ; preds = %61
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %55
}

define void @_mlir_ciface_matmul(ptr %0, ptr %1, ptr %2, ptr %3) {
  %5 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %1, align 8
  %6 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 0
  %7 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 1
  %8 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 2
  %9 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 3, 0
  %10 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 3, 1
  %11 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 4, 0
  %12 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 4, 1
  %13 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %2, align 8
  %14 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 0
  %15 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 1
  %16 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 2
  %17 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 3, 0
  %18 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 3, 1
  %19 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 4, 0
  %20 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 4, 1
  %21 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %3, align 8
  %22 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 0
  %23 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 1
  %24 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 2
  %25 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 3, 0
  %26 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 3, 1
  %27 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 4, 0
  %28 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, 4, 1
  %29 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @matmul(ptr %6, ptr %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, ptr %22, ptr %23, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28)
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, ptr %0, align 8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
