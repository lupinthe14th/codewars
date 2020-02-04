package reversedStrings

func reversedStrings(word string) string {
	l := len(word)
	ans := make([]rune, l)

	for i, v := range word {
		ans[l-1-i] = v
	}
	return string(ans)
}
