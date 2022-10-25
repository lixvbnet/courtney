package newpac

import "fmt"

func max(a, b int) int {
	if a > b {
		// notest
		fmt.Println("gt")
		return a
	} else {
		fmt.Println("lt")
		return b
	}
}
