module ApplicationHelper
  def date_string_for(datetime)
    datetime.strftime("%A, %d %b %Y %l:%M %p")
 end
end
