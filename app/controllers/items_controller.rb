# frozen_string_literal: true

class ItemsController < ApplicationController

  before_action :set_employee_configs, only: [:new, :create, :edit, :update]

  def index
    @items = Item.all
    @total_stock_value = Item.formatted_total_stock_value
  end

  def show
    @items = Item.find(params[:id])
    @product_totals = Item.total_quantity_and_value_for_product(@items.name)
    @quantity_minimal = Item.quantity_minimal(@items.id)
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(item_params)
    # Rails.logger.debug "Item params: #{item_params.inspect}"

    if @item.save
      redirect_to items_path(@item), notice: 'Item was successfully created.'
    else
      # Rails.logger.debug "Errors: #{@item.errors.full_messages}"
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @item = Item.find(params[:id])
    # Rails.logger.debug "Item params: #{item_params.inspect}"

    if @item.update(item_params)
      redirect_to @item, notice: 'Item was successfully updated.'
    else
      # Rails.logger.debug "Errors: #{@item.errors.full_messages}"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to items_path, status: :see_other
  end

  def home
    @items = if params[:name].present?
               Item.where('name LIKE ?', "%#{params[:name]}%")
             else
               Item.none
             end
  end

  private

  def set_employee_configs
    @employee_configs = Employee.pluck(:first_name, :id)
  end

  def item_params
    params.require(:item).permit(:name, :quantity, :price, :employee_id)
  end
end
