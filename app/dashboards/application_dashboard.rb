require "administrate/base_dashboard"

class ApplicationDashboard < Administrate::BaseDashboard
  def display_resource(resource)
    return resource.name if resource.respond_to?(:name)

    super
  end
end
