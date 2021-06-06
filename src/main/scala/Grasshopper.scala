object Grasshopper {
  def checkForFactor(base: Int, factor: Int): Boolean = {
    if (base % factor == 0) {
      return true
    }
    return false
  }
}
