import org.scalatest.FunSpec
import scala.util.Random
import Multiply._

class MultiplySpec extends FunSpec {
  describe("Multiply.multiply"){
    it("should pass fixed tests") {
      assertResult(1) {multiply(1,1)}
    }

     it("should have associativity of multiplication") {
      (0 until 100).foreach { _ =>
        val (a, b, c) = (Random.nextInt(100), Random.nextInt(100), Random.nextInt(100))
        assert(
          multiply(multiply(a, b), c) == multiply(a, multiply(b, c)),
          s"(${a} * ${b}) * ${c} == ${a} * (${b} * ${c})"
        )
      }
    }
  }
}
