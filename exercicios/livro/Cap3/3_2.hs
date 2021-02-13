module Main where

    data Temperatura = Celsius | Fahrenheit | Kelvin deriving (Eq, Show)

    converterCelsius :: Double -> Temperatura -> Double 
    converterCelsius v Celsius = v
    converterCelsius v Fahrenheit = (v - 32) / 1.8
    converterCelsius v Kelvin = v - 273.15

    converterKelvin :: Double -> Temperatura -> Double 
    converterKelvin v Celsius = v + 273.15
    converterKelvin v Fahrenheit = ((v - 32) / 1.8) + 273.15
    converterKelvin v Kelvin = v

    converterFahrenheit :: Double -> Temperatura -> Double 
    converterFahrenheit v Celsius = (1.8 * v) + 32
    converterFahrenheit v Fahrenheit = v
    converterFahrenheit v Kelvin = v - 273.15

    main :: IO ()
    main = do
        print $ converterCelsius 500 Kelvin
        print $ converterKelvin 500 Fahrenheit
        print $ converterFahrenheit 500 Celsius
