defmodule FirstProject do
  def get do
    File.stream!("E:/ElixirProjects/Tests/first_project/numbers.txt")
    |> Stream.map(&String.trim/1)
    |> Enum.to_list()
  end

  def ascend do
    File.stream!("E:/ElixirProjects/Tests/first_project/numbers.txt")
    |> Stream.map(&String.trim/1)
    |> Enum.to_list()
    |> Enum.sort()
    |> Stream.with_index
    |> Stream.map(fn ({line, index}) -> IO.puts "#{index + 1}. #{line}" end)
    |> Stream.run
  end

  def descend do
    File.stream!("E:/ElixirProjects/Tests/first_project/numbers.txt")
    |> Stream.map(&String.trim/1)
    |> Enum.to_list()
    |> Enum.sort()
    |> Enum.reverse()
    |> Stream.with_index
    |> Stream.map(fn ({line, index}) -> IO.puts "#{index + 1}. #{line}" end)
    |> Stream.run
  end

  def write(here) do
    File.write!("E:/ElixirProjects/Tests/first_project/numbers.txt", "\n#{here}", [:append])
  end
end
