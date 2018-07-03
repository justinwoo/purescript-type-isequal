module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Class.Console (log)
import Type.Data.Boolean (BProxy(..), False, True)
import Type.IsEqual (class IsEqual)
import Type.Proxy (Proxy(..))

isEqual
  :: forall a b result
   . IsEqual a b result
  => Proxy a
  -> Proxy b
  -> BProxy result
isEqual _ _ =  BProxy

-- this is true as Int is Int
testA :: BProxy True
testA = isEqual (Proxy :: Proxy Int) (Proxy :: Proxy Int)

-- this is false as Int is not String
testB :: BProxy False
testB = isEqual (Proxy :: Proxy Int) (Proxy :: Proxy String)

main :: Effect Unit
main = do
  log "Ran with successful compilation"
