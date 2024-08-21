class Alert::AlertComponent < ViewComponent::Base
  def initialize(type: :info, text: nil)
    @text = text
    @type = type
  end

  def render?
    @text.present?
  end
end
