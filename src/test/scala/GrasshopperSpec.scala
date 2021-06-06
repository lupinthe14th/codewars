import org.scalatest.funsuite._

class GrasshopperSpec extends AnyFunSuite {
  test("Basic tests") {
    assert(Grasshopper.checkForFactor(10, 2) === true)
    assert(Grasshopper.checkForFactor(63, 7) === true)
    assert(Grasshopper.checkForFactor(2450, 5) === true)
    assert(Grasshopper.checkForFactor(24612, 3) === true)
    assert(Grasshopper.checkForFactor(9, 2) === false)
    assert(Grasshopper.checkForFactor(653, 7) === false)
    assert(Grasshopper.checkForFactor(2453, 5) === false)
    assert(Grasshopper.checkForFactor(24617, 3) === false)
  }
}
