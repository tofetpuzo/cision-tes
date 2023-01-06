sed -i -e  s"/[a-zA-Z-]+[\w ] [a-zA-Z-][\w ] \d\d\d\d-\d\d-\d\d [a-zA-Z-]+ [T[0-9]+:[\d]+:[\d]+/g" | grep ^[A-Z] "/service.log/"

Output:
# Jacob on 2002-01-03 visited T22:26:18 
# Mark on 2002-02-14 visited T22:26:18 
# Samantha on 1930-04-21 visited T22:26:18 
# Lola on 2022-03-23 visited T22:26:39 
# Loving on 2003-03-03 visited T22:26:18 
# Agnes on 1902-02-02 visited T22:26:39