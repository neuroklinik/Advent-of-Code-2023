Total[FromDigits[StringJoin[{First[#], Last[#]}]] & /@ StringCases[DigitCharacter] /@ StringSplit@Import["calibration.txt"]]