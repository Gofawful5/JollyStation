/// Separate file to add in additional blacklists for added quirks.
/datum/controller/subsystem/processing/quirks
	// Add in quirk blackists here. Format is a list of a list of quirks that are incompatible.
	var/list/module_blacklist = list(list("Size A - Extremely Large", "Size B - Very Large", "Size C - Large", "Size D - Average Height", "Size E - Small", "Size F - Very Small", "Size G - Extremely Small"))

//Extends the initialization proc, adding the module blacklists we have after the main init finishes.
/datum/controller/subsystem/processing/quirks/Initialize()
	. = ..()
	quirk_blacklist.Add(module_blacklist)
