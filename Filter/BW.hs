module Filter.BW where
import Codec.Picture

toBW :: Int -> Image Pixel8 -> Image Pixel8
toBW threshold =
    pixelMap ((*255) . fromIntegral . fromEnum . (< fromIntegral threshold))

