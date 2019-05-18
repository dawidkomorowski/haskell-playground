module Flatten (flatten) where

flatten list =
    if null list then []
    else (head list) ++ flatten (tail list)