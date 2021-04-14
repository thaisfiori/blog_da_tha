defmodule BlogDaTha.Repo do
  use Ecto.Repo,
    otp_app: :blog_da_tha,
    adapter: Ecto.Adapters.Postgres
end
