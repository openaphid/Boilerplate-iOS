function initialize() {
	var director = aphid.g2d.director;
	var winSize = director.winSize;

	var scene = new aphid.g2d.Scene();

	var label = new aphid.g2d.LabelTTF("Hello World");

	label.position = new aphid.core.Point(winSize.width / 2, winSize.height / 2);

	scene.addChild(label);

	director.runScene(scene);
  
  //Start Google Analytics
  var gat = aphid.ext.gat; //Google Analytics is binded as aphid.ext.gat
  gat.startTracker("UA-31741840-1", 10); //start a tracker
  gat.trackPageView("main.js"); //track a page view
  gat.trackEvent("JS", "initialize", null, -1); //track an event
  gat.dispatch(); //dispatch now
}

aphid.js.onload = initialize;
