defmodule BlogDaThaWeb.Application do

  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      BlogDaThaWeb.Telemetry,
      BlogDaThaWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: BlogDaThaWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    BlogDaThaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
