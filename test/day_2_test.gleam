import advent_input
import day_2
import gleeunit/should

const example_input = "7 6 4 2 1
1 2 7 8 9
9 7 6 2 1
1 3 2 4 5
8 6 4 4 1
1 3 6 7 9"

pub fn day_2_part_1_example_test() {
  day_2.part_1(example_input)
  |> should.equal(2)
}

pub fn day_2_part_1_solution_test() {
  let assert Ok(input) = advent_input.read(2)

  day_2.part_1(input)
  |> should.equal(242)
}
