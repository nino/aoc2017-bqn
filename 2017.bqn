•Show "Advent of Code 2017"

IsNum ← {(𝕩≤'9')∧𝕩≥'0'}

# Solutions are here
Day1a ← {
  processed ← Isnum⊸/ 𝕩
  mask ← =⟜(1⊸⌽) processed
  +´(mask×(processed-'0'))
}
Day1b ← {
  processed ← Isnum⊸/ 𝕩
  halfLength ← 2÷˜≠processed
  mask ← =⟜(halfLength⊸⌽) processed
  +´(mask×(processed-'0'))
}
Day2a ← +´(⌈´-⌊´)¨
Day2b ← +´({(0=1|𝕩)∧𝕩≠1}⊸/∘⥊÷⌜˜)¨

# Parsing and output is here
•Show "Day 1"
day1input ← •file.Chars "2017-day1.txt"
•Show "Part 1"
•Show Day1a day1input

•Show "Part 2"
•Show Day1b day1input

•Show "Day 2"
day2input ← •file.Lines "2017-day2.txt"
ProcessDay2 ← {
  SplitTabs ← {
    0=≠𝕩 ? ⟨⟩ ;
    tab ← @+9
    tabindex ← 𝕩⊐tab
    ⟨tabindex↑𝕩⟩ ∾ 𝕊 (1+tabindex)↓𝕩
  }
  rows ← SplitTabs¨ 𝕩
  ParseInt ← (10⊸×⊸+˜´∘⌽-⟜'0')
  ParseInt¨¨ rows
}
•Show "Part 1"
•Show Day2a ProcessDay2 day2input
•Show Day2a ⟨⟨5, 1, 9, 5⟩, ⟨7, 5,3⟩, ⟨2,4,6,8⟩⟩

•Show Day2b ProcessDay2 day2input
