(component
  (core module (;0;)
    (type (;0;) (func (param i32 i32 i32 i32) (result i32)))
    (type (;1;) (func))
    (type (;2;) (func (param i32 i32)))
    (type (;3;) (func (param i32 i32 i32)))
    (type (;4;) (func (param i32)))
    (type (;5;) (func (result i32)))
    (func (;0;) (type 0) (param i32 i32 i32 i32) (result i32)
      unreachable
    )
    (func (;1;) (type 1)
      unreachable
    )
    (func (;2;) (type 2) (param i32 i32)
      unreachable
    )
    (func (;3;) (type 2) (param i32 i32)
      unreachable
    )
    (func (;4;) (type 3) (param i32 i32 i32)
      unreachable
    )
    (func (;5;) (type 4) (param i32)
      unreachable
    )
    (func (;6;) (type 2) (param i32 i32)
      unreachable
    )
    (func (;7;) (type 2) (param i32 i32)
      unreachable
    )
    (func (;8;) (type 2) (param i32 i32)
      unreachable
    )
    (func (;9;) (type 2) (param i32 i32)
      unreachable
    )
    (func (;10;) (type 4) (param i32)
      unreachable
    )
    (func (;11;) (type 5) (result i32)
      unreachable
    )
    (func (;12;) (type 5) (result i32)
      unreachable
    )
    (func (;13;) (type 4) (param i32)
      unreachable
    )
    (func (;14;) (type 5) (result i32)
      unreachable
    )
    (func (;15;) (type 4) (param i32)
      unreachable
    )
    (func (;16;) (type 5) (result i32)
      unreachable
    )
    (func (;17;) (type 5) (result i32)
      unreachable
    )
    (func (;18;) (type 4) (param i32)
      unreachable
    )
    (func (;19;) (type 5) (result i32)
      unreachable
    )
    (func (;20;) (type 4) (param i32)
      unreachable
    )
    (memory (;0;) 1)
    (export "memory" (memory 0))
    (export "cabi_realloc" (func 0))
    (export "foo#a" (func 1))
    (export "foo#b" (func 2))
    (export "foo#c" (func 3))
    (export "foo#d" (func 4))
    (export "foo#e" (func 5))
    (export "foo#f" (func 6))
    (export "foo#g" (func 7))
    (export "foo#h" (func 8))
    (export "foo#i" (func 9))
    (export "foo#j" (func 10))
    (export "foo#k" (func 11))
    (export "foo#l" (func 12))
    (export "cabi_post_foo#l" (func 13))
    (export "foo#m" (func 14))
    (export "cabi_post_foo#m" (func 15))
    (export "foo#n" (func 16))
    (export "foo#o" (func 17))
    (export "cabi_post_foo#o" (func 18))
    (export "foo#p" (func 19))
    (export "cabi_post_foo#p" (func 20))
  )
  (core instance (;0;) (instantiate 0))
  (alias core export 0 "memory" (core memory (;0;)))
  (alias core export 0 "cabi_realloc" (core func (;0;)))
  (type (;0;) (func))
  (alias core export 0 "foo#a" (core func (;1;)))
  (func (;0;) (type 0) (canon lift (core func 1)))
  (type (;1;) (list string))
  (type (;2;) (func (param "x" 1)))
  (alias core export 0 "foo#b" (core func (;2;)))
  (func (;1;) (type 2) (canon lift (core func 2) (memory 0) (realloc 0) string-encoding=utf8))
  (type (;3;) (record (field "s" string)))
  (type (;4;) (func (param "x" 3)))
  (alias core export 0 "foo#c" (core func (;3;)))
  (func (;2;) (type 4) (canon lift (core func 3) (memory 0) (realloc 0) string-encoding=utf8))
  (type (;5;) (variant (case "s" string)))
  (type (;6;) (func (param "x" 5)))
  (alias core export 0 "foo#d" (core func (;4;)))
  (func (;3;) (type 6) (canon lift (core func 4) (memory 0) (realloc 0) string-encoding=utf8))
  (type (;7;) (record (field "s" u32)))
  (type (;8;) (func (param "x" 7)))
  (alias core export 0 "foo#e" (core func (;5;)))
  (func (;4;) (type 8) (canon lift (core func 5)))
  (type (;9;) (variant (case "s" u32)))
  (type (;10;) (func (param "x" 9)))
  (alias core export 0 "foo#f" (core func (;6;)))
  (func (;5;) (type 10) (canon lift (core func 6)))
  (type (;11;) (list 3))
  (type (;12;) (func (param "x" 11)))
  (alias core export 0 "foo#g" (core func (;7;)))
  (func (;6;) (type 12) (canon lift (core func 7) (memory 0) (realloc 0) string-encoding=utf8))
  (type (;13;) (list 5))
  (type (;14;) (func (param "x" 13)))
  (alias core export 0 "foo#h" (core func (;8;)))
  (func (;7;) (type 14) (canon lift (core func 8) (memory 0) (realloc 0) string-encoding=utf8))
  (type (;15;) (list u32))
  (type (;16;) (func (param "x" 15)))
  (alias core export 0 "foo#i" (core func (;9;)))
  (func (;8;) (type 16) (canon lift (core func 9) (memory 0) (realloc 0)))
  (type (;17;) (func (param "x" u32)))
  (alias core export 0 "foo#j" (core func (;10;)))
  (func (;9;) (type 17) (canon lift (core func 10)))
  (type (;18;) (tuple u32 u32))
  (type (;19;) (func (result 18)))
  (alias core export 0 "foo#k" (core func (;11;)))
  (func (;10;) (type 19) (canon lift (core func 11) (memory 0)))
  (type (;20;) (func (result string)))
  (alias core export 0 "foo#l" (core func (;12;)))
  (alias core export 0 "cabi_post_foo#l" (core func (;13;)))
  (func (;11;) (type 20) (canon lift (core func 12) (memory 0) string-encoding=utf8 (post-return 13)))
  (type (;21;) (func (result 15)))
  (alias core export 0 "foo#m" (core func (;14;)))
  (alias core export 0 "cabi_post_foo#m" (core func (;15;)))
  (func (;12;) (type 21) (canon lift (core func 14) (memory 0) (post-return 15)))
  (type (;22;) (func (result u32)))
  (alias core export 0 "foo#n" (core func (;16;)))
  (func (;13;) (type 22) (canon lift (core func 16)))
  (type (;23;) (func (result 5)))
  (alias core export 0 "foo#o" (core func (;17;)))
  (alias core export 0 "cabi_post_foo#o" (core func (;18;)))
  (func (;14;) (type 23) (canon lift (core func 17) (memory 0) string-encoding=utf8 (post-return 18)))
  (type (;24;) (list 9))
  (type (;25;) (func (result 24)))
  (alias core export 0 "foo#p" (core func (;19;)))
  (alias core export 0 "cabi_post_foo#p" (core func (;20;)))
  (func (;15;) (type 25) (canon lift (core func 19) (memory 0) (post-return 20)))
  (component (;0;)
    (alias outer 1 0 (type (;0;)))
    (import "import-a" (func (;0;) (type 0)))
    (alias outer 1 2 (type (;1;)))
    (import "import-b" (func (;1;) (type 1)))
    (alias outer 1 4 (type (;2;)))
    (import "import-c" (func (;2;) (type 2)))
    (alias outer 1 6 (type (;3;)))
    (import "import-d" (func (;3;) (type 3)))
    (alias outer 1 8 (type (;4;)))
    (import "import-e" (func (;4;) (type 4)))
    (alias outer 1 10 (type (;5;)))
    (import "import-f" (func (;5;) (type 5)))
    (alias outer 1 12 (type (;6;)))
    (import "import-g" (func (;6;) (type 6)))
    (alias outer 1 14 (type (;7;)))
    (import "import-h" (func (;7;) (type 7)))
    (alias outer 1 16 (type (;8;)))
    (import "import-i" (func (;8;) (type 8)))
    (alias outer 1 17 (type (;9;)))
    (import "import-j" (func (;9;) (type 9)))
    (alias outer 1 19 (type (;10;)))
    (import "import-k" (func (;10;) (type 10)))
    (alias outer 1 20 (type (;11;)))
    (import "import-l" (func (;11;) (type 11)))
    (alias outer 1 21 (type (;12;)))
    (import "import-m" (func (;12;) (type 12)))
    (alias outer 1 22 (type (;13;)))
    (import "import-n" (func (;13;) (type 13)))
    (alias outer 1 23 (type (;14;)))
    (import "import-o" (func (;14;) (type 14)))
    (alias outer 1 25 (type (;15;)))
    (import "import-p" (func (;15;) (type 15)))
    (type (;16;) (func))
    (export (;16;) "a" (func 0) (func (type 16)))
    (type (;17;) (list string))
    (type (;18;) (func (param "x" 17)))
    (export (;17;) "b" (func 1) (func (type 18)))
    (type (;19;) (record (field "s" string)))
    (export (;20;) "r" (type 19))
    (type (;21;) (func (param "x" 20)))
    (export (;18;) "c" (func 2) (func (type 21)))
    (type (;22;) (variant (case "s" string)))
    (export (;23;) "v" (type 22))
    (type (;24;) (func (param "x" 23)))
    (export (;19;) "d" (func 3) (func (type 24)))
    (type (;25;) (record (field "s" u32)))
    (export (;26;) "r-no-string" (type 25))
    (type (;27;) (func (param "x" 26)))
    (export (;20;) "e" (func 4) (func (type 27)))
    (type (;28;) (variant (case "s" u32)))
    (export (;29;) "v-no-string" (type 28))
    (type (;30;) (func (param "x" 29)))
    (export (;21;) "f" (func 5) (func (type 30)))
    (type (;31;) (list 20))
    (type (;32;) (func (param "x" 31)))
    (export (;22;) "g" (func 6) (func (type 32)))
    (type (;33;) (list 23))
    (type (;34;) (func (param "x" 33)))
    (export (;23;) "h" (func 7) (func (type 34)))
    (type (;35;) (list u32))
    (type (;36;) (func (param "x" 35)))
    (export (;24;) "i" (func 8) (func (type 36)))
    (type (;37;) (func (param "x" u32)))
    (export (;25;) "j" (func 9) (func (type 37)))
    (type (;38;) (tuple u32 u32))
    (type (;39;) (func (result 38)))
    (export (;26;) "k" (func 10) (func (type 39)))
    (type (;40;) (func (result string)))
    (export (;27;) "l" (func 11) (func (type 40)))
    (type (;41;) (func (result 35)))
    (export (;28;) "m" (func 12) (func (type 41)))
    (type (;42;) (func (result u32)))
    (export (;29;) "n" (func 13) (func (type 42)))
    (type (;43;) (func (result 23)))
    (export (;30;) "o" (func 14) (func (type 43)))
    (type (;44;) (list 29))
    (type (;45;) (func (result 44)))
    (export (;31;) "p" (func 15) (func (type 45)))
  )
  (instance (;0;) (instantiate 0
      (with "import-a" (func 0))
      (with "import-b" (func 1))
      (with "import-c" (func 2))
      (with "import-d" (func 3))
      (with "import-e" (func 4))
      (with "import-f" (func 5))
      (with "import-g" (func 6))
      (with "import-h" (func 7))
      (with "import-i" (func 8))
      (with "import-j" (func 9))
      (with "import-k" (func 10))
      (with "import-l" (func 11))
      (with "import-m" (func 12))
      (with "import-n" (func 13))
      (with "import-o" (func 14))
      (with "import-p" (func 15))
    )
  )
  (export (;1;) "foo" (instance 0))
)