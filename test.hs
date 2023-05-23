import Network.HTTP.Conduit
import Control.Monad.IO.Class (liftIO)

main = withManager $ \manager -> do
    request <- parseUrl "http://www.winsoft.sk"
    liftIO $ print request
    response <- httpLbs request manager
    liftIO $ print response
