class PostsController < ApplicationController
  include PostsHelper
  
  def near
    @posts = Post.near(params[:lat].to_f, params[:lon].to_f, params[:radius].to_f)

    layar_response = {
      :layer =>         'hyparlocal',
      :hotspots =>      @posts.collect { |p| post_to_poi(p) },
      :errorCode =>     0, # OK
      :errorString =>   "OK",
      :radius =>        params[:radius].to_f
    }

    respond_to do |format|
      format.html # near.html.erb
      format.json { render json: @posts }
      format.layar { render json: layar_response }
    end
  end
end