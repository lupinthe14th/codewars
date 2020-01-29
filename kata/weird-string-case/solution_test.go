package weirdstringcase

import (
	"fmt"
	"testing"
)

type Case struct {
	input string
	want  string
}

var cases = []Case{
	{input: "abc def", want: "AbC DeF"},
	{input: "ABC", want: "AbC"},
	{input: "This is a test Looks like you passed", want: "ThIs Is A TeSt LoOkS LiKe YoU PaSsEd"},
}

func TestToWeirdCase(t *testing.T) {
	for i, tt := range cases {
		t.Run(fmt.Sprint(i), func(t *testing.T) {
			got := toWeirdCase(tt.input)
			if got != tt.want {
				t.Errorf("%s, want: %s", got, tt.want)
			}
		})
	}
}
