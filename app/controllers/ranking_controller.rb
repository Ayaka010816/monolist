class RankingController < ApplicationController

 def want
  @item_id = Want.group('items.id').order("count_item_id DESC").limit(10).count('items.id').keys
  @items = Item.find(@item_id)
 end
 
 def have
  @item_id = Have.group('items.id').order("count_item_id DESC").limit(10).count('items.id').keys
  @items = Item.find(@item_id)
 end   
 
end
