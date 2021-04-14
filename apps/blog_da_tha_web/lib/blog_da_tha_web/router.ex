defmodule BlogDaThaWeb.Router do
  use BlogDaThaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BlogDaThaWeb do
    pipe_through :api
  end
end
