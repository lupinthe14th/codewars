package stableweightarrangement

import (
	"log"
)

func Solver(arr []int, n, q int) []int {
	l := len(arr)
	// sort.Ints(arr)
	for i := 0; i <= l-n; i++ {
		log.Print(arr[i : i+n])
		if !isCond(arr[i:i+n], q) {
			log.Print("not")
		}
	}
	return []int{}
}

func isCond(arr []int, q int) bool {
	if q <= sum(arr) {
		return true
	}
	return false
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func sum(nums []int) int {
	sum := 0
	for _, n := range nums {
		sum += n
	}
	log.Print(sum)
	return sum
}
