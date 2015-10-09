class RankingController < ApplicationController

 def want
  @item_id = Want.group(:item_id).order("count_item_id DESC").limit(10).count(:item_id).keys
  @items = Item.find(@ids).sort_by{|o| @ids.index(o.id)}
 end
 
 def have
  @item_id = Have.group(:item_id).order("count_item_id DESC").limit(10).count(:item_id).keys
  @items = Item.find(@ids).sort_by{|o| @ids.index(o.id)}
 end   
 
end
