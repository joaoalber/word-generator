import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :word_generator, WordGeneratorWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "agvkJQJPlyG6WhiGPSkRYogAEgHtWxdEOOC7o4mOw9BYay5wn7FK6oYW9qCYg/8m",
  server: false

# In test we don't send emails.
config :word_generator, WordGenerator.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
