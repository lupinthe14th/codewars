import org.scalatest.funspec.AnyFunSpec
import scala.util.Random
import Multiply._

class MultiplySpec extends AnyFunSpec {
  describe("Multiply.multiply"){
    it("should pass fixed tests") {
      assertResult(1) {multiply(1,1)}
      assertResult(2) {multiply(1,2)}
      assertResult(6) {multiply(2,3)}
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
