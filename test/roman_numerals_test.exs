defmodule RomanNumeralsTest do
  use ExUnit.Case

  test "1" do
    assert RomanNumerals.numeral(1) == "I"
  end

  test "2" do
    assert RomanNumerals.numeral(2) == "II"
  end

  test "3" do
    assert RomanNumerals.numeral(3) == "III"
  end

  @tag :pending
  test "4" do
    assert RomanNumerals.numeral(4) == "IV"
  end

  test "5" do
    assert RomanNumerals.numeral(5) == "V"
  end

  test "6" do
    assert RomanNumerals.numeral(6) == "VI"
  end

  test "7" do
    assert RomanNumerals.numeral(7)=="VII"
  end

  test "8" do
    assert RomanNumerals.numeral(8)=="VIII"
  end

  test "9" do
    assert RomanNumerals.numeral(9) == "IX"
  end

  test "10" do
    assert RomanNumerals.numeral(10) == "X"
  end

  test "11" do
    assert RomanNumerals.numeral(11) == "XI"
  end

  test "12" do
    assert RomanNumerals.numeral(12) == "XII"
  end

  test "13" do
    assert RomanNumerals.numeral(13) == "XIII"
  end

  test "14" do
    assert RomanNumerals.numeral(14) == "XIV"
  end

  test "15" do
    assert RomanNumerals.numeral(15) == "XV"
  end

  test "16" do
    assert RomanNumerals.numeral(16) == "XVI"
  end

  test "17" do
    assert RomanNumerals.numeral(17) == "XVII"
  end

  test "18" do
    assert RomanNumerals.numeral(18) == "XVIII"
  end

  test "19" do
    assert RomanNumerals.numeral(19) == "XIX"
  end

  test "20" do
    assert RomanNumerals.numeral(20) == "XX"
  end

  test "21" do
    assert RomanNumerals.numeral(21) == "XXI"
  end

  test "22" do
    assert RomanNumerals.numeral(22) == "XXII"
  end

  test "23" do
    assert RomanNumerals.numeral(23) == "XXIII"
  end

  test "24" do
    assert RomanNumerals.numeral(24) == "XXIV"
  end

  test "25" do
    assert RomanNumerals.numeral(25) == "XXV"
  end

  test "26" do
    assert RomanNumerals.numeral(26) == "XXVI"
  end

  test "27" do
    assert RomanNumerals.numeral(27) == "XXVII"
  end

  test "38" do
    assert RomanNumerals.numeral(38) == "XXXVIII"
  end

  test "39" do
    assert RomanNumerals.numeral(39) == "XXIX"
  end

  test "40" do
    assert RomanNumerals.numeral(40) == "XL"
  end

  @tag :pending
  test "48" do
    assert RomanNumerals.numeral(48) == "XLVIII"
  end

  @tag :pending
  test "59" do
    assert RomanNumerals.numeral(59) == "LIX"
  end

  @tag :pending
  test "93" do
    assert RomanNumerals.numeral(93) == "XCIII"
  end

  @tag :pending
  test "141" do
    assert RomanNumerals.numeral(141) == "CXLI"
  end

  @tag :pending
  test "163" do
    assert RomanNumerals.numeral(163) == "CLXIII"
  end

  @tag :pending
  test "402" do
    assert RomanNumerals.numeral(402) == "CDII"
  end

  @tag :pending
  test "575" do
    assert RomanNumerals.numeral(575) == "DLXXV"
  end

  @tag :pending
  test "911" do
    assert RomanNumerals.numeral(911) == "CMXI"
  end

  @tag :pending
  test "1024" do
    assert RomanNumerals.numeral(1024) == "MXXIV"
  end

  @tag :pending
  test "3000" do
    assert RomanNumerals.numeral(3000) == "MMM"
  end
end
