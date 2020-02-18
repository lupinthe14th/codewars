package shortestWord

import "strings"

func FindShort(s string) int {
	var ans int = 1 << 31
	for _, v := range strings.Split(s, " ") {
		ans = min(ans, len(v))
	}
	return ans
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}
