puzzle = ReadList["input.txt", "String"];
numbers = Flatten[Table[{i, #, StringTake[puzzle[[i]], #]} & /@ StringPosition[puzzle[[i]], DigitCharacter .., Overlaps -> False], {i, Range[Length@puzzle]}], 1];
potentialgears = Flatten[Table[{i, #[[1]]} & /@ StringPosition[puzzle[[i]], "*"], {i,Range[Length@puzzle]}], 1];
pncount[x_] := Length[Select[numbers, x[[1]] - 1 <= #[[1]] <= x[[1]] + 1 && (x[[2]] - 1 <= #[[2]][[1]] <= x[[2]] + 1 || x[[2]] - 1 <= #[[2]][[2]] <= x[[2]] + 1) &]]
realgears = Select[potentialgears, pncount[#] == 2 &];
Total[Times @@@ Table[FromDigits[Extract[#, {3}]] & /@ Select[numbers, x[[1]] - 1 <= #[[1]] <= x[[1]] + 1 && (x[[2]] - 1 <= #[[2]][[1]] <= x[[2]] + 1 || x[[2]] - 1 <= #[[2]][[2]] <= x[[2]] + 1) &], {x, realgears}]]
