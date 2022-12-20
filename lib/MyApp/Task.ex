defmodule MyApp.Task do
    use Ecto.Schema
  
    schema "tasks" do
      field :title, :string
      field :done, :boolean, default: false
      timestamps()
    end
  end