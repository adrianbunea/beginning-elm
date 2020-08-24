module Playground exposing (main)

import Array
import Html
import Regex


pattern =
    "\\d\\d:\\d\\d (a\\.m\\.|p\\.m\\.)"


maybeRegex =
    Regex.fromString pattern


regex =
    Maybe.withDefault Regex.never maybeRegex


apollo11 =
    """
    On July 16, 1969, the massive Saturn V rocket
    lifted off from NASA's Kennedy Space Center at
    09:32 a.m. EDT. Four days later, on July 20, Neil
    Armstrong and Buzz Aldrin landed on the Moon.
    """


launchTimes =
    Regex.find regex apollo11


main =
    Html.text <| Maybe.withDefault "No launch time" <| List.head <| List.map (\launchTime -> launchTime.match) launchTimes
