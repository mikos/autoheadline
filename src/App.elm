module App (..) where

import View exposing (rootView)
import Task exposing (Task)
import Effects exposing (Effects, Never, none)
import StartApp exposing (App)
import Types exposing (Model)
import Html exposing (Html)
import State exposing (initialState, update)


app : App Model
app =
  StartApp.start
    { init = initialState
    , view = rootView
    , update = update
    , inputs = []
    }


main : Signal Html
main =
  app.html


port tasks : Signal (Task Never ())
port tasks =
  app.tasks
