require_dependency "rhinobook/application_controller"

module Rhinobook
	class BaseController < Rhinoart::BaseController
		before_action :set_locale
		before_action { authorize! :manage, :books }

		def default_url_options(options={})
			if I18n.locale != I18n.default_locale
				{ locale: I18n.locale }
			else
				{ locale: nil }
			end
		end		
	end
end