// Scala and Java keywords (but minus thrift keywords of course) are ok
namespace java thrift.def.default
const i32 val = 10 // `val` in Scala, val in Java
const i32 try = 123 // `try` in Scala, _try_ in Java

enum super { // rewritten to title case Super in generated code
  trait = 20  // `trait` in Scala, TRAIT in Java
  native = 99
}

struct TestValidate {
  1: optional bool validate
}

struct naughty { // rewritten to title case Naughty
  1: string type  // `type` in Scala; getType() in Java
  2: i32 abstract // `abstract` in Scala, getAbstract() in Java
}

union NaughtyUnion {
  10: naughty value
  15: super field
  // todo: CSL-355 Generated Java code cannot handle primitive types to
  // Java object conversion. Uncomment the following once it's fixed.
  // 20: i32 id
}