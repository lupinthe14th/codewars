package main

import (
	"fmt"
	"testing"
)

type input struct {
	listArt, listCat []string
}
type Case struct {
	input input
	want  string
}

var cases = []Case{
	{input: input{listArt: []string{"BBAR 150", "CDXE 515", "BKWR 250", "BTSQ 890", "DRTY 600"}, listCat: []string{"A", "B", "C", "D"}}, want: "(A : 0) - (B : 1290) - (C : 515) - (D : 600)"},
}

func TestStockList(t *testing.T) {
	for i, tt := range cases {
		t.Run(fmt.Sprint(i), func(t *testing.T) {
			got := StockList(tt.input.listArt, tt.input.listCat)
			if got != tt.want {
				t.Errorf("%s, want: %s", got, tt.want)
			}
		})
	}
}
