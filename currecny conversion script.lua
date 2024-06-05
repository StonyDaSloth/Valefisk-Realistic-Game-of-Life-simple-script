
-- on game load
function onload() 
    -- print "Hello World!"
end
-- on chat update
function onChat(msg, sender) 
    local input = ""
    if  string.sub(msg, 1, 5) == "-con " then
        input = string.sub(msg, 6, string.len(msg))
    end
    if  string.sub(msg, 1, 3) == "-c " then
        input = string.sub(msg, 4, string.len(msg))
    end
    if  string.sub(msg, 1, 9) == "-convert " then
        input = string.sub(msg, 10, string.len(msg))
    end
    local result = convertUsdToPound(input)
    print ("usd: ", input, " || pound: ", result)
    return true
end
-- convert usd to pound
function convertUsdToPound(usdRate)
    local poundToUsdRate = 0.79
    return usdRate*poundToUsdRate
end
