extends Node2D

var effects = ["Global Warming, despite all odds, is destroying ONLY the Fish Trees. All Fish Trees currently planted are destroyed!",
"Global Warming, despite all odds, is destroying ONLY the Shrimp Bushes. All Shrimp Bushes currently planted are destroyed!",
"Global Warming, despite all odds, is destroying ONLY the Catnip Plants. All Catnip currently planted is destroyed!",
"Global Warming, despite all odds, is destroying ONLY the Scratch posts. All Scratch Posts currently planted are destroyed!",
"Global Warming, despite all odds, is affecting ONLY the Cows. All Cow currently planted have left the premise, citing 'incowmane working environments' as the reason for the walkout!",

"A rogue family of badgers is on the prowl, rubbing thier scent on all scratch posts in storage, rendering them unusable.",
"All shrimp have left storage in order to go on a culinary journey. \"We want to fry all the rice\" - A spokes-shrimp told us.\"",
"Mad Cow Disease has broken out globally! All cows in storage have gone rogue and started a Union and have escaped from storage! The ones still on the fields were immune to the propaganda.",
"All catnip in storage has wilted and rotted. That's it. That's the news.",
"In a situation Darvin would describe as /'absurd/' and /'impossible/', all fish in storage have grown legs and simply walked out.",

"The Fishes and Shrimp are fighting a turf war, and the Shrimp were victorious! - All Fish Trees planted next to Shrimp Bushes are destroyed!",
"The Fishes and Shrimp are fighting a turf war, and the Fishes were victorious! - All Shrimp Bushes planted next to Fish Trees are destroyed!",
"The Fishes and Cows are fighting a turf war, and the Fishes were victorious! - All Cows planted next to Fish Trees are destroyed!",
"The Fishes and Cows are fighting a turf war, and the Cows were victorious! - All Fish Trees planted next to Cows are destroyed!",
"The Cows and Shrimp are fighting a turf war, and the Cows were victorious! - All Shrimp Bushes planted next to Cows are destroyed!",
"The Cows and Shrimp are fighting a turf war, and the Shrimp were victorious! - All Cows planted next to Shrimp Bushes are destroyed!",

"The Scratch Posts have become invasive! All Catnip planted next to Scratch Posts is destroyed!",
"The Catnip has become invasive! All Scratch Posts planted next to Catnip is destroyed!",

"The Cows have gotten their hands on horses! Once per turn Cows can move to an unoccupied field a knights move away from their current position!",
"The Shrimp have gotten their hands on horses! Once per turn Shrimp Bushes can move to an unoccupied field a knights move away from their current position!",
"The Fishes have gotten their hands on horses! Once per turn Fish Trees can move to an unoccupied field a knights move away from their current position!",
"The Scratch Posts have joined the catholic church! Once per turn Scratch Posts can move diagonally to an unoccupied space!",

"Scratch Post Season is in full swing! All harvested Scratch Posts returns are doubled!",
"Shrimp Bush is in full swing! All harvested Shrimp returns are doubled!",
"Fish Tree Season is in full swing! All harvested Fish returns are doubled!",
"Cow Season is in full swing! All harvested Cow returns are doubled!",
"Catnip Season is in full swing! All harvested Catnip returns are doubled!",

"Truckers are finally paid a living wage and are quite happy about it! Twice as many resources can be sent to opponents in each trading phase!",

"In an absurd coincidence, the entire human populace has moved to a parallel universe! While close, our new universe is not the same. All farm plots are moved clockwise.",
"In an absurd coincidence, the entire human populace has moved to a parallel universe! While close, our new universe is not the same. All farm plots are moved counter-clockwise.",

"It's a lazy day today. There is nothing to report.",

"Today the stars are aligned and all cats are happy. They require no resources today!",
"Today the stars are miss aligned and all cats are furious. They require twice as many resources to be appeased.",
"A time dilation occured and harvest is sped up by one turn.",
"For every 2 life you have lost you may pick one resource from the bank."]

#meowtastic mayhem
var roundCounter:int = 2
var nCatnip:int = 0;
var nFish:int = 0;
var nScratchPost:int = 0;
var nShrimp:int = 0;

var ressources = [ "Catnip", "Fish", "Scratch Post", "Shrimp", "Cow"]



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Node2D/AnimationPlayer.stop()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	$Node2D/AnimationPlayer.play("moveUp")
	$Node2D/ColorRect/NEWS.text = "BREAKING NEWS: "+ effects.pick_random()
	
	
	
	
		
	
	pass # Replace with function body.



func _on_button_2_pressed() -> void:
	
	var test = ressources.duplicate()
	test.shuffle()
	test = test.slice(0, 3)
	
	var amount1 = randi_range(1, roundCounter-1)
	var amount2 = randi_range(1, roundCounter - amount1)
	
	var amount3 = roundCounter - (amount1 + amount2)
	
	
	$CatNeeds.text = "Cat wants: "+str(test[0]) + ": " + str(amount1) + ", " +str(test[1]) + ": " + str(amount2) + ", " +str(test[2]) + ": " + str(amount3)
	roundCounter += 1
	pass # Replace with function body.
	


func _on_button_3_pressed() -> void:
	roundCounter = 2
	$Node2D/AnimationPlayer.play("moveDown")
	$CatNeeds.text = "Press \"New Cat Order\" for a new Cat Order"
	pass # Replace with function body.
