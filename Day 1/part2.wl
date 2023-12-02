Total[FromDigits[{First[#], Last[#]}] & /@ StringCases[StringSplit[Import["calibration.txt"]], Flatten[{IntegerString[#] -> #, IntegerName[#] -> #} & /@ Range[9]], Overlaps -> True]]
