class LikesController < ApplicationController
before_action :authenticate_account!

  def save_like
    @like = Like.new(post_id: param[:post_id], account_id: current_account.id)

    respond_to do |format|
      format.json {
        if @like.save
          {success: true }
        else
          {sucess: false }
        end
        }
    end
  end
end
