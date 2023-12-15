package main

import "fmt"

func main() {

	var userName string // Declering an variable
	var age int

	userName = "Sushant" //The go compiler will infer the type of the variable
	age = 27

	fmt.Println("Helle", userName, "you are", age, "years old")
}
