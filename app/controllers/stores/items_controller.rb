class Stores::ItemsController < Stores::StoresController
  before_action :set_current_store, only: [:index, :show]

  def index
    @items = @store.items
  end

  def show
    @item = @store.items.find_by(id: params[:id])
    redirect_to store_items_path(store: @store.url) if @item.nil?
  end

  private

  def set_current_store
    @store = current_store
  end
end
