s(CountA, CountB) --> "a", s(PriorCountA, CountB), { CountA is PriorCountA + 1 }.
s(CountA, CountB) --> "b", s(CountA, PriorCountB), { CountB is PriorCountB + 1 }.
s(0, 0) --> [].
