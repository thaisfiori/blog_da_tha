defmodule BlogDaThaWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :blog_da_tha_web

  @session_options [
    store: :cookie,
    key: "_blog_da_tha_web_key",
    signing_salt: "V3Z7IVDD"
  ]

  if code_reloading? do
    plug Phoenix.CodeReloader
    plug Phoenix.Ecto.CheckRepoStatus, otp_app: :blog_da_tha_web
  end

  plug Plug.RequestId
  plug Plug.Telemetry, event_prefix: [:phoenix, :endpoint]

  plug Plug.Parsers,
    parsers: [:json],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()

  plug Plug.MethodOverride
  plug Plug.Head
  plug Plug.Session, @session_options
  plug BlogDaThaWeb.Router
end
