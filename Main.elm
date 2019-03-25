module Main exposing (main)

import Html exposing (text)
import List exposing (..)


main =
    text
        << String.fromInt
    <|
        sum <|
            let
                numbers =
                    [ 1, 2, 3 ]
            in
            map (\n -> n + tail_haskell numbers) numbers


tail_haskell : List a -> List a
tail_haskell l =
    Maybe.withDefault [] <| tail l
