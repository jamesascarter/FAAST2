This challenge requires me to to create a Tube System that will have the following functions:

There will be a number of trains in the system

Trains will travel from station to station

Inside of a station, when the train stops. Passengers will alightand enter the carriages of the train.

A passenger will touch in and touch out at the station.

Each coach of the train will hold upto 40 passengers

Each train is made of a number of coaches.


I have mapped out this project in the following manner using CRC.

					Station

Functions:

To allow trains to arrive and depart.

To allow passengers to arrive and depart station.

Interactions: Passengers, Trains.

					Trains

Functions:

Move from station to station.

Carry 3 coaches.

Interactions:

Station and coaches

					Coaches

Functions:

Have a capacity of 40
Hold passengers
Allow passengers to enter the coach.

Interactions: Passengers, train, station.

					Passengers

Functions: Touch in and out at the station
Interactions: Station and coaches





