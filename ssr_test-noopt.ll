; ModuleID = 'ssr_test.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"x = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"a = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"e = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @foo() #0 {
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  %s = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32*, align 8
  %e = alloca i32, align 4
  store i32 1, i32* %a, align 4
  store i32 2, i32* %b, align 4
  %1 = load i32, i32* %a, align 4
  %2 = load i32, i32* %b, align 4
  %3 = add nsw i32 %1, %2
  store i32 %3, i32* %x, align 4
  %4 = load i32, i32* %x, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 %4)
  %6 = load i32, i32* %b, align 4
  store i32 %6, i32* %a, align 4
  %7 = load i32, i32* %a, align 4
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 %7)
  %9 = load i32, i32* %x, align 4
  store i32 %9, i32* %b, align 4
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %a, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %a, align 4
  store i32 10, i32* %c, align 4
  store i32* %c, i32** %d, align 8
  %13 = load i32*, i32** %d, align 8
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %c, align 4
  store i32 %14, i32* %e, align 4
  %15 = load i32, i32* %e, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 %15)
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
