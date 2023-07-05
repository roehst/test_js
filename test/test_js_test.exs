defmodule TestJsTest do
  use ExUnit.Case
  doctest TestJs

  test "greets the world" do
    NodeJS.start_link path: "."

    i = 200

    {:ok, result_from_node} = NodeJS.call {"index", :generate}, [i]
    {:ok, result_from_elixir} = TestJs.generate(i)

    assert result_from_node == result_from_elixir
  end
end
