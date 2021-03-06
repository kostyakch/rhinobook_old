require_dependency "rhinobook/application_controller"

module Rhinobook
	class TempContentsController < BaseController
		def index			
		end

		def create
			@content = TempContent.new
			@content.contentable_id = params[:contentable_id]
			@content.contentable_type = params[:contentable_type]
			@content.content = params[:content]
			@content.author = @content.contentable.book.author
			@content.save
		end


	end
end
