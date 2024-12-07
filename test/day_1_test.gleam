import day_1
import gleeunit/should

pub fn day_1_part_1_example_test() {
  let left = [3, 4, 2, 1, 3, 3]
  let right = [4, 3, 5, 3, 9, 3]

  day_1.get_total_distance(left, right)
  |> should.equal(11)
}

pub fn day_1_part_1_solution_test() {
  day_1.part1()
  |> should.equal(2_970_687)
}

pub fn day_2_part_2_example_test() {
  let left = [3, 4, 2, 1, 3, 3]
  let right = [4, 3, 5, 3, 9, 3]

  day_1.similarity_score(left, right)
  |> should.equal(31)
}

pub fn day_1_part_2_solution_test() {
  day_1.part2()
  |> should.equal(23_963_899)
}
