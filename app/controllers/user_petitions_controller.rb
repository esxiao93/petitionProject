class UserPetitionsController < ApplicationController

    def index
        user_petitions = UserPetition.all
        render json: user_petitions, status: 200
    end

    def show 
      user_petition = UserPetition.find(params[:id])
      if user_petition
          render json: userPetition, status: 200
      else 
          render json: {error: "User Petition not found"}, status: 404
      end
    end

    def create
        new_user_petition = UserPetition.create!(user_petition_params)
        render json: new_user_petition, status: :created
    end

    private

    # def userPetition
    #     user_id =ul_params[:user_id]
    #     petition_id = ul_params[:lodging_id]
    #     ul_w_all = UserLodging.find_by user_id: user_id, lodging_id: lodging_id
    #     return ul_w_all
    # end

    def user_petition_params
        params.permit(:user_id, :petition_id)
    end

end






# def upvote
#     if ul_w_all
#         if ul_w_all.upvote? === true
#             # if it had been upvoted before, we are now saying you haven't
#             new_upvote_boolean = false
#             ul_w_all.update(:upvote? => new_upvote_boolean)
#             #find the Lodging instance
#             lodging = Lodging.find_by id: ul_params[:lodging_id]
#             new_upvote = lodging["upvote"] - 1
#             lodging.update(:upvote => new_upvote)
#             return render json: lodging, status: :created
#         else ul_w_all.upvote? === false
#             new_upvote_boolean = true
#             ul_w_all.update(:upvote? => new_upvote_boolean)
#             lodging = Lodging.find_by id: ul_params[:lodging_id]
#             new_upvote = lodging["upvote"] + 1
#             lodging.update(:upvote => new_upvote)
#             return render json: lodging, status: :created
#         end
#     else
#         new_params = ul_params.merge(:upvote? => true)
#         ul_instance = UserLodging.create(new_params)

#         lodging = Lodging.find_by id: ul_params[:lodging_id]
#         new_upvote = lodging["upvote"] + 1
#         lodging.update(:upvote => new_upvote)
#         return render json: lodging, status: :created
#     end
# end