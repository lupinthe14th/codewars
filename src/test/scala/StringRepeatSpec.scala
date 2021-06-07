import org.scalatest.flatspec.AnyFlatSpec

class StringRepertSpec extends AnyFlatSpec {
  "repeatStr method given counter is 3 and string *" should " return string ***" in {
    assert(StringRepeat.repeatStr(3, "*") == "***")
  }
}
