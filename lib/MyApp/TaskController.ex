defmodule MyApp.TaskController do
  use MyApp.Web, :controller

  alias MyApp.Task

  def create(conn, %{"task" => task_params}) do
    changeset = Task.changeset(%Task{}, task_params)

    if changeset.valid? do
      Repo.insert(changeset)
      conn
      |> put_flash(:info, "Task created successfully.")
      |> redirect(to: task_path(conn, :index))
    else
      render(conn, "new.html", changeset: changeset)
    end
  end
end