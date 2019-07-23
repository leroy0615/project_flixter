class LessonsController < ApplicationController
	 before_action :authenticate_user!
  	
	def show
		
	end

	
	private
	 def require_authorized_for_current_lesson
   		 if current_user.enrolled_in? != current_user
     		 redirect_to root_url, alert: 'Error Message Here'
   		end
  end

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end
