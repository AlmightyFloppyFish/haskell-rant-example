import           Data.List

main :: IO ()
main =
  putStrLn . show $
  sum $
  let numbers = [1, 2, 3]
   in map (\n -> n + tail numbers) numbers
