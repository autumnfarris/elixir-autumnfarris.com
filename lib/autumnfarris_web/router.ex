defmodule AutumnfarrisWeb.Router do
  use AutumnfarrisWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AutumnfarrisWeb do
    # Use the default browser stack
    pipe_through :browser

    get "/resume", PageController, :resume
    get "/", PageController, :about
    resources "/entries", EntryController, only: [:index, :show, :new, :create, :delete]
  end

  # Other scopes may use custom stacks.
  # scope "/api", AutumnfarrisWeb do
  #   pipe_through :api
  # end
end
