object RemoveFirstAndLastCharacters {
  def removeChars(s: String): String = {
    s.slice(1, s.length - 1)
  }
}
