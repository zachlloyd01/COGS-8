/* Code by Zachary Lloyd
 * For COGS 8 at UCSD
 * 4/12/2020
 * RandomWalker implementation in Processing
 * http://www.github.com/zachlloyd01 */

class RandomWalker { //the walker object
  
  public float x; //x-coordinate of the walker
  public float y; //y-coordinate of the walker
  public float radius; //Size of the walker
  
  public RandomWalker(float X, float Y, float Radius) { //Constructor is called on class creation
    x = X; //Set x-value
    y = Y; //Set y-value
    radius = Radius; //Set radius value
  }
  
  public void Render() { //Called from draw() before Move()
    rectMode(CENTER); //Center the rectangle
    fill(255,0,0); //Set the color to red
    rect(x,y,radius,radius); //Make a new rectangle with the data
  }
  
  public void Move() { //Called from draw() after Render()
    if(x > width) { //Keep x in bounds
      x = width;
    }
    else if(x<0) { //Keep x in bounds
      x = 0;
    }
    else { //Set x value to a new random one (within range)
      x += random(-6,6);
    }
    
    if(y > height) { //Keep y in bounds
      y = height;
    }
    else if(y<0) { //Keep y in bounds
      y = 0;
    }
    else { //Set y value to a new random one (within range)
      y += random(-6,6);
    }
  }
  
}
