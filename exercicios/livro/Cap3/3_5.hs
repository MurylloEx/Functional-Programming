module Main where

    data Unidade = Inch Double | Yard Double | Foot Double | Metro Double

    convMetros :: Unidade -> Double
    convMetros (Inch x) = 0.0254 * x
    convMetros (Yard x) = 0.9144 * x
    convMetros (Foot x) = 0.3048 * x
    convMetros (Metro x) = x

    convImperial :: Double -> Unidade -> Double
    convImperial v (Inch _) = v / 0.0254
    convImperial v (Yard _) = v / 0.9144
    convImperial v (Foot _) = v / 0.3048
    convImperial v (Metro _) = v

    main :: IO ()
    main = do
        print $ convMetros $ Inch 3254
        print $ convMetros $ Yard 645
        print $ convMetros $ Foot 8762

        print (convImperial 1000 (Inch 0))
        print (convImperial 1000 (Yard 0))
        print (convImperial 1000 (Foot 0))