package weirdstringcase

import "strings"

func toWeirdCase(str string) string {

	arr := make([]string, 0, len(str))

	for _, s := range strings.Split(str, " ") {
		arr = append(arr, weirdCase(s))
	}
	return strings.Join(arr, " ")
}

func weirdCase(str string) string {
	var ans string
	for i, r := range str {
		if i&1 == 0 {
			ans += strings.ToUpper(string(r))
		} else {
			ans += strings.ToLower(string(r))
		}
	}
	return ans
}
