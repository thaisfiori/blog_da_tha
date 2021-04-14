import Config


config :blog_da_tha, BlogDaTha.Repo,
  username: "postgres",
  password: "postgres",
  database: "blog_da_tha_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10


config :blog_da_tha_web, BlogDaThaWeb.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []


config :logger, :console, format: "[$level] $message\n"


config :phoenix, :plug_init_mode, :runtime


config :phoenix, :stacktrace_depth, 20
