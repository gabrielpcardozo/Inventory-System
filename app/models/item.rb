# frozen_string_literal: true

# app/models/item.rb
class Item < ApplicationRecord
  include FormatValue

  belongs_to :client, class_name: 'Client'
  belongs_to :employee, class_name: 'Employee'

  validates :name, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }

  def self.total_stock_value
    sum('price * quantity')
  end

  def self.total_quantity_and_value_for_product(product_name)
    total_value = where(name: product_name).sum('price * quantity')
    number_to_currency(total_value, unit: 'R$', separator: ',', delimiter: '.', format: '%u %n')
  end

  def self.quantity_minimal(item_id, threshold = 3)
    item = find(item_id)
    item.quantity <= threshold
  end
end
