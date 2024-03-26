class ListItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    puts @list.to_yaml
    @list_items = @list.list_items.create(list_item_params)
    redirect_to list_path(@list)
  end

  def destroy
    @list = List.find(params[:list_id])
    @list_item = @list.list_items.find(params[:id])
    @list_item.destroy
    redirect_to list_path(@list), status: :see_other
  end

  private
    def list_item_params
      params.require(:list_item).permit(:item, :status)
    end
end
