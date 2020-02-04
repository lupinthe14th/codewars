package twoSum

func TwoSum(numbers []int, target int) [2]int {
	ans := [2]int{}
	l := len(numbers)
	m := make(map[int]int, l)

	for i, v := range numbers {
		m[v] = i
	}

	for i, v := range numbers {
		if j, ok := m[target-v]; ok {
			ans = [2]int{i, j}
			break
		}
	}
	return ans
}
