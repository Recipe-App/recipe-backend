json.recipes @recipes do |recipe|
  json.label recipe.label
  json.ingredients recipe.ingredients
  json.url recipe.url
  json.image recipe.image
end
