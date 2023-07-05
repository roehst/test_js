defmodule TestJs do
  @moduledoc """
  Documentation for `TestJs`.
  """

  def generate(n) do
    {:ok, Enum.map(0..n-1, fn i -> i end)}
  end
end
