object Summation {
  def summation(n: Int): Int = {
    var i = 1
    var cum = 0
    while(i<= n) {
      cum += i
      i += 1
    }
    cum
  }
}
