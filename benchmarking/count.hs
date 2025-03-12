import System.CPUTime (getCPUTime)

approxPi :: Int -> Double
approxPi n = 4 * sum [((-1) ** fromIntegral k) / (2 * fromIntegral k + 1) | k <- [0..n]]

main :: IO ()
main = do
    let iterations = 1000000
    start <- getCPUTime
    let piApprox = approxPi iterations
    end <- getCPUTime
    let timeMs = fromIntegral (end - start) / (10^9)

    putStrLn $ "Temps d'exécution en Haskell : " ++ show timeMs ++ " ms"

-- merci chatgpt pour l'haskell tu gères
