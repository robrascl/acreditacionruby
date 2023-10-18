class ApplicationController < ActionController::Base
    
    
    Pagy::DEFAULT[:items] = 10
    include Pagy::Backend
    require 'pagy/extras/bootstrap'
end


def authorize_request(kind = nil)
    unless kind.include?(current_user.role)
         redirect_to home_index_path, notice: "Usted no esta autorizado para ejecutar esta acción"         
    end
end