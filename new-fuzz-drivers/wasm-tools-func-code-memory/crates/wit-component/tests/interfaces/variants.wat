(component
  (type (;0;)
    (component
      (type (;0;)
        (instance
          (type (;0;) (union u32 float32))
          (export (;1;) "u1" (type (eq 0)))
          (type (;2;) (enum "bad1" "bad2"))
          (export (;3;) "my-errno" (type (eq 2)))
          (type (;4;) (record))
          (export (;5;) "empty" (type (eq 4)))
          (type (;6;) (enum "a"))
          (export (;7;) "e1" (type (eq 6)))
          (type (;8;) (variant (case "a") (case "b" 1) (case "c" 7) (case "d" string) (case "e" 5) (case "f") (case "g" u32)))
          (export (;9;) "v1" (type (eq 8)))
          (type (;10;) (tuple float32 u32))
          (type (;11;) (tuple u32 u32))
          (type (;12;) (variant (case "a" 10) (case "b" 11)))
          (export (;13;) "casts6" (type (eq 12)))
          (type (;14;) (variant (case "a" float32) (case "b" s64)))
          (export (;15;) "casts5" (type (eq 14)))
          (type (;16;) (variant (case "a" u32) (case "b" s64)))
          (export (;17;) "casts4" (type (eq 16)))
          (type (;18;) (variant (case "a" float64) (case "b" u64)))
          (export (;19;) "casts3" (type (eq 18)))
          (type (;20;) (variant (case "a" float64) (case "b" float32)))
          (export (;21;) "casts2" (type (eq 20)))
          (type (;22;) (variant (case "a" s32) (case "b" float32)))
          (export (;23;) "casts1" (type (eq 22)))
          (type (;24;) (func (param "x" 7)))
          (export (;0;) "e1-arg" (func (type 24)))
          (type (;25;) (func (result 7)))
          (export (;1;) "e1-result" (func (type 25)))
          (type (;26;) (func (param "x" 1)))
          (export (;2;) "u1-arg" (func (type 26)))
          (type (;27;) (func (result 1)))
          (export (;3;) "u1-result" (func (type 27)))
          (type (;28;) (func (param "x" 9)))
          (export (;4;) "v1-arg" (func (type 28)))
          (type (;29;) (func (result 9)))
          (export (;5;) "v1-result" (func (type 29)))
          (type (;30;) (func (param "x" bool)))
          (export (;6;) "bool-arg" (func (type 30)))
          (type (;31;) (func (result bool)))
          (export (;7;) "bool-result" (func (type 31)))
          (type (;32;) (option bool))
          (type (;33;) (tuple))
          (type (;34;) (option 33))
          (type (;35;) (option u32))
          (type (;36;) (option 7))
          (type (;37;) (option float32))
          (type (;38;) (option 1))
          (type (;39;) (option 32))
          (type (;40;) (func (param "a" 32) (param "b" 34) (param "c" 35) (param "d" 36) (param "e" 37) (param "f" 38) (param "g" 39)))
          (export (;8;) "option-arg" (func (type 40)))
          (type (;41;) (tuple 32 34 35 36 37 38 39))
          (type (;42;) (func (result 41)))
          (export (;9;) "option-result" (func (type 42)))
          (type (;43;) (tuple 23 21 19 17 15 13))
          (type (;44;) (func (param "a" 23) (param "b" 21) (param "c" 19) (param "d" 17) (param "e" 15) (param "f" 13) (result 43)))
          (export (;10;) "casts" (func (type 44)))
          (type (;45;) (result))
          (type (;46;) (result (error 7)))
          (type (;47;) (result 7))
          (type (;48;) (result 33 (error 33)))
          (type (;49;) (result u32 (error 9)))
          (type (;50;) (list u8))
          (type (;51;) (result string (error 50)))
          (type (;52;) (func (param "a" 45) (param "b" 46) (param "c" 47) (param "d" 48) (param "e" 49) (param "f" 51)))
          (export (;11;) "expected-arg" (func (type 52)))
          (type (;53;) (tuple 45 46 47 48 49 51))
          (type (;54;) (func (result 53)))
          (export (;12;) "expected-result" (func (type 54)))
          (type (;55;) (result s32 (error 3)))
          (type (;56;) (func (result 55)))
          (export (;13;) "return-expected-sugar" (func (type 56)))
          (type (;57;) (result (error 3)))
          (type (;58;) (func (result 57)))
          (export (;14;) "return-expected-sugar2" (func (type 58)))
          (type (;59;) (result 3 (error 3)))
          (type (;60;) (func (result 59)))
          (export (;15;) "return-expected-sugar3" (func (type 60)))
          (type (;61;) (tuple s32 u32))
          (type (;62;) (result 61 (error 3)))
          (type (;63;) (func (result 62)))
          (export (;16;) "return-expected-sugar4" (func (type 63)))
          (type (;64;) (option s32))
          (type (;65;) (func (result 64)))
          (export (;17;) "return-option-sugar" (func (type 65)))
          (type (;66;) (option 3))
          (type (;67;) (func (result 66)))
          (export (;18;) "return-option-sugar2" (func (type 67)))
          (type (;68;) (result u32 (error s32)))
          (type (;69;) (func (result 68)))
          (export (;19;) "expected-simple" (func (type 69)))
        )
      )
      (export (;0;) "variants" "pkg:/variants/variants" (instance (type 0)))
      (type (;1;)
        (component
          (type (;0;)
            (instance
              (type (;0;) (union u32 float32))
              (export (;1;) "u1" (type (eq 0)))
              (type (;2;) (enum "bad1" "bad2"))
              (export (;3;) "my-errno" (type (eq 2)))
              (type (;4;) (record))
              (export (;5;) "empty" (type (eq 4)))
              (type (;6;) (enum "a"))
              (export (;7;) "e1" (type (eq 6)))
              (type (;8;) (variant (case "a") (case "b" 1) (case "c" 7) (case "d" string) (case "e" 5) (case "f") (case "g" u32)))
              (export (;9;) "v1" (type (eq 8)))
              (type (;10;) (tuple float32 u32))
              (type (;11;) (tuple u32 u32))
              (type (;12;) (variant (case "a" 10) (case "b" 11)))
              (export (;13;) "casts6" (type (eq 12)))
              (type (;14;) (variant (case "a" float32) (case "b" s64)))
              (export (;15;) "casts5" (type (eq 14)))
              (type (;16;) (variant (case "a" u32) (case "b" s64)))
              (export (;17;) "casts4" (type (eq 16)))
              (type (;18;) (variant (case "a" float64) (case "b" u64)))
              (export (;19;) "casts3" (type (eq 18)))
              (type (;20;) (variant (case "a" float64) (case "b" float32)))
              (export (;21;) "casts2" (type (eq 20)))
              (type (;22;) (variant (case "a" s32) (case "b" float32)))
              (export (;23;) "casts1" (type (eq 22)))
              (type (;24;) (func (param "x" 7)))
              (export (;0;) "e1-arg" (func (type 24)))
              (type (;25;) (func (result 7)))
              (export (;1;) "e1-result" (func (type 25)))
              (type (;26;) (func (param "x" 1)))
              (export (;2;) "u1-arg" (func (type 26)))
              (type (;27;) (func (result 1)))
              (export (;3;) "u1-result" (func (type 27)))
              (type (;28;) (func (param "x" 9)))
              (export (;4;) "v1-arg" (func (type 28)))
              (type (;29;) (func (result 9)))
              (export (;5;) "v1-result" (func (type 29)))
              (type (;30;) (func (param "x" bool)))
              (export (;6;) "bool-arg" (func (type 30)))
              (type (;31;) (func (result bool)))
              (export (;7;) "bool-result" (func (type 31)))
              (type (;32;) (option bool))
              (type (;33;) (tuple))
              (type (;34;) (option 33))
              (type (;35;) (option u32))
              (type (;36;) (option 7))
              (type (;37;) (option float32))
              (type (;38;) (option 1))
              (type (;39;) (option 32))
              (type (;40;) (func (param "a" 32) (param "b" 34) (param "c" 35) (param "d" 36) (param "e" 37) (param "f" 38) (param "g" 39)))
              (export (;8;) "option-arg" (func (type 40)))
              (type (;41;) (tuple 32 34 35 36 37 38 39))
              (type (;42;) (func (result 41)))
              (export (;9;) "option-result" (func (type 42)))
              (type (;43;) (tuple 23 21 19 17 15 13))
              (type (;44;) (func (param "a" 23) (param "b" 21) (param "c" 19) (param "d" 17) (param "e" 15) (param "f" 13) (result 43)))
              (export (;10;) "casts" (func (type 44)))
              (type (;45;) (result))
              (type (;46;) (result (error 7)))
              (type (;47;) (result 7))
              (type (;48;) (result 33 (error 33)))
              (type (;49;) (result u32 (error 9)))
              (type (;50;) (list u8))
              (type (;51;) (result string (error 50)))
              (type (;52;) (func (param "a" 45) (param "b" 46) (param "c" 47) (param "d" 48) (param "e" 49) (param "f" 51)))
              (export (;11;) "expected-arg" (func (type 52)))
              (type (;53;) (tuple 45 46 47 48 49 51))
              (type (;54;) (func (result 53)))
              (export (;12;) "expected-result" (func (type 54)))
              (type (;55;) (result s32 (error 3)))
              (type (;56;) (func (result 55)))
              (export (;13;) "return-expected-sugar" (func (type 56)))
              (type (;57;) (result (error 3)))
              (type (;58;) (func (result 57)))
              (export (;14;) "return-expected-sugar2" (func (type 58)))
              (type (;59;) (result 3 (error 3)))
              (type (;60;) (func (result 59)))
              (export (;15;) "return-expected-sugar3" (func (type 60)))
              (type (;61;) (tuple s32 u32))
              (type (;62;) (result 61 (error 3)))
              (type (;63;) (func (result 62)))
              (export (;16;) "return-expected-sugar4" (func (type 63)))
              (type (;64;) (option s32))
              (type (;65;) (func (result 64)))
              (export (;17;) "return-option-sugar" (func (type 65)))
              (type (;66;) (option 3))
              (type (;67;) (func (result 66)))
              (export (;18;) "return-option-sugar2" (func (type 67)))
              (type (;68;) (result u32 (error s32)))
              (type (;69;) (func (result 68)))
              (export (;19;) "expected-simple" (func (type 69)))
            )
          )
          (import "variants" "pkg:/variants/variants" (instance (type 0)))
        )
      )
      (export (;0;) "variants-world" "pkg:/variants/variants-world" (component (type 1)))
    )
  )
  (export (;1;) "variants" "pkg:/variants" (type 0))
)