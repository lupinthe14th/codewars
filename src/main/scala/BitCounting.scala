object BitCounting {
  // iビット目が1か調べる
  // 1. 右ビットシフトしてiビット目を一番右に移動する（最下位ビットシフトする）
  // 2. 最下位ビットを取り出すため、&1する（両方が1なら1）
  def countBits(n: Int): Int = {
    var c = 0
    for (i <- 0 to n.toBinaryString.size) {
      if (((n >> i) & 1) == 1) {
        c += 1
      }
    }
    c
  }
}
