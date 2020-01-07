package main

import (
	"fmt"
	"reflect"
	"testing"
)

type Case struct {
	input string
	want  []string
}

var cases = []Case{
	{input: "abc", want: []string{"ab", "c_"}},
	{input: "abcdef", want: []string{"ab", "cd", "ef"}},
}

func TestSolution(t *testing.T) {
	for i, tt := range cases {
		t.Run(fmt.Sprint(i), func(t *testing.T) {
			got := Solution(tt.input)
			if !reflect.DeepEqual(got, tt.want) {
				t.Errorf("%s, want: %s", got, tt.want)
			}
		})
	}
}
