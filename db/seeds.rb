require "pry"
require "open-uri"
require "nokogiri"

def populate_with_ingredient(name)
  base_url = "http://cooking.nytimes.com/search"
  base_page = Nokogiri::HTML(open(base_url))
  urls = base_page.css(".card-recipe-info .name a")
      .map{|x| "http://cooking.nytimes.com" +  x.attr('href') }
  
  urls.each do |url|
    #url = "http://cooking.nytimes.com/recipes/1016596-hamburgers-tavern-style"
    page = Nokogiri::HTML(open(url))
    
    
    name = page.css(".recipe-title").first.text.strip
    description = page.css(".topnote").first.text.strip
    steps = page.css(".recipe-steps li").map{|x| x.text}
    ingredients = page.css(".recipe-ingredients").first.css("li").map{|x| x.text.strip }
    
    r = Recipe.create!(name: page.css(".recipe-title").first.text.strip)
    
    steps.each do |step|
      Step.create!(
        recipe_id: r.id,
        content: steps
      )
      print "|"
    end
    
    ingredients.each do |ingredient|
       Ingredient.create!(
          recipe_id: r.id,
          name: ingredient
       )
      print "|"
    end
  end
end 

%w[pickles cheddar beef chicken].each do |item|
   populate_with_ingredient(item)
end

# binding.pry
# puts "yodo"
