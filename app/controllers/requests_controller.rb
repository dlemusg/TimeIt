class RequestsController < InheritedResources::Base

  private

    def request_params
      params.require(:request).permit(:user_id, :offer_id)
    end
end

