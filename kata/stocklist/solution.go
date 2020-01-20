package main

import (
	"fmt"
	"strconv"
	"strings"
)

func StockList(listArt []string, listCat []string) string {
	al := len(listArt)
	cl := len(listCat)
	if al == 0 || cl == 0 {
		return ""
	}
	cat := make(map[string]int, cl)

	for i := range listArt {
		art := strings.Split(listArt[i], " ")
		p, _ := strconv.Atoi(art[1])
		cat[string(art[0][0])] += p
	}

	ans := make([]string, cl)

	for i, c := range listCat {
		ans[i] = fmt.Sprintf("(%s : %d)", c, cat[c])
	}
	return strings.Join(ans, " - ")
}

func main() {}
