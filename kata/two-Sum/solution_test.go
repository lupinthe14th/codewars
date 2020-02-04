package twoSum

import (
	"fmt"
	"reflect"
	"testing"
)

type Case struct {
	input input
	want  [2]int
}

type input struct {
	numbers []int
	target  int
}

var cases = []Case{
	{input: input{numbers: []int{1, 2, 3}, target: 4}, want: [2]int{0, 2}},
}

func TestTwoSum(t *testing.T) {
	for i, tt := range cases {
		t.Run(fmt.Sprint(i), func(t *testing.T) {
			got := TwoSum(tt.input.numbers, tt.input.target)
			if !reflect.DeepEqual(got, tt.want) {
				t.Errorf("input: %v, got: %v, want: %v", tt.input, got, tt.want)
			}
		})
	}
}
