/obj/item/reagent_containers/food/snacks/donut
	name = "donut"
	desc = "Goes great with Robust Coffee."
	icon_state = "donut1"
	bitesize = 5
	list_reagents = list("nutriment" = 3, "sugar" = 2)
	var/extra_reagent = null
	filling_color = "#D2691E"
	var/randomized_sprinkles = 1
	var/donut_sprite_type = "regular"
	tastes = list("donut" = 1)

/obj/item/reagent_containers/food/snacks/donut/New()
	..()
	if(randomized_sprinkles && prob(30))
		icon_state = "donut2"
		name = "frosted donut"
		reagents.add_reagent("sprinkles", 2)
		donut_sprite_type = "frosted"
		filling_color = "#FF69B4"

/obj/item/reagent_containers/food/snacks/donut/sprinkles
	name = "frosted donut"
	icon_state = "donut2"
	list_reagents = list("nutriment" = 3, "sugar" = 2, "sprinkles" = 2)
	filling_color = "#FF69B4"
	donut_sprite_type = "frosted"
	randomized_sprinkles = 0

/obj/item/reagent_containers/food/snacks/timbit
	name = "donut hole"
	desc = "Goes great with a really tiny cup of Robust Coffee."
	icon_state = "timbit"
	bitesize = 1
	list_reagents = list("nutriment" = 1, "sugar" = 1)
	var/extra_reagent = null
	filling_color = "#D2691E"
	tastes = list("donut" = 1, "hole" = 1)

/obj/item/reagent_containers/food/snacks/donut/chaos
	name = "chaos donut"
	desc = "Like life, it never quite tastes the same."
	bitesize = 10
	tastes = list("donut" = 3, "chaos" = 1)

/obj/item/reagent_containers/food/snacks/donut/chaos/New()
	..()
	extra_reagent = pick("nutriment", "capsaicin", "frostoil", "krokodil", "plasma", "cocoa", "slimejelly", "banana", "berryjuice", "omnizine")
	reagents.add_reagent("[extra_reagent]", 3)
	if(prob(30))
		icon_state = "donut_chaos"
		name = "frosted chaos donut"
		reagents.add_reagent("sprinkles", 2)
		filling_color = "#FF69B4"

/obj/item/reagent_containers/food/snacks/donut/jelly
	name = "jelly donut"
	desc = "You jelly?"
	icon_state = "jdonut1"
	extra_reagent = "berryjuice"
	donut_sprite_type = "jelly"
	tastes = list("jelly" = 1, "donut" = 3)

/obj/item/reagent_containers/food/snacks/donut/jelly/New()
	..()
	if(extra_reagent)
		reagents.add_reagent("[extra_reagent]", 3)
	if(prob(30))
		icon_state = "jdonut2"
		name = "frosted jelly Donut"
		donut_sprite_type = "frostedjelly"
		reagents.add_reagent("sprinkles", 2)
		filling_color = "#FF69B4"

/obj/item/reagent_containers/food/snacks/donut/jelly/slimejelly
	name = "jelly donut"
	desc = "You jelly?"
	icon_state = "jdonut1"
	extra_reagent = "slimejelly"

/obj/item/reagent_containers/food/snacks/donut/jelly/cherryjelly
	name = "jelly donut"
	desc = "You jelly?"
	icon_state = "jdonut1"
	extra_reagent = "cherryjelly"