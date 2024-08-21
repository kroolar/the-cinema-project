class Link::LinkComponent < ViewComponent::Base
  attr_reader :class_name, :text, :href

  def initialize(class_name: nil, text: nil, href: nil)
    @class_name = class_name
    @text = text
    @href = href
  end
end
