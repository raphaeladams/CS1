// A meal item represents a portion of a meal that
// would go in front of a person and be eaten
class MealItem
{
  String name;
  int calories;
  boolean eaten;
  
  MealItem(String newName, int newCals)
  {
    name = newName;
    calories = newCals;
  }
}

// A meal consists of two courses, first and second,
// each containing some number of food items
class Meal
{
  int maxItems = 5;
  MealItem[] firstCourse;
  MealItem[] secondCourse;
  
  Meal(int newMaxItems)
  {
    maxItems = newMaxItems;
    firstCourse = new MealItem[maxItems];
    secondCourse = new MealItem[maxItems];
  }
}

void setup()
{
  // The constructor will automatically create the arrays
  Meal myDinner = new Meal(5);
  
  
  // We do not want to share data for the meal items
  // because the food that comes out on a plate is
  // different - we could have two breads, for example,
  // and only ends up being eaten
  
  myDinner.firstCourse[0] = new MealItem("bread", 70);
  myDinner.firstCourse[1] = new MealItem("soup", 140);
  
  myDinner.secondCourse[0] = new MealItem("bread", 70);
  myDinner.secondCourse[1] = new MealItem("bread", 70);
  myDinner.secondCourse[2] = new MealItem("beef", 300);
  myDinner.secondCourse[3] = new MealItem("wine", 80);
  myDinner.secondCourse[4] = new MealItem("bread", 60);
  
  
  // If we eat one bread in the first course, it shouldn't
  // affect any of the other breads
  myDinner.firstCourse[0].eaten = true;
  
  println("Eaten first bread: " + myDinner.firstCourse[0].eaten);
  println("Eaten second bread: " + myDinner.secondCourse[0].eaten);
  println("Eaten third bread: " + myDinner.secondCourse[1].eaten);
  println("--");
  
  
  // Put the meal into an array along with an empty meal
  // so we can test how the references are working
  
  Meal[] meals = new Meal[2];
  meals[0] = myDinner;
  meals[1] = new Meal(1);
  
  
  // Test how objects are passed into functions
  
  println(myDinner.maxItems);
  
  testAdjustingObject(myDinner);
 
  println(myDinner.maxItems);
  
  testReassigningParameter(myDinner);
  
  println(myDinner.maxItems);
  println("--");
  
  
  // Test how arrays are passed into functions
  
  println(myDinner.secondCourse[0].name + " " +
          myDinner.secondCourse[1].name + " " +
          myDinner.secondCourse[2].name + " ");
  
  testAdjustingArrayValues(myDinner.secondCourse);
  
  println(myDinner.secondCourse[0].name + " " +
          myDinner.secondCourse[1].name + " " +
          myDinner.secondCourse[2].name + " ");
}


// This function show how an object parameter works
// in terms of references
void testAdjustingObject(Meal m)
{
  // Parameter m is a reference to a Meal.  This means
  // that we can modify the attributes of m and this will
  // affect the object we passed into the function. This
  // is because m is an arrow to that object, and using
  // the dot operator . takes you along the arrow.
  m.maxItems--;
  
}

// This function shows that you can reassign a reference
// parameter inside the function without affecting the
// object passed in.
void testReassigningParameter(Meal m)
{
  // Remember that m is really an arrow that points to
  // where the object m is located in memory. So if we 
  // overwrite m with another object, m just stores a
  // new arrow. The variable originally passed to the
  // function is NOT affected.  We copied our arrow
  // to the parameter m.
  m = new Meal(10);
  m.maxItems--;
}


// This function tests adjusting values inside of an array
void testAdjustingArrayValues(MealItem[] items)
{
  // Arrays are references as well, so we can access
  // the values inside the array, modify them,
  // and even swap them around in the array
  
  items[0].name += " CHANGED";
  
  MealItem temp = items[2];
  items[2] = items[1];
  items[1] = temp;
}