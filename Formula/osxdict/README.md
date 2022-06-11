# osxdict
A command-line interface (cli) to the native Dictionary.app in OSX

## INSTALL

Using Homebrew:
```
brew tap leettran/homebrew-tap
brew install osxdict
```

From Source:
```
git clone https://github.com/leettran/osxdict.git
cd osxdict
cmake .
make
make install
```

## USAGE

```
example use: osxdict [-a | -A | -d name [-d name] ... ] [-j] <term> ...
alternative: osxdict -l [-A]

available options:
   -h, --help                 print this help information
   -d, --dictionary <name>    look up term in dictionary <name>
   -a, --active               look up term in active dictionary
   -A, --all                  look up term in all dictionaries
   -j, --json                 output json format
   -l, --list                 list available dictionaries
   -l -A                      list all available dictionaries

environment variables:
   OSX_DICTIONARY             colon-separated list of dictionaries
                              can also be 'ALL' or 'ACTIVE'
                              default if no dictionary specified
```

## LICENSE

Copyright (c) 2022 leettran
Released under the [The Unlicensed](https://unlicense.org)
