class Brodcasts::CommentsController < CommentsController
    before_action :set_commentable

    def set_commentable
        @commentable = Brodcast.find(params[:brodcast_id])
    end
end