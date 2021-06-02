import org.scalatest._
import flatspec.AnyFlatSpec
import matchers.should._

class ReversedStringSpec extends AnyFlatSpec with Matchers {
  "ReversedStrings.solution" should "pass fixed tests" in {
    ReversedStrings.solution("dlrow") should equal ("world")
  }
}
