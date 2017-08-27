
import           Data.List
import           Diagrams.Backend.SVG.CmdLine
import           Diagrams.Prelude             hiding (blue, image, pink)

main :: IO ()
main = mainWith image

pink :: Colour Double
pink = sRGB24 234 218 205

blue :: Colour Double
blue = sRGB24 232 232 232

image :: Diagram B
image =
  foldl' (===) mempty
    (replicate 6 (strip blue 1 === strip pink 1))
  ===
  strip blue 2


strip :: Colour Double -> Double -> Diagram B
strip colour height =
  rect 1 (height / 14)
    # fc colour
    # lcA transparent
