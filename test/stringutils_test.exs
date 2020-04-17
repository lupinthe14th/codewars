defmodule TestStringUtils do
  use ExUnit.Case
  import StringUtils, only: [upper_case?: 1, alter_case: 1, digit?: 1]

  test "basic cases from description" do
    assert upper_case?("") == true
    assert upper_case?("c") == false
    assert upper_case?("C") == true
    assert upper_case?("hello I AM DONALD") == false
    assert upper_case?("HELLO I AM DONALD") == true
    assert upper_case?("ACSKLDFJSgSKLDFJSKLDFJ") == false
    assert upper_case?("ACSKLDFJSGSKLDFJSKLDFJ") == true
  end

  test "basic cases" do
    assert alter_case("hello world") == "HELLO WORLD"
    assert alter_case("HELLO WORLD") == "hello world"
    assert alter_case("hello WORLD") == "HELLO world"
    assert alter_case("HeLLo WoRLD") == "hEllO wOrld"
    # Non-alphabetical characters are unaffected
    assert alter_case("12345") == "12345"
    assert alter_case("1a2b3c4d5e") == "1A2B3C4D5E"
    assert alter_case("StringUtils.toAlternatingCase") == "sTRINGuTILS.TOaLTERNATINGcASE"
    # When method is called twice, should return original string
    assert alter_case(alter_case("Hello World")) == "Hello World"
  end

  test "basic cases digit?(s)" do
    assert digit?("") == false
    assert digit?("7") == true
    assert digit?(" ") == false
    assert digit?("a") == false
    assert digit?("a5") == false
    assert digit?("14") == false
  end
end
