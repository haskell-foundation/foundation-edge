-- |
-- Module      : Foundation.Compat.ByteString
-- License     : BSD-style
-- Maintainer  : Foundation
-- Stability   : experimental
-- Portability : portable
--
-- Module to convert bytestring's ByteString type
{-# LANGUAGE ViewPatterns #-}
module Foundation.Compat.ByteString
    ( fromByteString
    ) where

import Data.ByteString (ByteString)
import Data.ByteString.Internal (toForeignPtr)
import Foundation
import Foundation.Array
import Foundation.Array.Internal

-- | Convert a ByteString to a UArray Word8,
-- without re-allocating or copying anything
fromByteString :: ByteString -> UArray Word8
fromByteString = fromForeignPtr . toForeignPtr
