//
//  Environment.cpp
//  Project2
//
//  Created by Digital Media Lab User on 13-03-10.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#include <iostream>
#include "EnvironmentRank.h"
#include "Creature.h"
#include "Plant.h"
#include "Carnivore.h"
#include "Herbivore.h"
#include "Environment.h"





void Environment::draw()
{
    //using curve to represent Environment;
   
    int rank = EnvironmentRank()->getRank();
    if (rank == 1) {
        update();
        beenUpdated = update();

    }
    if (rank == 2)
    {
      update();
    	 beenUpdated = update();
    }
    if (rank == 3)
    {
    	update();
    	beenUpdated = update();
    }
    if (rank == 4)
    {
    	update();
    	beenUpdated = update();
    }
       
        
        
}



bool Environment::beenUpdated(update)
{
	update = this->beenUpdated;
	if(update == true)
	{
		return true;	
	}
	return false;
}



