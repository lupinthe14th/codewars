import org.scalatest._
import flatspec._
import matchers.should._

class NegativeSpec extends AnyFlatSpec with Matchers {
  s"makeNegative(42)" should s"return -42" in {
    Negative.makeNegative(42) should be(-42)
  }
  s"makeNegative(1)" should s"return -1" in {
    Negative.makeNegative(1) should be(-1)
  }
  s"makeNegative(-5)" should s"return -5" in {
    Negative.makeNegative(5) should be(-5)
  }
  s"makeNegative(0)" should s"return 0" in {
    Negative.makeNegative(0) should be(0)
  }
}
