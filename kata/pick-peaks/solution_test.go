package pickpeaks

import (
	"fmt"
	"reflect"
	"testing"
)

type Case struct {
	input []int
	want  PosPeaks
}

var cases = []Case{
	{input: []int{0, 1, 2, 5, 1, 0}, want: PosPeaks{Pos: []int{3}, Peaks: []int{5}}},
	{input: []int{3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3}, want: PosPeaks{Pos: []int{3, 7}, Peaks: []int{6, 3}}},
	{input: []int{1, 2, 2, 2, 1}, want: PosPeaks{Pos: []int{1}, Peaks: []int{2}}},
	{input: []int{}, want: PosPeaks{Pos: []int{}, Peaks: []int{}}},
}

func TestPickPeaks(t *testing.T) {
	for i, tt := range cases {
		t.Run(fmt.Sprint(i), func(t *testing.T) {
			got := PickPeaks(tt.input)
			if !reflect.DeepEqual(got, tt.want) {
				t.Errorf("input: %v, got: %v, want: %v", tt.input, got, tt.want)
			}
		})
	}
}
