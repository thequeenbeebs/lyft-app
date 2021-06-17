class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    def test
        string_array = params["string_to_cut"].chars
        return_string = ""
        while string_array.length > 2 do
            return_string += string_array[2]
            string_array = string_array.slice(3, string_array.length - 1)
        end
        render json: {"return_string": return_string}
    end
end
