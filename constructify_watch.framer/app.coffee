constructify_watchLayers = Framer.Importer.load "imported/Constructify_Watch"

console.log(constructify_watchLayers);

reassignment = constructify_watchLayers['Reassignment'];
percent = constructify_watchLayers['percent'];
percent_1 = constructify_watchLayers['percent_1'];
percent.opacity = 0;

reassignment.on Events.Click, ->
	percent.opacity = 1;
	percent_1.opacity = 0;	


