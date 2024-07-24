package main

import "core:fmt"

factorial :: proc(n: int) -> int {
	if n == 0 || n == 1 {
		return 1
	}
	return n * factorial(n - 1)
}

main :: proc() {
	fmt.println(factorial(10))
}
