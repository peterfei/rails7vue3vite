module Api
  class V1::BlogsController < ApplicationController
    def blogs_json
      blogs = Blog.select(:id, :title, :desc )

        render json: blogs
    end

    def single_post_json
      begin
        single_post = Blog.find(params[:id])
        render json: single_post
      rescue StandardError
        render json: { error: "error", post: "Not found :'(" }
      end
    end
  end
end
