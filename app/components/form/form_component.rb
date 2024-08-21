class Form::FormComponent < ViewComponent::Base
  attr_reader :class_name, :method, :action

  def initialize(class_name: '', method: :post, action: '/')
    @class_name = class_name
    @method = method.to_s.upcase
    @action = action
  end
end