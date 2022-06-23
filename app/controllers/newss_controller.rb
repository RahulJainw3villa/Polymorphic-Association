class NewssController < ApplicationController
    def index
        @newss = News.all
    end

    def new
        @news  = News.new
    end

    def show
        @news = News.find(params[:id])       
    end

    def edit
        @news = News.find(params[:id])   
    end

    def create
        @news = News.new(news_params)
            if @news.save
                redirect_to newss_index_path
            else
                render  :new, :status, :unprocessable_entity  
            end    
    end 

    def update
        @news = News.find(params[:id])   
            if @news.update(news_params)
                redirect_to newss_path(@news)
            else
                render :edit, status: :unprocessable_entity
            end
    end

    def destroy
        @news = News.find(params[:id])   
            if @news.destroy
                redirect_to newss_index_path
            else
                redirect_to root_path, status: :see_other
            end
    end

    private
        def news_params
            params.require(:news).permit(:title,:description)
        end

end