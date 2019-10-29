defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) when number == 0 do "" end
  def numeral(number) when number <= 3 do
    Enum.map((1..number), fn(_)->"I" end) |> Enum.join
  end
  def numeral(number) when number == 4 do "IV" end
  def numeral(number) when number == 5 do "V" end
  def numeral(number) when number <= 8 do
    "V#{String.duplicate("I", number-5)}"
  end
  def numeral(number) when number == 9 do "IX" end
  def numeral(number) when number == 10 do "X" end
  # def numeral(number) when number <= 13 do
  #   "X#{String.duplicate("I", number-10)}"
  # end
  # def numeral(number) when number <= 19 do
  #   [numeral(10),numeral(number-10)] |> Enum.join
  # end
  # def numeral(number) when number <= 29 do
  #   [numeral(10),numeral(10),numeral(number-20)] |> Enum.join
  # end
  def numeral(number) when number <= 38 do
    #[numeral(10),numeral(10),numeral(10),numeral(number-30)] |> Enum.join
    [Enum.map(1..div(number,10),fn(_)->numeral(10) end),numeral(rem(number,10))]
    |> Enum.join
  end

  _primaryValues = [5,10,15]


end
