
module Geometry do
  defmodule Rectangle do
    alias Messages, as: Msg

    def area(a, b), do: a * b

    def area(a), do: a * a

    def sum_value_to_area(a, b, c), do: (a |> area(b)) + c

    def sum(a \\ 0, b \\ 0, c \\ 0), do: a + b + c

    def show_message, do: "Hi world !!!"|>Msg.show_message

  end
end

defmodule Messages do
  @moduledoc "Implements message in the shell"
  import IO

  defp print_message(msg), do: ("print_message: " <> msg)|>puts

  @doc "public print message"
  @spec show_message(String) :: String
  def show_message(msg), do: msg|>print_message

end
