class BrodcastsController < ApplicationController
    def index
        @brodcasts = Brodcast.all
    end

    def new
        @brodcast  = Brodcast.new
    end

    def show
        @brodcast = Brodcast.find(params[:id])       
    end

    def edit
        @brodcast = Brodcast.find(params[:id])   
    end

    def create
        @brodcast = Brodcast.new(brodcast_params)
            if @brodcast.save
                redirect_to brodcasts_path(@brodcast)
            else
                render  :new, :status, :unprocessable_entity  
            end    
    end 

    def update
        @brodcast = Brodcast.find(params[:id])   
            if @brodcast.update(brodcast_params)
                redirect_to brodcasts_path(@brodcast)
            else
                render :edit, status: :unprocessable_entity
            end
    end

    def destroy
        @brodcast = Brodcast.find(params[:id])   
        @brodcast.destroy
        redirect_to brodcasts_path
        
    end

    private
        def brodcast_params
            params.require(:brodcast).permit(:title,:description)
        end

end