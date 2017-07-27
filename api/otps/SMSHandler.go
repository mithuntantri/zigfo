package main

import (
  "fmt"
  "strings"
  "net/url"
  "net/http"
  "io/ioutil"
)

var new_otp_url = "https://control.msg91.com/api/sendotp.php"
var verify_otp_url = "https://control.msg91.com/api/verifyRequestOTP.php"
var resend_otp_url = "https://control.msg91.com/api/retryotp.php"
var sms_authKey = "164496ASlQqaRPa535961de9b"
var sender_id = "ZIGFOT"
var country_code = "91"

func requestOTP(message, otp, mobile_number string) bool{

    form := url.Values{}
    form.Add("authkey", sms_authKey)
    form.Add("mobiles", country_code + mobile_number)
    form.Add("message", message)
    form.Add("sender", sender_id)
    form.Add("otp", otp)
    form.Add("otp_expiry", "10")
    form.Add("otp_length", "6")

    fmt.Println(form.Encode())

    req, _ := http.NewRequest("POST", new_otp_url, strings.NewReader(form.Encode()))

    req.Header.Add("Content-Type", "application/x-www-form-urlencoded")

    res, _ := http.DefaultClient.Do(req)

    defer res.Body.Close()
    body, _ := ioutil.ReadAll(res.Body)
    fmt.Println(body)
    return true
}

func verifyRequestOTP(mobile_number, otp string) bool{
  form := url.Values{}
  form.Add("authkey", sms_authKey)
  form.Add("mobiles", country_code + mobile_number)
  form.Add("otp", otp)

  req, _ := http.NewRequest("POST", verify_otp_url, strings.NewReader(form.Encode()))

  req.Header.Add("Content-Type", "application/x-www-form-urlencoded")

  res, _ := http.DefaultClient.Do(req)

  defer res.Body.Close()
  body, _ := ioutil.ReadAll(res.Body)
  fmt.Println(body)
  return true
}

func resendRequestOTP(mobile_number, retry_type string) bool{
  form := url.Values{}
  form.Add("authkey", sms_authKey)
  form.Add("mobile", country_code + mobile_number)
  form.Add("retrytype", retry_type)
  fmt.Println("ReSending", mobile_number, retry_type)
  req, _ := http.NewRequest("POST", resend_otp_url, strings.NewReader(form.Encode()))

  req.Header.Add("Content-Type", "application/x-www-form-urlencoded")

  res, _ := http.DefaultClient.Do(req)

  defer res.Body.Close()
  body, _ := ioutil.ReadAll(res.Body)
  fmt.Println(body)
  fmt.Println(res)
  return true
}
