•Show "Advent of Code 2017"

•Show "Day 1"
day1input ← •file.Chars "2017-day1.txt"
•Show "Part 1"
IsNum ← {(𝕩≤'9')∧𝕩≥'0'}
Day1a ← {
  processed ← Isnum⊸/ 𝕩
  mask ← =⟜(1⊸⌽) processed
  +´(mask×(processed-'0'))
}
•Show Day1a day1input

•Show "Part 2"
Day1b ← {
  processed ← Isnum⊸/ 𝕩
  halfLength ← 2÷˜≠processed
  mask ← =⟜(halfLength⊸⌽) processed
  +´(mask×(processed-'0'))
}
•Show Day1b day1input
