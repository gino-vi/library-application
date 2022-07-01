class RegistrationsController < Devise::RegistrationsController
    protected
  
    def after_sign_up_path_for(resource)
      'pages#home' # Or :prefix_to_your_route
    end

    def cities
      render json: CS.cities(params[:state], :US).to_json
    end
  
    def index
      @states = State.all
      @cities = City.where("state_id = ?", State.first.id)
    end
  
    def show
      @city = City.where("id = ?", params[:trip][:city_id]).first
    end
  
    def update_cities
      @cities = City.where("state_id = ?", params[:state_id])
      respond_to do |format|
        format.json
      end
    end
    
  end