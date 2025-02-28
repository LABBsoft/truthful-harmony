module StocksHelper
  def premium_discount_class(value)
    return 'premium-neutral' if value.nil?
    
    # Clamp the value between -20 and 20 for the color scale
    normalized_value = [[value, -20].max, 20].min
    # Convert to a 0-100 scale
    percentage = ((normalized_value + 20) / 40.0 * 100).round(2)
    
    "premium-badge" + " style='background-color: hsl(#{percentage}, 75%, 50%)'"
  end
end
