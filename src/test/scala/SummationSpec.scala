import org.scalatest._
import flatspec.AnyFlatSpec
import matchers.should._

class SummationSpec extends AnyFlatSpec with Matchers {
  "summation(1)" should "return 1" in {
    Summation.summation(1) should be(1)
  }
  "summation(8)" should "return 36" in {
    Summation.summation(8) should be(36)
  }
}
