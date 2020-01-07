package main

import (
	"fmt"
	"testing"
)

type Case struct {
	input, want float64
}

var cases = []Case{
	{input: 2.0, want: 0.5},
	{input: 4.0, want: 6.096117967978e-01},
	{input: 5.0, want: 6.417424305044e-01},
	{input: 8.0, want: 0.7034648345913732},
	{input: 500000.0, want: 0.9985867860840736},
}

func TestSolve(t *testing.T) {
	for i, tt := range cases {
		t.Run(fmt.Sprint(i), func(t *testing.T) {
			got := Solve(tt.input)
			if !isInrangeAssert(RANGE, got, tt.want) {
				t.Errorf("%f, want: %f", got, tt.want)
			}
		})
	}
}
