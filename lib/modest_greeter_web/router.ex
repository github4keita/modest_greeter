defmodule ModestGreeterWeb.Router do
  use ModestGreeterWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  # pipeline :api do
  #   plug :accepts, ["json"]
  # end

  scope "/", ModestGreeterWeb do
    pipe_through :browser # Use the default browser stack

    get "/hello", HelloController, :show
    get "/hello/:name", HelloController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", ModestGreeterWeb do
  #   pipe_through :api
  # end
end
