cards = ReadList["cards.txt", "String"];
Total@Table[2^(x - 1), {x, Length /@ DeleteCases[Table[Apply[Intersection, FromDigits /@ StringCases[#, NumberString] & /@ Rest[StringSplit[i, ":" | "|"]]], {i, cards}], {}]}]