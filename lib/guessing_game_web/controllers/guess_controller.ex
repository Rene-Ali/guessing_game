defmodule GuessingGameWeb.GuessController do
  use GuessingGameWeb, :controller

  def guess(conn, %{"guess" => guess}) do
    # Das ist dein geheime Zahl
    secret_number = 42
    guess = String.to_integer(guess)
    result = GuessingGameLogic.compare(secret_number, guess)
    json(conn, %{result: result})
  end
end
