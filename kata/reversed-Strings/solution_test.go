package reversedStrings

import (
	"fmt"
	"testing"
)

type Case struct {
	input, want string
}

var cases = []Case{
	{input: "world", want: "dlrow"},
}

func TestReversedStrings(t *testing.T) {
	for i, tt := range cases {
		t.Run(fmt.Sprint(i), func(t *testing.T) {
			got := reversedStrings(tt.input)
			if got != tt.want {
				t.Errorf("%s, want: %s", got, tt.want)
			}
		})
	}
}
