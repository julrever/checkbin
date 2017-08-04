# README

First 6 digits from the bank or payment card's numbers is the **Bank Identification Number** (BIN).
These numbers identify the issuer of any particular card held by any subscriber worldwide.

This app contains full database of about 200.000 BINs and all available info about them:
* Brand (VISA, MasterCard, etc.)
* Type (e.g. credit or debit)
* Category (e.g. business card or classic)
* Bank
* Country

## Installation
```
$ git clone https://github.com/julrever/checkbin.git
$ cd checkbin
$ npm install
```

#### To run this application:
1. Run `$ rails s` in terminal (make sure you're in `checkbin` folder)
2. Open a browser window and navigate to http://localhost:3000
3. To get back to the terminal, you can stop the server by typing `Control-c`.