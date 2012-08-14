badgeMaker =
	getTemplate : (badge) ->
		alt= badge.name + " : "+  badge.description
		img = "<img src='"+badge.badge+"' class='badge' title='"+ alt+"'/>"
		"<li><a href='http://coderwall.com/avnerner' target='_blank'>" + img + "</a></li>"
	
	generateBadges : (data) ->
		innerHTML = ""
		badges = data.data.badges
		for i in badges
			innerHTML += badgeMaker.getTemplate(i)
		document.getElementById("coderwall").innerHTML = innerHTML