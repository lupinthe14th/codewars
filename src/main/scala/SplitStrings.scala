object SplitStrings {
  def solution(s: String): List[String] = {
    if ((s.length % 2) != 0) {
      val t = s + "_"
      return t.sliding(2, 2).toList
    }
    s.sliding(2, 2).toList
  }
}
