import advent_input
import gleam/int
import gleam/list
import gleam/result
import gleam/string

pub fn part1() {
  let #(left, right) = parse_file()
  get_total_distance(left, right)
}

pub fn get_total_distance(left: List(Int), right: List(Int)) -> Int {
  let left_sorted = list.sort(left, int.compare)
  let right_sorted = list.sort(right, int.compare)

  list.zip(left_sorted, right_sorted)
  |> list.map(fn(pair) {
    let #(a, b) = pair
    int.absolute_value(a - b)
  })
  |> int.sum()
}

fn parse_file() {
  let assert Ok(input) = advent_input.read(1)

  input
  |> string.split("\n")
  |> list.map(fn(line) {
    line
    |> string.split("   ")
    |> list.map(int.parse)
    |> list.map(result.unwrap(_, 0))
  })
  |> list.map(fn(line) {
    case line {
      [first, second] -> #(first, second)
      _ -> panic as "invalid input"
    }
  })
  |> list.unzip()
}
