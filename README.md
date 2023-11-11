# Flutter Crypto Exchange Rate

## Documentation

A simple flutter app that shows live exchange rate of cryptocurrency using the CoinGecko API

for pro plan

```
GET https://pro-api.coingecko.com/api/v3/
```

for demo
```
GET https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc
```

If you want to change the country currency type, just change the value from usd in the vs_currency key to your own currency

Go to [CoinGecko](https://www.coingecko.com/api/documentation ) for more information about the API and get the API key so that you can do the API request

## Run The App 

Make sure to use the right dir where you put all the file
```
cd [directory]
```

and run the flutter command to run it 
```
flutter run
```

## Note

There is only 1 main file you need to keep in mind for the live data which is :

crypto_data.dart

Im using the demo api, if you want to use the pro plan from CoinGecko you need to get the api key.
And then in the scaffold section the data will be shown. 
Use postman to see the data structure and fetch the things that you want to fetch or read the CoinGecko docs for more information about the response format

