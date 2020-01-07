package main

import "math"

const RANGE float64 = 1e-12

func Solve(m float64) float64 {
	var mi float64
	var lo, hi float64 = 0, 1

	for lo < hi {
		mi = (lo + hi) / 2
		var ans float64 = mi / math.Pow(mi-1, 2)
		if isInrangeAssert(RANGE, m, ans) {
			break
		}

		if m > ans {
			lo = mi + 1e-13
		} else {
			hi = mi - 1e-13
		}

	}
	return mi
}
func isInrangeAssert(merr, got, want float64) bool {
	return math.Abs(got-want) <= merr
}
