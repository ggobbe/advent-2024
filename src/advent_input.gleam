import gleam/int
import gleam/string
import simplifile

pub fn read(day: Int) -> Result(String, String) {
  let input_file = "input/" <> int.to_string(day)

  case simplifile.read(input_file) {
    Ok(input) ->
      input
      |> string.trim()
      |> Ok()
    Error(err) ->
      Error(
        "Cannot read input file '"
        <> input_file
        <> "': "
        <> simplifile.describe_error(err),
      )
  }
}
