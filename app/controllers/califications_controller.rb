class CalificationsController < InheritedResources::Base
  def new
    @calification = Calification.new
  end


  def show
    @calification = Calification.where(user_id: current_user.id).average("value")
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
  end

  private
  
      def calification_params
        params.require(:calification).permit(:value, :user_id)
      end


end

