import org.scalatest.funsuite.AnyFunSuite

class ClockSpec extends AnyFunSuite {
  test("basic tests") {
    assert(Clock.past(0, 1, 1) === 61000)
    assert(Clock.past(1, 1, 1) === 3661000)
    assert(Clock.past(0, 0, 0) === 0)
    assert(Clock.past(1, 0, 1) === 3601000)
    assert(Clock.past(1, 0, 0) === 3600000)
  }
}
