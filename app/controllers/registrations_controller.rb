class RegistrationsController < ApplicationController

    def new
      @client = Client.new
    end
  
    def create
      @client = Client.new(client_params)
  
      if @client.save
        log_in @client
        redirect_to people_path, notice: "Client was successfully created."
      else
        Rails.logger.debug "Errors: #{@client.errors.full_messages}"
        render :new, status: :unprocessable_entity
      end
    end
  
    private
  
    def client_params
      params.require(:client).permit(:first_name, :last_name, :age, :email, :password, :password_confirmation)
    end
  end