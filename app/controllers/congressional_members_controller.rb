class CongressionalMembersController < ApplicationController
    # skip_before_action :authorize, only: [ :index, :show]
    
  def index
      congressional_members = CongressionalMember.all
      render json: congressional_members, status: 200
  end

  def show
      congressional_member = CongressionalMember.find(params[:id])
          render json: congressional_member, status: :ok
  end

end