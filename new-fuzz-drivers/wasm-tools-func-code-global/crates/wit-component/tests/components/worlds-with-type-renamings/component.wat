(component
  (type (;0;)
    (instance
      (type (;0;) (record))
      (export (;1;) "some-type" (type (eq 0)))
      (type (;2;) (func (result 1)))
      (export (;0;) "the-func" (func (type 2)))
    )
  )
  (import "i1" (instance (;0;) (type 0)))
  (alias export 0 "some-type" (type (;1;)))
  (import "other-name" (type (eq 1)))
  (core module (;0;)
    (type (;0;) (func (param i32 i64 i32)))
    (type (;1;) (func (param i32 i32 i32 i32) (result i32)))
    (type (;2;) (func))
    (import "i1" "the-func" (func (;0;) (type 2)))
    (func (;1;) (type 2)
      unreachable
    )
    (func (;2;) (type 1) (param i32 i32 i32 i32) (result i32)
      unreachable
    )
    (memory (;0;) 0)
    (export "i2#the-func" (func 1))
    (export "cabi_realloc" (func 2))
    (export "memory" (memory 0))
  )
  (alias export 0 "the-func" (func (;0;)))
  (core func (;0;) (canon lower (func 0)))
  (core instance (;0;)
    (export "the-func" (func 0))
  )
  (core instance (;1;) (instantiate 0
      (with "i1" (instance 0))
    )
  )
  (alias core export 1 "memory" (core memory (;0;)))
  (alias core export 1 "cabi_realloc" (core func (;1;)))
  (type (;3;) (record))
  (type (;4;) (func (result 3)))
  (alias core export 1 "i2#the-func" (core func (;2;)))
  (func (;1;) (type 4) (canon lift (core func 2)))
  (component (;0;)
    (alias outer 1 4 (type (;0;)))
    (import "import-the-func" (func (;0;) (type 0)))
    (type (;1;) (record))
    (export (;2;) "some-type" (type 1))
    (type (;3;) (func (result 2)))
    (export (;1;) "the-func" (func 0) (func (type 3)))
  )
  (instance (;1;) (instantiate 0
      (with "import-the-func" (func 1))
    )
  )
  (export (;2;) "i2" (instance 1))
)