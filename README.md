# NOTICE

Before compiling polaris edk2, you have to patch the DSDT.

For example:

```
cd ${DEVICE}/ && wine ../bin/asl-x64.exe Dsdt.asl && mv DSDT.AML DSDT-orig.AML && cd ../
./bin/sosi-patcher-x64 ./polaris/DSDT-orig.AML ./polaris/DSDT.aml 0x860098D8
```

# Contribution

Contact @strongtz via Telegram or send email to strongtz@yeah.net
