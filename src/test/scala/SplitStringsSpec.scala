import org.scalatest.funsuite._

class SplitStringsSpec extends AnyFunSuite {

  test("Samples") {
    assert(SplitStrings.solution("asdfadsf") === List("as", "df", "ad", "sf"))
    assert(SplitStrings.solution("asdfads") === List("as", "df", "ad", "s_"))
    assert(SplitStrings.solution("") === List())
    assert(SplitStrings.solution("x") === List("x_"))
  }
}
