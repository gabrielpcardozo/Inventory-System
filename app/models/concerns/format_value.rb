# app/models/concerns/format_value.rb
module FormatValue
    extend ActiveSupport::Concern
  
    included do
      def formatted_price
        self.class.number_to_currency(price)
      end
    end
  
    class_methods do
      def formatted_total_stock_value
        number_to_currency(all.sum('price * quantity'))
      end
  
      def formatted_total_value_for_product(product_name)
        total_value = where(name: product_name).sum('price * quantity')
        number_to_currency(total_value)
      end
  
      def number_to_currency(number, options = {})
        options[:unit] ||= "R$"
        options[:separator] ||= ","
        options[:delimiter] ||= "."
        options[:format] ||= "%u %n"
        ActiveSupport::NumberHelper.number_to_currency(number, options)
      end
    end
  end  