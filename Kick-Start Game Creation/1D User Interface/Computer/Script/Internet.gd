extends ColorRect

export(PoolStringArray) var SearchTerms

func On_Searched(new_text):
	# Removing Crap
	for n in SearchTerms.size():
		get_node("Site" + str(n + 1)).visible = false
		print("Working")
	# Finding Crap
	for n in SearchTerms.size():
		if SearchTerms[n] == new_text:
			get_node("Site" + str(n + 1)).visible = true
