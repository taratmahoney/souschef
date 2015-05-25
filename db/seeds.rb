recipe_titles = ["Summer Berry Pavlova", "Lavender and Orange Blossom Graybeh"]
ingredients = ["Egg", "Mango", "Cherries", "Whipped Cream", "Orange", "Cheese", "Flour", "Pepper", "Dates", "Avocado", "Durian", "Hing", "Curry"]
images = ["https://download.unsplash.com/reserve/oMRKkMc4RSq7N91OZl0O_IMG_8309.jpg", "https://download.unsplash.com/reserve/YFdIoUsRJCAehcoUnQaS_Straw.jpg", "https://download.unsplash.com/photo-1418479631014-8cbf89db3431", "https://download.unsplash.com/photo-1423483641154-5411ec9c0ddf"]

100.times do
  recipe = Recipe.create!(
    name: recipe_titles.sample,
    description: "These buttery, shortbread-like cookies have a particularly crunchy texture that comes from clarified butter. If you’ve never clarified butter, this recipe is a good place to start, and the process is extremely simple (though you do have to plan it several hours ahead). If you’re not a lavender fan, feel free to leave it out. And for a more familiar flavor, substitute vanilla extract for the orange blossom water. These cookies keep well, so you can make them up to a week in advance.",
    image: images.sample,
    time: rand(10)
  )

  7.times do
    recipe.ingredients.create(name: ingredients.sample)
 end

  (1..10).each do |num|
    recipe.steps.create(content: "#{num}. Divide dough into quarters and press each into a long narrow log about 1 inch high and 1 inch wide. With a sharp knife, cut into log diagonally to make diamond-shaped cookies 1 to 2 inches long. Use a spatula to transfer cookies to sheet pans, spaced about 2 inches apart. Bake for 15 to 20 minutes, rotating pan halfway through. Cookies should be golden brown at the edges.")
  end
end
