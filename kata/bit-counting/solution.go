package bitcounting

import (
	"fmt"
)

func CountBits(n uint) int {
	var ans int
	for _, v := range fmt.Sprintf("%b", n) {
		if v == '1' {
			ans++
		}
	}
	return ans
}
