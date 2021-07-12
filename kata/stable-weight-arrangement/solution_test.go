package stableweightarrangement

import (
	"fmt"
	"reflect"
	"testing"
)

type Case struct {
	input input
	want  []int
}

type input struct {
	arr  []int
	n, q int
}

var cases = []Case{
	{input: input{arr: []int{3, 5, 7, 1, 6, 8, 2, 4}, n: 3, q: 13}, want: []int{4, 7, 1, 5, 6, 2, 3, 8}},
	{input: input{arr: []int{7, 12, 6, 10, 3, 8, 5, 4, 13, 2, 9}, n: 4, q: 28}, want: []int{4, 9, 10, 3, 5, 8, 12, 2, 6, 7, 13}},
}

func TestSolver(t *testing.T) {
	for i, tt := range cases {
		t.Run(fmt.Sprint(i), func(t *testing.T) {
			got := Solver(tt.input.arr, tt.input.n, tt.input.q)
			if !reflect.DeepEqual(got, tt.want) {
				t.Errorf("in: %v, got: %v, want: %v", tt.input, got, tt.want)
			}
		})
	}
}
