function initialize() {
	var director = aphid.g2d.director;
	var winSize = director.winSize;

	var scene = new aphid.g2d.Scene();

	var label = new aphid.g2d.LabelTTF("Hello World");

	label.position = new aphid.core.Point(winSize.width / 2, winSize.height / 2);

	scene.addChild(label);

	director.runScene(scene);
}

aphid.js.onload = initialize;
