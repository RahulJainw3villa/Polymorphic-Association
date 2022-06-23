class CommentsController < ApplicationController
   
    def create
    @comment = @commentable.comments.new(comment_params)
    @comment.save
    redirect_to @commentable, notice:"comment succesfully created"

    end

    def edit
        @comment = Comment.find(params[:id])     
    end


    def update
        @comment = Comment.find(params[:id]) 
            if @comment.update(comment_params)
                redirect_to @comment.commentable
            else
                render :edit, status: :unprocessable_entity
            end
    end



    def destroy
        @comment = @commentable.comments.find(params[:id])   
        @comment.destroy
        redirect_to @commentable
    end


    private
    def comment_params
        params.require(:comment).permit(:title)
    end
end