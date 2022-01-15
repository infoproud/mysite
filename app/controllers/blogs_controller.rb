class BlogsController < ApplicationController
    def index
       @blogs = Blog.all
    end

    def show
        @blog = Blog.find(params[:id])
    end

    def destroy
        @blog = Blog.find(params[:id])
        @blog.destroy
        redirect_to '/'
    end
end 