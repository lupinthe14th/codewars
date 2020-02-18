package shortestWord

import (
	"fmt"
	"testing"
)

type Case struct {
	in   string
	want int
}

var cases = []Case{
	{in: "bitcoin take over the world maybe who knows perhaps", want: 3},
	{in: "turns out random test cases are easier than writing out basic ones", want: 3},
}

func TestFindShort(t *testing.T) {
	for i, c := range cases {
		t.Run(fmt.Sprint(i), func(t *testing.T) {
			got := FindShort(c.in)
			if got != c.want {
				t.Errorf("%d, want: %d", got, c.want)
			}
		})
	}
}
