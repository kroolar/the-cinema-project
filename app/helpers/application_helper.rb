module ApplicationHelper
  COMPONENTS = [
    :Box,
    :Button,
    :Controller,
    :Form,
    :Input,
    :Row,
    :Text,
    :Link
  ].freeze

  def ui(name, **args)
    component_name = name.to_s.camelize
    component = "#{component_name}::#{component_name}Component".constantize.new(**args)

    render(component) { yield }
  end

  def Icon(**args)
    render Icon::IconComponent.new(**args)
  end

  def IconButton(**args)
    render IconButton::IconButtonComponent.new(**args)
  end

  def method_missing(component, **args)
    super unless component.in?(COMPONENTS)

    component_class = "#{component}::#{component}Component".constantize.new(**args)

    render(component_class) { yield if block_given? }
  end

  # def respond_to_missing?(component)
  #   # component.in?([]) || super
  #   false
  # end
end
