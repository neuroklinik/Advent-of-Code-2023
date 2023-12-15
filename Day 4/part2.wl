cards = ReadList["cards.txt", "String"];
cardcounts = Table[{j[[1]][[1]], Length@Intersection[j[[2]], j[[3]]], 1}, {j, Table[FromDigits /@ StringCases[#, NumberString] & /@ StringSplit[i, ":" | "|"], {i, cards}]}];
For[x = 1, x <= Length@cardcounts, x++, cardcounts[[#]][[3]] += cardcounts[[x]][[3]] & /@ Range[x + 1, x + cardcounts[[x]][[2]]]]
Total@cardcounts[[All, 3]]
