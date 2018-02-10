class UserDecorator < Draper::Decorator
  delegate_all
  decorates_association :decks

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
  def greeting
    "Hi! My name is #{user.name}. My age is #{user.age}. Thank you."
  end

  def emphatic_name
    h.content_tag(:strong, user.name)
  end
end