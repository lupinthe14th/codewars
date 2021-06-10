import org.scalatest.funsuite._

class BitCountingSpec extends AnyFunSuite {

  test("Samples") {
    assert(BitCounting.countBits(0) === 0)
    assert(BitCounting.countBits(4) === 1)
    assert(BitCounting.countBits(7) === 3)
    assert(BitCounting.countBits(9) === 2)
    assert(BitCounting.countBits(10) === 2)
  }
}
