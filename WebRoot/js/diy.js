function switchMod(modk){
		var mod=document.getElementById("mod"+modk);
		var col=document.getElementById("slidingList"+modk);
		for(var i=1;i<=9;i++){
			var itemList=document.getElementById("slidingList"+i);
			var colList=document.getElementById("mod"+i);
			itemList.style.display="none";
			colList.style.backgroundColor="";
		}
		mod.style.backgroundColor="#030303";
		col.style.display="inline";
	}