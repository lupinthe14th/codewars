object Shortest {
  def findShort(str: String): Int = {
    var out = Int.MaxValue
    for (s <- str.split(" ")) {
      out = min(out, s.length)
    }
    return out
  }
  def min(m: Int, n: Int): Int = {
    if (m < n) {
      return m
    }
    return n
  }
}
