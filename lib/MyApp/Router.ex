defmodule MyApp.Router do
    use MyApp.Web, :router
  
    pipeline :browser do
      plug :accepts, ["html"]
      plug :fetch_session
      plug :fetch_flash
      plug :protect_from_forgery
      plug :put_secure_browser_headers
    end
  
    scope "/tasks", MyApp do
      pipe_through :browser
  
      get "/", TaskController, :index
      get "/new", TaskController, :new
      post "/", TaskController, :create
      get "/:id", TaskController, :show
      get "/:id/edit", TaskController, :edit
      put "/:id", TaskController, :update
      patch "/:id", TaskController, :update
      delete "/:id", TaskController, :delete
    end
  end