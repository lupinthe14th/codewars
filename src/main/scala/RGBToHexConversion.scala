object RGBToHexConversion {
  def rgb(r: Int, g: Int, b: Int): String = {
    val R = helper(r).toLong.toHexString.padLeft(2, '0').toUpperCase
    val G = helper(g).toLong.toHexString.padLeft(2, '0').toUpperCase
    val B = helper(b).toLong.toHexString.padLeft(2, '0').toUpperCase
    Array(R, G, B).mkString
  }
  def helper(n: Int): Int = {
    if (n < 0) {
      return 0
    } else if (n > 255) {
      return 255
    } else {
      n
    }
  }
  implicit class RichString(s: String) {
    def padLeft(n: Int, c: Char): String = {
      c.toString * (n - s.length) + s
    }
  }
}
