package main

import (
	"fmt"
	. "github.com/hgfischer/go-otp"
	. "github.com/segmentio/go-prompt"
	"os"
)

func main() {
	var secret string
	secret = os.Getenv("OTP_SECRET")
	if secret == "" {
		secret = PasswordMasked("Environment variable OTP_SECRET not found. Enter SECRET")
		if secret == "" {
			fmt.Println("No secret provided, exting...")
			os.Exit(1)
		}
	}
	totp := &TOTP{Secret: secret, IsBase32Secret: true}
	token := totp.Get()
	fmt.Printf("%s\n", token)
}
