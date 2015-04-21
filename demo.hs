import System.Environment
import Codec.Picture
import Filter.Posterise


main = do
    [kind] <- getArgs
    case kind of
        "poster" -> demoPoster
        _ -> return()

demoPoster :: IO ()
demoPoster = do
    r <- readJpeg "./assets/room.gray.jpg"
    case r of
        (Left st) -> putStrLn st
        (Right image) ->
            case image of
                ImageY8 img -> do
                    saveJpgImage 100 "./assets/demo/posterisedroom.jpg" .
                        ImageY8 $ simplePosterise 5 img
                    return ()
                _ -> return ()
