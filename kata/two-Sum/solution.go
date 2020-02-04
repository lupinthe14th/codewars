package twoSum

func TwoSum(numbers []int, target int) [2]int {
	ans := [2]int{}
	m := make(map[int]int, len(numbers))

	for i, v := range numbers {
		if j, ok := m[target-v]; ok {
			ans = [2]int{j, i}
			break
		}
		m[v] = i
	}
	return ans
}
