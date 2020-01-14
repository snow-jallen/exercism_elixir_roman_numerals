defmodule RomanNumerals do

  @moduledoc """
  Arabic to Roman and Roman to Arabic number converter
  """

  @doc """
  Converts positive integer values to Roman.

  ## Examples

      iex> RomanNumerals.numeral(17)
      "XVII"

  """
    def numeral(number,acc \\ "") do
      case number do
        0 -> acc
        n when n>= 1000 -> numeral(number-1000,acc <> "M")
        n when n>= 900 -> numeral(number-900,acc <> "CM")
        n when n>= 500 -> numeral(number-500,acc <> "D")
        n when n>= 400 -> numeral(number-400,acc <> "CD")
        n when n>= 100 -> numeral(number-100,acc <> "C")
        n when n>= 90 -> numeral(number-90,acc <> "XC")
        n when n>= 50 -> numeral(number-50,acc <> "L")
        n when n>= 40 -> numeral(number-40,acc <> "XL")
        n when n>= 10 -> numeral(number-10,acc <> "X")
        n when n>= 9 -> numeral(number-9,acc <> "IX")
        n when n>= 5 -> numeral(number-5,acc <> "V")
        n when n>= 4 -> numeral(number-4,acc <> "IV")
        n when n>= 1 -> numeral(number-1,acc <> "I")
      end  
    end

  @doc """
  Converts Roman number to integer.

  ## Examples

      iex> RomanNumerals.arabic("XVII")
      17

  """

    def arabic(string,acc \\ 0) do
      case startsWith(string) do
        :end -> acc
        {rest,taken} -> arabic(rest,acc+taken)
      end  
    end
    defp startsWith(_input = "M" <> rest) do  {rest,1000}   end
    defp startsWith(_input = "CM" <> rest) do {rest,900}    end
    defp startsWith(_input = "D" <> rest) do  {rest,500}    end
    defp startsWith(_input = "CD" <> rest) do {rest,400}    end
    defp startsWith(_input = "C" <> rest) do  {rest,100}    end
    defp startsWith(_input = "XC" <> rest) do {rest,90}    end
    defp startsWith(_input = "L" <> rest) do  {rest,50}    end
    defp startsWith(_input = "XL" <> rest) do {rest,40}    end
    defp startsWith(_input = "X" <> rest) do  {rest,10}    end
    defp startsWith(_input = "IX" <> rest) do {rest,9}    end
    defp startsWith(_input = "V" <> rest) do  {rest,5}    end
    defp startsWith(_input = "IV" <> rest) do {rest,4}    end
    defp startsWith(_input = "I" <> rest) do  {rest,1}    end
    defp startsWith("") do :end end
end
