import Config

config :blog_da_tha_web, BlogDaThaWeb.Endpoint,
  url: [host: "example.com", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json"


config :logger, level: :info
