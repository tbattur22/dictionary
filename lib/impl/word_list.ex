defmodule Dictionary.Impl.WordList do
  require Logger
  @type t :: list(String.t)

  @spec word_list :: t
  def word_list do
    Logger.debug("Debug:Dictionary.Impl.WordList:word_list():File.cwd #{File.cwd!()}")

    File.cwd!() <> "/../dictionary/assets/words.txt"
    |> File.read!()
    |> String.split(~r/\n/, trim: true)
  end

  @spec random_word(t) :: String.t
  def random_word(word_list) do
    word_list
    |> Enum.random()
  end
end
