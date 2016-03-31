# GETOTP

Get your otp password generated by totp.

The program tries to read the environment variable **OTP_SECRET**, otherwise prompts for the secret.

The output is your one time password that can be piped to, for example, your clipboard.

When setting your environment variable in bash you might want to leave a space at the beginning of the line so it doesn't get saved to history.


### To install:

If you have go installed you can compile it and install yourself:

```
go get github.com/xnaveira/getotp
go install github.com/xnaveira/getotp
```

Or you can download a compiled version for your platform as well:

Linux 386: https://github.com/xnaveira/getotp/blob/master/release/getotp-linux-386

Linux amd64: https://github.com/xnaveira/getotp/blob/master/release/getotp-linux-amd64

Linux arm: https://github.com/xnaveira/getotp/blob/master/release/getotp-linux-arm

Mac: https://github.com/xnaveira/getotp/blob/master/release/getotp-mac-amd64

Windows 386: https://github.com/xnaveira/getotp/blob/master/release/getotp-windows-386.exe

Windows amd64: https://github.com/xnaveira/getotp/blob/master/release/getotp-windows-amd64.exe


### To use:

````
 export OTP_SECRET=YOURSECRET
getotp
````
