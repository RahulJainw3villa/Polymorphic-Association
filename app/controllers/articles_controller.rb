class ArticlesController < ApplicationController
    before_action :set_article, only: [ :update, :destroy, :show, :edit]
    
    def index
    @articles = Article.all
    end

    def new
        @article  = Article.new
    end

    def show
    end

    def edit
    end

    def create
        @article = Article.new(article_params)
            if @article.save
                redirect_to root_path
            else
                render  :new, :status, :unprocessable_entity  
            end    
    end 

    def update
            if @article.update(article_params)
                redirect_to root_path, notice: 'Article was successfully updated'
            else
                render :edit, status: :unprocessable_entity
            end
    end

    def destroy
       
            if @article.destroy
                redirect_to root_path
            else
                redirect_to root_path, status: :see_other
            end
    end

    private
        def article_params
            params.require(:article).permit(:title,:description)
        end

        def set_article
            @article = Article.find(params[:id])       
        end
end