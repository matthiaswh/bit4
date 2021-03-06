defmodule HelloServer.Router do
  use Plug.Router

  plug(Plug.Logger)
  plug(:match)
  plug(:dispatch)

  get "/hello" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Poison.encode!(%{"message" => "Hello, world!"}))
  end

  match _ do
    send_resp(conn, 404, "")
  end
end
