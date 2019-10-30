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
  def numeral(number) when number <= 38 do
    [Enum.map(1..div(number,10),fn(_)->numeral(10) end),numeral(rem(number,10))] |> Enum.join
  end
  def numeral(number) when rem(number,div(number,10)*10)==9 do
    [numeral(div(number,10)*10),numeral(9)] |> Enum.join
  end
  def numeral(number) when number == 40 do "XL" end
  def numeral(number) when number < 50 do
    [numeral(40),numeral(rem(number,40))] |> Enum.join
  end
  def numeral(number) when number==50 do "L" end
  def numeral(number) when number < 60 do
    [numeral(50), numeral(rem(number,50))] |> Enum.join
  end
  def numeral(number) when number < 70 do
    [numeral(50), numeral(10), numeral(rem(number,60))] |> Enum.join
  end
  def numeral(number) when number < 80 do
    [numeral(50), numeral(20), numeral(rem(number,70))] |> Enum.join
  end
  def numeral(number) when number < 90 do
    [numeral(50), numeral(30), numeral(rem(number,80))] |> Enum.join
  end
  def numeral(number) when number == 90 do "XC" end
  def numeral(number) when number < 100 do
    [numeral(90), numeral(rem(number,90))] |> Enum.join
  end
  def numeral(number) when number == 100 do "C" end
  def numeral(number) when number <= 200 do
    [numeral(100), numeral(number-100)] |> Enum.join
  end
  def numeral(number) when number < 300 do
    [numeral(200), numeral(number-200)] |> Enum.join
  end
  def numeral(number) when number == 300 do
    [numeral(200), numeral(100)] |> Enum.join
  end
  def numeral(number) when number < 400 do
    [numeral(300), numeral(number-300)] |> Enum.join
  end
  def numeral(number) when number == 400 do "CD" end
  def numeral(number) when number < 490 do
    [numeral(400), numeral(number-400)] |> Enum.join
  end
  def numeral(number) when number == 500 do "D" end
  def numeral(number) when number < 600 do
    [numeral(500), numeral(number-500)] |> Enum.join
  end
  def numeral(number) when number == 900 do "CM" end
  def numeral(number) when number < 1000 do
    [numeral(900), numeral(number-900)] |> Enum.join
  end
  def numeral(number) when number == 1000 do "M" end
  def numeral(number) when number < 1900 do
    [numeral(1000), numeral(number-1000)] |> Enum.join
  end
  def numeral(number) when rem(number,1000) == 0 do
    [Enum.map(1..div(number,1000),fn(_)->numeral(1000) end)] |> Enum.join
  end
  def numeral(number) when number < 4400 do
    [numeral(div(number,1000)*1000),numeral(rem(number,1000))] |> Enum.join
  end
end
