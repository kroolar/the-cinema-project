module ApplicationHelper
  def ui(name, **args)
    component_name = name.to_s.camelize
    component = "#{component_name}::#{component_name}Component".constantize.new(**args)

    render(component) { yield }
  end
end
