defmodule ListFilter do
  def call(list), do: list_filter(list)

  defp list_filter(list) do
    list
    |> Enum.filter(fn item -> get_odd_number(item) end)
    |> length()
  end

  defp get_odd_number(item) do
    case Integer.parse(item) do
      :error -> false
      {number, _rest} -> rem(number, 2) != 0
    end
  end
end
