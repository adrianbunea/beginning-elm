module Playground exposing (main)

import Html


escapeEarth myVelocity mySpeed fuelStatus =
    let
        escapeVelocityInKmPerSec = 11.186
        orbitalSpeedInKmPerSec = 7.67
        whereToLand =
          if fuelStatus == "low" then
              "Land on droneship"
          else
              "Land on launchpad"
    in
    if myVelocity > escapeVelocityInKmPerSec then
        "Godspeed"

    else if mySpeed == orbitalSpeedInKmPerSec then
        "Stay in orbit"

    else
        whereToLand

computeSpeed distance time =
    distance / time

computeTime startTime endTime =
    endTime - startTime

main = 
    escapeEarth 10 6.7 "low"
        |> Html.text