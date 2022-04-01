class LawyersController < ApplicationController
    def create
        @lawyer = User.new(post_params)
        if @lawyer.save
            respond_to do |format|
                format.js { }
                format.html { redirect_to "/firms/#{params[:firm_id]}"}
            end
        else
            puts "="*70
            @lawyer.errors.messages
            puts "="*70
        end
    end

    private

    def post_params
        params[:is_lawyer] = true
        params[:firm_id] = params[:firm_id].to_i
        params.permit(:password, :email, :firm_id, :is_lawyer, :first_name, :last_name, :phone_number)
    end
end
