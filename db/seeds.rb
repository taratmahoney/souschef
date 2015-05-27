recipe_titles = ["Summer Berry Pavlova", "Lavender and Orange Blossom Graybeh"]
ingredients = ["egg", "mango", "cherries", "whipped cream", "orange", "cheese", "flour", "pepper", "dates", "avocado", "durian", "hing", "curry"]
images = ["https://download.unsplash.com/reserve/oMRKkMc4RSq7N91OZl0O_IMG_8309.jpg", "https://download.unsplash.com/reserve/YFdIoUsRJCAehcoUnQaS_Straw.jpg", "https://download.unsplash.com/photo-1418479631014-8cbf89db3431", "https://download.unsplash.com/photo-1423483641154-5411ec9c0ddf"]
units = ['cup', 'tablespoon', 'teaspoon']
directions = ['Lightly grease two 8-inch round cake pans with coconut oil or palm shortening. Line the bottom with parchment paper and use a knife to cut out a circle to fit the bottom of the pan. Parchment paper helps the cake not to stick to the bottom of the pan. Grease top of parchment paper and then lightly dust the pan with flour. Set aside until needed.', ' In a small bowl, put in remaining peanut butter and coconut oil to make a peanut butter shell. Microwave for 30 seconds and mix with a spoon until smooth and thinned out.', 'Add all ingredients to a blender, blend until smooth. Pour into popsicle molds. Freeze until set, about 2 hours.', 'To make dough: Preheat oven to 200°F. In the bowl of a stand mixer fitted with the dough hook, combine water and yeast and let sit for 5 minutes until yeast has dissolved and mixture is frothy. Add in flour, sugar, salt, and olive oil; knead on a low speed for 5-10 minutes until dough has formed. It should be elastic and pull away from the sides of the bowl. Transfer dough to a lightly oiled bowl; cover with aluminum foil, and place bowl in the oven. TURN OVEN OFF. Let the dough rise in the warm oven for about 2 hours until it has doubled in size. Divide into two balls of dough, then use one for the remainder of this recipe. (Prepare another pizza with the second ball of dough, or store in the fridge for another night.)']
times = ['hours', 'minutes']

100.times do
  recipe = Recipe.create!(
    name: recipe_titles.sample,
    description: "These buttery, shortbread-like cookies have a particularly crunchy texture that comes from clarified butter. If you’ve never clarified butter, this recipe is a good place to start, and the process is extremely simple (though you do have to plan it several hours ahead). If you’re not a lavender fan, feel free to leave it out. And for a more familiar flavor, substitute vanilla extract for the orange blossom water. These cookies keep well, so you can make them up to a week in advance.",
    image: images.sample,
    time: rand(10),
    time_units: times.sample
  )

  7.times do
    recipe.ingredients.create(
      name: ingredients.sample,
      unit: units.sample,
      number: rand(10)
      )
 end

  (1..10).each do |num|
    recipe.steps.create(number: num, content: directions.sample)
  end
end
