import gleam/int
import gleam/list
import gleam/result
import gleam/string

pub fn count_safe_reports(input: String) {
  let reports = parse_reports(input)

  reports
  |> list.filter(is_ordered)
  |> list.filter(adjacents_by(_, 1, 3))
  |> list.length()
}

fn is_ordered(list: List(Int)) -> Bool {
  let asc = list.sort(list, int.compare)
  let desc = list.sort(list, fn(a, b) { int.compare(b, a) })

  list == asc || list == desc
}

fn adjacents_by(list: List(Int), at_least: Int, at_most: Int) {
  list.window_by_2(list)
  |> list.all(fn(pair) {
    let #(a, b) = pair
    let difference = case { a > b } {
      True -> a - b
      False -> b - a
    }
    difference >= at_least && difference <= at_most
  })
}

fn parse_reports(input: String) {
  input
  |> string.split("\n")
  |> list.map(fn(line) {
    string.split(line, " ")
    |> list.map(fn(digits) { int.parse(digits) |> result.unwrap(0) })
  })
}
