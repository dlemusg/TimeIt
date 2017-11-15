class CalificationsController < InheritedResources::Base
  def new
    @calification = Calification.new

    @cate1 = params[:cate]
  end


  def show
    @calification = Calification.new(calification_params)
    @calification.save
    redirect_to frame_inicio_path
  end

  def uno
    @calification = Calification.new

    
  end


  def create
    
    @calification = Calification.new(calification_params)

    respond_to do |format|
      if @calification.save
        format.html { redirect_to @contract}
        format.json { render :show, status: :created, location: @calification}
        format.js

      else
        format.html { render :new }
        format.json { render json: @calification.errors, status: :unprocessable_entity }
        format.js
      end
    end

    @cate1 = params[:cate]
  end

  private
  
      def calification_params
        params.permit(:value,:user_id)
      end


end

