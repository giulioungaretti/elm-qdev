module PlotExample exposing (..)

import Plot

main =
  Plot.viewPlot plotConfig dataHere


type alias SeriesData =
  { x : List Int, y : List Int }


dataHere : List SeriesData
dataHere =
  [ { x = [ -1, 1, 3, 9, 14 ], y = [ -2, 10, 6, 1, 1 ] }
  , { x = [ -1, 0, 2, 3, 4 ], y = [ -1, 2, 4, 6, 7 ] }
  ]


plotConfig : Plot.PlotConfig SeriesData
plotConfig =
  Plot.PlotConfig "Great plot" 200 400 serieConfigs


serieConfigs : List (Plot.SerieConfig SeriesData)
serieConfigs =
  [ Plot.SerieConfig "mediumvioletred" "red" .x .y
  , Plot.SerieConfig "cornflowerblue" "blue" .x .y
  ]
