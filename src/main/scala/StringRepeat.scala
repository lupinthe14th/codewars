object StringRepeat {
  def repeatStr(times: Int, str: String): String = {
    val result = new StringBuilder
    for (i <- 1 to times) {
      result.append(str)
    }
    result.toString
  }
}
