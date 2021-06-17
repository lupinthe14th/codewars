import org.scalatest.funsuite.AnyFunSuite

class RGBToHexConversionSpec extends AnyFunSuite {
  test("Samples") {
    assert(RGBToHexConversion.rgb(0, 0, 0) === "000000")
    assert(RGBToHexConversion.rgb(1, 2, 3) === "010203")
    assert(RGBToHexConversion.rgb(255, 255, 255) === "FFFFFF")
    assert(RGBToHexConversion.rgb(-20, 275, 125) === "00FF7D")
  }
}
