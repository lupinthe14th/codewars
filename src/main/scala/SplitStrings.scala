object SplitStrings {
  def solution(s: String): List[String] = s.padTo(s.size + s.size % 2, '_').grouped(2).toList
}
