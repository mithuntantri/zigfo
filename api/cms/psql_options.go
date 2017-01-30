package main

import (
  "fmt"
  "strconv"
  _ "github.com/lib/pq"
)

func fetchOptions(choice int, options_count int) Options{
    fmt.Println("choice",choice, "options_count", options_count)
    var option Options
    if options_count >= 10{
      var second_part = strconv.Itoa(options_count)
      option.Key = strconv.Itoa(choice) + second_part
    }else{
      var second_part = "0" + strconv.Itoa(options_count)
      option.Key = strconv.Itoa(choice) + second_part
    }
    option.Enabled = true
    option.Selected = false
    if(options_count == 1){
      option.Selected = true
    }
    db.QueryRow("SELECT option_name, option_code, price FROM options WHERE option_key=$1", option.Key).Scan(&option.Name, &option.Code, &option.Price)
    return option
}
