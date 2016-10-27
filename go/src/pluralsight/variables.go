package main

import (
    "fmt"
    "reflect"
)

func main() {
    a := 10.5
    b := 3
    c := int(a) + b

    fmt.Println(reflect.TypeOf(c))
}
