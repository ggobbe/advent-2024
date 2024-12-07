import advent_input
import day_1
import gleeunit/should

const example_input = "3   4
4   3
2   5
1   3
3   9
3   3"

pub fn day_1_part_1_example_test() {
  day_1.part_1(example_input)
  |> should.equal(11)
}

pub fn day_1_part_1_solution_test() {
  let assert Ok(input) = advent_input.read(1)

  day_1.part_1(input)
  |> should.equal(2_970_687)
}

pub fn day_2_part_2_example_test() {
  day_1.part_2(example_input)
  |> should.equal(31)
}

pub fn day_1_part_2_solution_test() {
  let assert Ok(input) = advent_input.read(1)

  day_1.part_2(input)
  |> should.equal(23_963_899)
}
