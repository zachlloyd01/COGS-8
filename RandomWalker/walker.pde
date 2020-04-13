/* Code by Zachary Lloyd
 * For COGS 8 at UCSD
 * 4/12/2020
 * RandomWalker implementation in Processing
 * http://www.github.com/zachlloyd01 */

ArrayList<RandomWalker> walkers = new ArrayList<RandomWalker>(); //List to contain all the random walkers

int walkerNumber = 10; //How many walkers to create

void setup() { //Runs before first frame update

  size(400,400); //Size of the window
  
  for(int i = 0; i < walkerNumber; i++) { //Runs n times
  
    walkers.add(new RandomWalker(width / 2, height / 2, 50)); //Add a new walker to the list with instantiation data
  
  }

}

void draw() { //Runs every frame

  background(255); //Set the background back to white
  
  for(int i = 0; i < walkers.size() - 1; i++) {//Runs for each walker in the list
  
    RandomWalker walk = walkers.get(i); //Create a walker instance from the List
    walk.Render(); //Render() function from class creates the square
    walk.Move(); //Move() class moves the walker in a random direction
    
  }

}
