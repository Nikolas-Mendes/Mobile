class Recipe {
  final String name;
  final String photo;
  final int preparationTime;
  final int yield;
  final int numberOfFavorites;
  final int numberOfComments;
  final List<String> ingredientsPaste;
  final List<String> ingredientsTopping;
  final List<String> preparationModePaste;
  final List<String> preparionModeTopping;
  
  Recipe({
    required this.name,
    required this.photo,
    required this.preparationTime,
    required this.yield,
    required this.numberOfFavorites,
    required this.numberOfComments,
    required this.ingredientsPaste,
    required this.ingredientsTopping,
    required this.preparationModePaste,
    required this.preparionModeTopping,
  });


}
