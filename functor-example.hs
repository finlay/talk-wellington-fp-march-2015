-- Take a name, and capitalise the words in it
formatName :: String -> String
formatName = unwords . map capitalise . words 

-- Now allow for names that might not be there
-- for example from an optional input html field
fn = fmap formatName

fn (Just "haskell CURRY")  -- > Just "Haskell Curry"
fn Nothing                 -- > Nothing
