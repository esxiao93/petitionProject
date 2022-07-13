class PetitionsController < ApplicationController

    # before_action :authorize

    def index 
        petitions = Petition.all
        render json: petitions, status: 200 
    end


    def show 
        petition = Petition.find(params[:id])
        render json: petition, status: 200
    end

    def update
        petition = Petition.find(params[:id])
        petition.update!(petition_params)
        render json: petition, status: :ok
    end

    def create
        petition = Petition.create!(petition_params)
        render json: petition, status: :created
    end

    def destroy
        petition = Petition.find(params[:id])
        petition.destroy
        head :no_content
    end

    def congressional_member_petitions
        render json: Petition.where(congressional_member_id: params[:id]), status: :ok
    end

    private

    def petition_params
        params.permit(:title, :description, :signature, :congressional_member_id)
    end

    def invalid_record(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end

end