import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import me.max.chartly.*; 
import me.max.chartly.exceptions.*; 
import me.max.chartly.charts.*; 
import me.max.chartly.components.data.*; 
import me.max.chartly.components.color.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_141113a extends PApplet {







public void setup() {
	size(960, 540);
	background(255);
	
	new Chartly(this);
	
	new DataSet(new String[]{"\"Too hot!\"", "\"Too cold!\"", "\"Just right!\""}, new Float[]{30.0f, 10.0f, 20.0f}).toBarChart(width/2, height/2).setYLabels(50,5).setTitles("Goldilocks's Description", "Degrees Celsius", "Bears' Porridge by Temperature").draw(width/4, 3*height/4);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_141113a" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
