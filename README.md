# Flutter Crypto Exchange Rate

## Documentation

A simple flutter app that shows live exchange rate of cryptocurrency using the CoinGecko API

```
GET https://pro-api.coingecko.com/api/v3/
```

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

firstly you need to change the api key section that I provided within the file to your own api key, if you dont change it, it wont work.
And then in the scaffold section the data will be shown use postman to see the data structure and fetch the things that you want to fetch or read the CoinGecko docs for more information about the response format




