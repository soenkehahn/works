
import           Data.List
import           Diagrams.Backend.SVG.CmdLine
import           Diagrams.Prelude             hiding (blue, gray, image, red,
                                               size, yellow)

main :: IO ()
main = mainWith image

size :: Double
size = 7

blue, red, yellow, gray :: Colour Double
blue = sRGB24 238 240 239
red = sRGB24 254 239 218
yellow = sRGB24 254 252 214
gray = sRGB24 245 238 229

image :: Diagram B
image = foldl' (===) mempty (addLines strips)

addLines :: [Diagram B] -> [Diagram B]
addLines = intersperse line

strips :: [Diagram B]
strips = map strip $
  [blue, red, yellow, blue, red, yellow, blue]

strip :: Colour Double -> Diagram B
strip colour =
  rect size 1
    # fc colour
    # lcA transparent

line :: Diagram B
line =
  hrule size
    # lc gray
