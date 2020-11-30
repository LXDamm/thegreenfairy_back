defmodule TheGreenFairy.Endpoint do
    use Plug.Router

    plug(Plug.Logger)
    plug(:match)
    plug(Plug.Parsers, parsers: [:multipart, :json], pass: ["*/*"], json_decoder: Jason)
    plug(CORSPlug)
    plug(:dispatch)

    get "/api/ping" do
        send_resp(conn, 200, "Pong!")
    end

    match _ do
        send_resp(conn, 404, "Nope")
    end
end