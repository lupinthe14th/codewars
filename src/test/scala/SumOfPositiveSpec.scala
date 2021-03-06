import org.scalatest._, flatspec._, matchers.should._

class SumOfPositiveSpec extends AnyFlatSpec with Matchers {
  "positiveSum(Array(2, 2))" should "return 4" in {
    SumOfPositive.positiveSum(Array(2, 2)) should be(4)
  }
  "positiveSum(Array(1,-2,3,4,5))" should "return 13" in {
    SumOfPositive.positiveSum(Array(1, -2, 3, 4, 5)) should be(13)
  }

  "positiveSum(Array())" should "return 0" in {
    SumOfPositive.positiveSum(Array()) should be(0)
  }

  "positiveSum(Array(-1,-2,-3,-4,-5))" should "return 0" in {
    SumOfPositive.positiveSum(Array(-1, -2, -3, -4, -5)) should be(0)
  }
}
