class KonoMailup::ApplicationController < KonoMailup.base_controller.call
  protect_from_forgery with: :exception
end
