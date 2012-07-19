averageThree :: Int -> Int -> Int -> Float     
averageThree l m n = fromInt(l+m+n) / 3
                  -- float averageThree(int l, int m, int n) {
                  --   return ((float)(l+m+n))/3; }

difSquare x y = (x-y)^2      -- C lacks polymorphic type inference
