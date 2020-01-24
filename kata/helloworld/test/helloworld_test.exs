defmodule TestHelloWorld do
  use ExUnit.Case

  test "greets the world" do
    assert HelloWorld.greet() == "hello world!"
  end
end
