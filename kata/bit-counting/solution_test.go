package bitcounting

import (
	"fmt"
	"testing"
)

type Case struct {
	input uint
	want  int
}

var cases = []Case{
	{input: 0, want: 0},
	{input: 4, want: 1},
	{input: 7, want: 3},
	{input: 9, want: 2},
	{input: 10, want: 2},
}

func TestCountBits(t *testing.T) {
	for i, tt := range cases {
		t.Run(fmt.Sprint(i), func(t *testing.T) {
			got := CountBits(tt.input)
			if got != tt.want {
				t.Errorf("%d, want: %d", got, tt.want)
			}
		})

	}
}
