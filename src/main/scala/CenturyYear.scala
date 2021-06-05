object CenturyYear {
  def centuryFromYear(year: Int): Int = {
    val mod = year % 100
    if (1 <= mod && mod < 100) {
      return year / 100 + 1
    }
    return year / 100
  }
}
