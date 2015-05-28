recipe_titles = ["Summer Berry Pavlova", "Lavender and Orange Blossom Graybeh"]
ingredients = ["egg", "mango", "cherries", "whipped cream", "orange", "cheese", "flour", "pepper", "dates", "avocado", "durian", "hing", "curry"]
images = ["https://download.unsplash.com/reserve/oMRKkMc4RSq7N91OZl0O_IMG_8309.jpg", "https://download.unsplash.com/reserve/YFdIoUsRJCAehcoUnQaS_Straw.jpg", "https://download.unsplash.com/photo-1418479631014-8cbf89db3431", "https://download.unsplash.com/photo-1423483641154-5411ec9c0ddf"]
units = ['cup', 'tablespoon', 'teaspoon']
directions = ['Lightly grease two 8-inch round cake pans with coconut oil or palm shortening. Line the bottom with parchment paper and use a knife to cut out a circle to fit the bottom of the pan. Parchment paper helps the cake not to stick to the bottom of the pan. Grease top of parchment paper and then lightly dust the pan with flour. Set aside until needed.', ' In a small bowl, put in remaining peanut butter and coconut oil to make a peanut butter shell. Microwave for 30 seconds and mix with a spoon until smooth and thinned out.', 'Add all ingredients to a blender, blend until smooth. Pour into popsicle molds. Freeze until set, about 2 hours.', 'To make dough: Preheat oven to 200°F. In the bowl of a stand mixer fitted with the dough hook, combine water and yeast and let sit for 5 minutes until yeast has dissolved and mixture is frothy. Add in flour, sugar, salt, and olive oil; knead on a low speed for 5-10 minutes until dough has formed. It should be elastic and pull away from the sides of the bowl. Transfer dough to a lightly oiled bowl; cover with aluminum foil, and place bowl in the oven. TURN OVEN OFF. Let the dough rise in the warm oven for about 2 hours until it has doubled in size. Divide into two balls of dough, then use one for the remainder of this recipe. (Prepare another pizza with the second ball of dough, or store in the fridge for another night.)']
times = ['hours', 'minutes']
descriptions = ['The sweet-tart mango is enhanced by the pinch of salt, while the mezcal offers depth, complexity, and the notes of agave you’d get in a classic margarita. I like to serve this with fresh raspberries for color and textural contrast, and a little sprinkle of pink or red salt. This dessert is also vegan and gluten-free. No guilt, just pure, unadulterated summer flavor.', 'These cucumber hummus bites with chia sprouts are a super light and fresh appetizer. And they are extremely quick and easy to make.', 'These sweet fragrant gluten free fritters are perfect for breakfast, lunch or dinner. Top with a generous dollop of dairy free lime cashew cream and a side salad, and dinner is sorted!']

100.times do
  recipe = Recipe.create!(
    name: recipe_titles.sample,
    description: descriptions.sample,
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
