-- |
-- Module      : Foundation.Compat.Text
-- License     : BSD-style
-- Maintainer  : Foundation
-- Stability   : experimental
-- Portability : portable
--
-- Module to convert text's Text type
module Foundation.Compat.Text
    ( toText
    , fromText
    ) where

import Data.Text (Text)
import qualified Data.Text as T
import Foundation

-- | Convert a String to a Text
toText :: String -> Text
toText = T.pack . toList

-- | Convert a Text to String
fromText :: Text -> String
fromText = fromList . T.unpack
