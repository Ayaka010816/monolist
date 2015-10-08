class RankingController < ApplicationController

 def want
  @item_id = Want.group(:item_id).order("count_item_id DESC").limit(10).count(:item_id).keys
  @items = Item.find(@item_id)
 end
 
 def have
  @item_id = Have.group(:item_id).order("count_item_id DESC").limit(10).count(:item_id).keys
  @items = Item.find(@item_id)
 end   
 
end
