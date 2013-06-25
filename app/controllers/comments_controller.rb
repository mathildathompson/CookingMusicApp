class CommentsController < ApplicationController
def index 
        @comments = Comment.all
    end

    # def new
    #      @comment= Comment.new  
    # end

    def create
        # binding.pry
        @comment = Comment.new(params[:comment])
        # binding.pry
        @comment.save!
        render @comment
    end
end
