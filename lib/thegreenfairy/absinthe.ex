defmodule Absinthe do
    def fetch_absinthe do
        System.cmd("curl", ["-v -X GET \"https://api-extern.systembolaget.se/site/V2/Search/Site?absinthe\" -H \"Ocp-Apim-Subscription-Key: f27411a43a82457197118b03c357848f\""])
    end
end