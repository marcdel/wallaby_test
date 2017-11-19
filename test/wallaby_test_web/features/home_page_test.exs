defmodule WallabyTestWeb.HomePageTest do
  use WallabyTestWeb.FeatureCase, async: true

  import Wallaby.Query

  test "home page has welcome message", %{session: session} do
    require IEx
    IEx.pry()

    session
    |> visit("/")
    |> assert_has(css("h2", text: "Welcome to Phoenix!"))
  end
end