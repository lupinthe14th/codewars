defmodule TestHelloWorld do
  use ExUnit.Case
  doctest HelloWorld

  test "greets the world" do
    assert HelloWorld.greet() == "hello world!"
  end
end
