package pickpeaks

// PosPeaks is a structure of Peaks and their positions
type PosPeaks struct {
	Pos   []int
	Peaks []int
}

func PickPeaks(array []int) PosPeaks {
	var posPeaks = PosPeaks{Pos: []int{}, Peaks: []int{}}
	var pos int = 0
	for i := 1; i < len(array); i++ {
		if pos > 0 && array[i-1] > array[i] {
			posPeaks.Pos = append(posPeaks.Pos, pos)
			posPeaks.Peaks = append(posPeaks.Peaks, array[pos])
			pos = 0
		} else if array[i-1] < array[i] {
			pos = i
		}
	}
	return posPeaks
}
