defmodule Palindrome do
  def is_palindrome(number) when is_integer(number) do
    num_char_list =
      number
      |> to_charlist()

    num_char_list
    |> reverse
    |> is_palindrome(num_char_list)
  end

  defp reverse([head | tail]) do
    reversed_word = [head]
    reverse(reversed_word, tail)
  end

  defp reverse(reversed_word, [head | tail]) do
    reverse([head | reversed_word], tail)
  end

  defp reverse(reversed_word, []) do
    reversed_word
  end

  defp is_palindrome(reversed_word, word) when word == reversed_word do
    true
  end

  defp is_palindrome(reversed_word, word) when word != reversed_word do
    false
  end
end

12321
|> Palindrome.is_palindrome()
|> IO.inspect()
