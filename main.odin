package main

import "core:fmt"

factorial :: proc(n: int) -> int {
	if n == 0 || n == 1 {
		return 1
	}
	return n * factorial(n - 1)
}

factorial_tail :: proc(n: int, a: int) -> int {
	if n == 0 || n == 1 {
		return a
	}
	return factorial_tail(n - 1, n * a)
}

main :: proc() {
	fmt.println(factorial(10))
}
