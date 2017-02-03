//
//  FactProvider.swift
//  FunFacts
//
//  Created by Joseph (Joe) Hill on 12/19/16.
//  Copyright © 2016 Joseph (Joe) Hill. All rights reserved.
//

import GameKit

struct FactProvider {
	let facts = ["Ants stretch when they wake up in the morning",
	             "Ostriches can run faster than horses",
	             "Olympic gold medals are actually made mostly of silver",
	             "You are born with 300 bones; by the time you are an adult you will have 206",
	             "It takes about 8 minutes for the light from the Sun to reach Earth",
	             "Some bamboo plants can grow almost a meter in just one day",
	             "The state of Florida is bigger than England",
	             "Some penguins can leap 2-3 meters out of water",
	             "On average, it takes 66 days to form a new habit",
	             "Mammoths still walked the Earth when the Great Pyramid was being built",
	             "During The Black Plague, it is estimated that Medieval Europe went from a population 150,000,000, down to 75,000,000"
	]
	
	func randomFact() -> String {
			let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
			return facts[randomNumber]
	}
}
