module TasksHelper
  def date_today(latter)
  require 'date'

  a = Date.today
  b = Date.parse(latter.to_s)

  a_new = Date.new(a.year, a.month, 1)
  b_new = a_new + (b - a - 1).to_i

if b_new.year > a_new.year
  y = b_new.year - a_new.year
  month = 12 * y -(a_new.month - b_new.month)
else
  month = b_new.month - a_new.month
end
  day = b_new.day

  %(#{month}ヶ月#{day}日)
end

def date_delay(latter)
require 'date'

  a = Date.today
  b = Date.parse(latter.to_s)

  day= (a - b).to_i


  %(#{day}日)
end
end
