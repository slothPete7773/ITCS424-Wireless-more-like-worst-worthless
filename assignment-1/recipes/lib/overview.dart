class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(
      this.label,
      this.imageUrl,
      this.servings,
      this.ingredients,
      );
static List<Recipe> samples = [
  Recipe('Cat Tshirt 7', 'assets/event1.jpg', 1, [Ingredient(599, 'Total Baht', 'Per Ticket',)]),
  Recipe('Mahorasop Music Festical', 'assets/event2.jpg', 1, [Ingredient(1999, 'box', 'Spaghetti',)]),
  Recipe('Fungjai Crossplay 3', 'assets/event3.png', 1, [Ingredient(499, 'box', 'Spaghetti',)]),
  Recipe('Cat EXPO 6', 'assets/event4.jpg', 1, [Ingredient(699, 'box', 'Spaghetti',)]),
  Recipe('Thailand Cultural Music Festival 2019', 'assets/event5.jpg', 1, [Ingredient(899, 'box', 'Spaghetti',))

];

}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
      this.quantity,
      this.measure,
      this.name,
      );
}

