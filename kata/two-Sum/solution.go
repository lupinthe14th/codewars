package twoSum

func TwoSum(numbers []int, target int) [2]int {
	ans := [2]int{}
	m := make(map[int]int, len(numbers))

	for i, v := range numbers {
		need := target - v
		if j, ok := m[need]; ok {
			ans = [2]int{j, i}
			break
		}
		m[v] = i
	}
	return ans
}
