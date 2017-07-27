package main

import (
  "github.com/gin-gonic/gin"
  "fmt"
)

func resendotpHandler(c *gin.Context)  {
  var request struct {
    Mobileno string `json:"mobileno"`
    RequestType string `json:"request_type"`
    CallonOTP bool `json:"otponcall"`
  }
  if c.Bind(&request) == nil {
    validnum := false
    validreq := false
    blocked := false
    status := "failed"
    if request.RequestType == "r"{
      validreq = true
      if exists := checkExists(request.Mobileno); exists {
        validnum = true
        blocked = resendOTP(request.Mobileno)
        if !blocked && !request.CallonOTP{
          resendRequestOTP(request.Mobileno, "text")
        }else if !blocked && request.CallonOTP{
          resendRequestOTP(request.Mobileno, "voice")
        }
        status = "success"
      }else{
        status = "failed"
      }
    }
    c.JSON(200, gin.H{
      "status" : status,
      "is_blocked" : blocked,
      "valid_number": validnum,
      "valid_request" : validreq,
    })
  }else{
    fmt.Println(request)
  }
}
