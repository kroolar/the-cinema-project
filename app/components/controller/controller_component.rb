class Controller::ControllerComponent < ViewComponent::Base
  attr_reader :class_name, :name

  def initialize(name)
    @name = name
  end
end
