final int NUMBER_OF_LINES = 10;
final boolean DO_GRAPHICS = true;
final boolean VERBOSE = false;

int matchLength;

int[] lines = new int[NUMBER_OF_LINES];
int totalMatches = 0;
int matchesOnLine = 0;

PVector getPoint(PVector origin, float angle, int distance) {
  PVector a = PVector.random2D();
  a.mult(distance);
  PVector v = origin.get();
  v.add(a);
  
  return v;
}

void setup() {
  size(1280, 720);
  if (DO_GRAPHICS) {
    stroke(0);
    background(255);
  }
  
  matchLength = int(float(width)/(NUMBER_OF_LINES*2)) + 1;
  
  
  int i = 0;
  for (int x=0; x <= width; x += 2*matchLength) {
    if (DO_GRAPHICS) line(x,0,x,height);
    
    lines[i] = x;
    i++;
  }
  
  if (DO_GRAPHICS)
    stroke(0, 0, 255);
  else
    while (true) {
      addMatch();
    }
}

void addMatch() {
  PVector matchCenter = new PVector(random(width), random(height));
  float angle = random(TWO_PI);
  
  PVector end1 = getPoint(matchCenter, angle, matchLength/2);
  PVector end2 = getPoint(matchCenter, angle + PI, matchLength/2);
  
  totalMatches++;
  for(int line : lines) {
    if ( (end1.x <= line && line <= end2.x) || (end2.x <= line && line <= end1.x)) {
      matchesOnLine++;
      break;
    }
  }
  
  if (DO_GRAPHICS)
    line(end1.x, end1.y, end2.x, end2.y);
  
  println((float)totalMatches/matchesOnLine);
  if (VERBOSE)
    println("(" + totalMatches + " / " + matchesOnLine + ")");
}

void draw() {
  if (DO_GRAPHICS) addMatch();
}
