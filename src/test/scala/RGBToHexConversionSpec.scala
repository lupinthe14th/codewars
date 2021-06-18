import org.scalatest.funsuite.AnyFunSuite

class RGBToHexConversionSpec extends AnyFunSuite {
  test("Samples") {
    assert(RGBToHexConversion.rgb(0, 0, 0) === "000000")
    assert(RGBToHexConversion.rgb(1, 2, 3) === "010203")
    assert(RGBToHexConversion.rgb(255, 255, 255) === "FFFFFF")
    assert(RGBToHexConversion.rgb(-20, 275, 125) === "00FF7D")
  }

  test("helper") {
    assert(RGBToHexConversion.helper(0) === 0)
    assert(RGBToHexConversion.helper(-1) === 0)
    assert(RGBToHexConversion.helper(-255) === 0)
    assert(RGBToHexConversion.helper(128) === 128)
    assert(RGBToHexConversion.helper(255) === 255)
    assert(RGBToHexConversion.helper(256) === 255)
    assert(RGBToHexConversion.helper(512) === 255)
  }
  test("toPadLeft") {
    assert(RGBToHexConversion.RichString("a").padLeft(0, '*') === "a")
    assert(RGBToHexConversion.RichString("a").padLeft(1, '*') === "a")
    assert(RGBToHexConversion.RichString("a").padLeft(2, '*') === "*a")
  }
}
