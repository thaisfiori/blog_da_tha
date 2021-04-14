import Config


config :blog_da_tha, BlogDaTha.Repo,
  username: "postgres",
  password: "postgres",
  database: "blog_da_tha_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox


config :blog_da_tha_web, BlogDaThaWeb.Endpoint,
  http: [port: 4002],
  server: false


config :logger, level: :warn
