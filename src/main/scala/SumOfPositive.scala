object SumOfPositive {
  def positiveSum(arr: Array[Int]): Int = {
    val result = arr.filter(_ > 0).sum
    result
  }
}
