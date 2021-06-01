object Clock {
  def past(h: Int, m: Int, s: Int): Int = (3600 * h + 60 * m + s) * 1000
}
