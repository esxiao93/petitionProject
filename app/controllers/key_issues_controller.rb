class KeyIssuesController < ApplicationController

  def index 
    keyIssues = KeyIssue.all
    render json: keyIssues, status: :ok 
  end

  def show 
      keyIssue = KeyIssue.find(params[:id])
      render json: keyIssue, status: :ok
  end

end
