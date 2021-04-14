defmodule BlogDaTha.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      BlogDaTha.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: BlogDaTha.PubSub}
      # Start a worker by calling: BlogDaTha.Worker.start_link(arg)
      # {BlogDaTha.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: BlogDaTha.Supervisor)
  end
end
