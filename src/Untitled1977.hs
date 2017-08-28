
import           Data.List
import           Diagrams.Backend.SVG.CmdLine
import           Diagrams.Prelude             hiding (blue, gray, image, red,
                                               size)

main :: IO ()
main = mainWith image

size, smallUnit, bigUnit :: Double
size = 228
smallUnit = 10
bigUnit = 47

red, blue, gray :: Colour Double
red = sRGB24 232 210 192
blue = sRGB24 205 201 198
gray = sRGB24 196 183 170

image :: Diagram B
image = half === line === half

half :: Diagram B
half =
  strip white smallUnit
  ===
  strip red bigUnit
  ===
  line
  ===
  strip blue bigUnit
  ===
  strip white smallUnit

strip :: Colour Double -> Double -> Diagram B
strip colour height =
  rect size height
    # fc colour
    # lcA transparent

line :: Diagram B
line =
  hrule size
    # lc gray
