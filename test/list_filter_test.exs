defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "return how many odd numbers there are in a list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      assert ListFilter.call(list) == 3
    end
  end
end
