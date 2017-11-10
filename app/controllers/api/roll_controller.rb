module Api
    class RollController < ApplicationController
        def roll
            num = params[:die].to_i
            if num != 0
                render plain: rand(1 .. num).to_s
            else
                render plain: "invalid die", :status => 400
            end
        end
    end
end