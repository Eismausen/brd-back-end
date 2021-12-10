require "pry"
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  post "/users" do
    if (User.find_by(name: params[:name], email: params[:email]) == nil)
      temp_user = User.create(
        name: params[:name],
        email: params[:email]
      )
      puts "Returning #{temp_user}: id#: #{temp_user.id}"
      temp_user.to_json
    end
  end

  get "/inventory/:id" do
    inventory_records = InventoryRecord.where({user_id: params[:id]})
    boardgames = inventory_records.map {|record| record.boardgame}
    boardgames.to_json
  end

  post "/inventory" do
    if (InventoryRecord.find_by(user_id: params[:user_id], boardgame_id: params[:boardgame_id]) != nil)
      puts "That record already exists!"
    else
      temp_record = InventoryRecord.create(user_id: params[:user_id], boardgame_id: params[:boardgame_id])
      temp_record.boardgame.to_json
    end
  end

  delete "/inventory/:u_id/:b_id" do
    temp_record = InventoryRecord.find_by(user_id: params[:u_id], boardgame_id: params[:b_id])
    temp_record.destroy
    {message: "That inventory record was just OBLITERATED, yo!"}.to_json
  end

  get "/wishlist/:id" do
    wish_records = WishlistRecord.where({user_id: params[:id]})
    boardgames = wish_records.map{|record| record.boardgame}
    boardgames.to_json
  end

  post "/wishlist" do
    if (WishlistRecord.find_by(user_id: params[:user_id], boardgame_id: params[:boardgame_id]) != nil)
      puts "That record already exists!"
    else
      temp_record = WishlistRecord.create(user_id: params[:user_id], boardgame_id: params[:boardgame_id])
      temp_record.boardgame.to_json
    end
  end

  delete "/wishlist/:u_id/:b_id" do
    temp_record = WishlistRecord.find_by(user_id: params[:u_id], boardgame_id: params[:b_id])
    temp_record.destroy
    {message: "That wishlist record was just OBLITERATED, yo!"}.to_json
  end

  get "/boardgames" do
    boardgames = Boardgame.all
    boardgames.to_json
  end

  post "/boardgames" do
    if (Boardgame.find_by(name: params[:name]) == nil)
      temp_boardgame = Boardgame.create(
        name: params[:name],
        url: params[:url],
        price_usd: params[:price_usd],
        msrp:  params[:msrp],
        year_published:  params[:year_published],
        min_players:  params[:min_players],
        max_players:  params[:max_players],
        min_playtime:  params[:min_playtime],
        max_playtime:  params[:max_playtime],
        min_age:  params[:min_age],
        description_preview:  params[:description_preview],
        description:  params[:description],
        commentary:  params[:commentary],
        faq:  params[:faq],
        thumb_url:  params[:thumb_url],
        image_url:  params[:image_url],
        publisher:  params[:publisher],
        designer:  params[:designer],
        artist:  params[:artist],
        learning_complexity:  params[:learning_complexity],
        strategy_complexity:  params[:strategy_complexity],
        bga_rating:  params[:bga_rating]
      )
      puts "I just posted to boardgames - check it out!"
      ##This portion seemed to *greatly* slow down record creation
      ## to the point where it started to throw errors
      #if (params[:mechanics].length > 0)
      #  params[:mechanics].each do |mechanic|          
      #    mech_record_to_link = Mechanic.find_by(old_mech_ref: mechanic[:id])
      #    MechanicRecord.create(mechanic_id: mech_record_to_link.id, boardgame_id: temp_boardgame.id)
      #    puts "Created a linked MechanicRecord - check it out!"
      #  end
      #end
      #if (params[:categories].length > 0)
      #  params[:categories].each do |category|
      #    cat_record_to_link = Category.find_by(old_cat_ref: category[:id])
      #    CategoryRecord.create(category_id: cat_record_to_link.id, boardgame_id: temp_boardgame.id)
      #    puts "Created a linked CategoryRecord - check it out!"
      #  end
      #end
    else
      puts "That record already exists, sorry!"
    end
  end

  post "/categories" do
    Category.create(
      category_name: params[:category_name],
      old_cat_ref: params[:old_cat_ref]
    )
    puts "I just posted to categories - check it out!"
  end

  post "/mechanics" do
    Mechanic.create(
      mechanic_name: params[:mechanic_name],
      old_mech_ref: params[:old_mech_ref]
    )
    puts "I just posted to mechanics - check it out!"
  end
end
