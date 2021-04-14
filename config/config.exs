import Config

config :blog_da_tha,
  ecto_repos: [BlogDaTha.Repo]

config :blog_da_tha_web,
  ecto_repos: [BlogDaTha.Repo],
  generators: [context_app: :blog_da_tha, binary_id: true]


config :blog_da_tha_web, BlogDaThaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5kvRDoWr9xSP6eKTB9wYr6nlYRcfw0+HxRAth13MLHW5ayIi+UNAxxZWiZwsWA+S",
  render_errors: [view: BlogDaThaWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BlogDaTha.PubSub,
  live_view: [signing_salt: "Y43hUYwb"]


config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


config :phoenix, :json_library, Jason


import_config "#{Mix.env()}.exs"
