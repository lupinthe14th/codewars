package pickpeaks

// PosPeaks is a structure of Peaks and their positions
type PosPeaks struct {
	Pos   []int
	Peaks []int
}

func PickPeaks(array []int) PosPeaks {
	var posPeaks = PosPeaks{Pos: []int{}, Peaks: []int{}}
	l := len(array)
	if l == 0 {
		return posPeaks
	}
	var pos, peak int = 0, array[0]
	var up bool

	for i := 1; i < l; i++ {
		if up && pos != 0 && peak > array[i] {
			posPeaks.Pos = append(posPeaks.Pos, pos)
			posPeaks.Peaks = append(posPeaks.Peaks, peak)
			up = false
			peak = array[i]
		} else if peak < array[i] {
			up = true
			pos = i
		}
		peak = array[i]
	}
	return posPeaks
}
