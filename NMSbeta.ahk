Random, descwords, 1, 3
Loop, %descwords%
{
adj := RandAdj()
	if(A_Index>1)
	{
	descworld .= ", "
	}
	descworld .= adj
}
 	Gui, NMS:add, text,, % "You are on the " . descworld . " planet with " . RandColor(tree) . " trees, " . RandColor(dino) . " dinosaurs, and " . RandColor(grass) . " grass, beware especially the " . dino . A_SPACE . RandDino()
	Gui, NMS:add, button, gButtonRefresh Default, &Refresh
	Gui, NMS:add, button, gButtonExit, E&xit
	Gui, NMS:show
return

RandDino()
{
dinoray := ["Albertosaurus", "Allosaurus", "Coelophysis", "Compsognathus", "Deinonychus", "Dilophosaurus", "Eoraptor", "Giganotosaurus", "Megalosaurus", "Suchomimus", "Tyrannosaurus rex", "Unenlagia", "Utahraptor"]
Random, dinoname, dinoray._MinIndex(), dinoray._MaxIndex()
Return dinoray[dinoname]
}
	

RandColor(ByRef item)
{
colorray := ["Red","Blue","Green","Magenta","Orange","Neon Pink","Brown","Cyan","Periwinkle","Gray"]	
Random, item, colorray._MinIndex(), colorray._MaxIndex()
item := colorray[item]
Return item
}

RandAdj()
{
	Random, adj, 1, 500
	FileReadLine, adjword, 500_adjectives.txt, %adj%
	Return adjword
}


ButtonRefresh:
Reload

ButtonExit:
ExitApp
	