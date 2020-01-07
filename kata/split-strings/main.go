package main

func Solution(str string) []string {
	var ans []string
	l := len(str)

	for i := 0; i < l; i = i + 2 {
		if i+2 > l {
			tmp := string(str[i]) + "_"
			ans = append(ans, tmp)
		} else {
			ans = append(ans, string(str[i:i+2]))
		}
	}
	return ans
}
