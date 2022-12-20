defmodule MyApp.TaskControllerTest do
  use MyApp.Web, :controller_test
  use ExUnit.Case

  alias MyApp.Task
  alias MyApp.TaskController

  test "creates a task", %{conn: conn} do
    conn = post conn, task_path(conn, :create), task: %{title: "Test task"}
    assert json_response(conn, 201)["title"] == "Test task"
  end
end