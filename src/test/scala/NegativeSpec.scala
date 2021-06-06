import org.scalatest._
import flatspec._
import matchers.should._

class NegativeSpec extends AnyFlatSpec with Matchers {
  s"makeNegative(42)" should s"return -42" in {
    Negative.makeNegative(42) should be(-42)
  }
}
