module ApplicationHelper
  def get_integer_part(decimal)
    decimal.to_s.split('.').first
  end
end
