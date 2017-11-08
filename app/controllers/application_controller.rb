class ApplicationController < ActionController::Base
   # include Devise::Controllers::ScopedViews
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    
    #protect_from_forgery with: :exception


    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :parametros_permitidos_modifica, if: :devise_controller?
    #before_action :authenticate_user!
    
 
    protected

        def parametros_permitidos_modifica
            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(
                :tel,
                :cel, 
                :location, 
                :direccion, 
                :email, 
                :password, 
                :password_confirmation, 
                :current_password,
                :description,
                :photo) }
         end 

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(
                :firstName, 
                :secondName, 
                :firstLastName, 
                :secondLastName, 
                :idd, 
                :typeId, 
                :birthDate, 
                :tel, 
                :cel, 
                :location, 
                :direccion, 
                :email, 
                :password, 
                :password_confirmation, 
                :description,
                :tiempo,
                :photo,
                :photoId1,
                :photoId2) }
            end           
     end