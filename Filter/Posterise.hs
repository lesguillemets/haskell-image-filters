module Filter.Posterise where
import Codec.Picture

simplePosterise :: Int -> Image Pixel8 -> Image Pixel8
simplePosterise n = pixelMap f
    where
        width = 255 `div` fromIntegral n
        f gray = width * (gray `div` width)
