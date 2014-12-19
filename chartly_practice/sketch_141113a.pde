import me.max.chartly.*;
import me.max.chartly.exceptions.*;
import me.max.chartly.charts.*;
import me.max.chartly.components.data.*;
import me.max.chartly.components.color.*;

void setup() {
	size(960, 540);
	background(255);
	
	new Chartly(this);
	
	new DataSet(new String[]{"\"Too hot!\"", "\"Too cold!\"", "\"Just right!\""}, new Float[]{30.0, 10.0, 20.0}).toBarChart(width/2, height/2).setYLabels(50,5).setTitles("Goldilocks's Description", "Degrees Celsius", "Bears' Porridge by Temperature").draw(width/4, 3*height/4);
}