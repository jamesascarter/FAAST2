# FAAST

This challenge set by Makers Academy requires me to to create a Tube System that will have the following functions:

>There will be a number of trains in the system

>Trains will travel from station to station

>Inside of a station, when the train stops. Passengers will alight and enter the carriages of the train.

>A passenger will touch in and touch out at the station.

>Each coach of the train will hold upto 40 passengers.

>Each train is made of a number of coaches.

>A passenger can only travel with at least £2 in credit.

### Tech

* Ruby - Object-orientated language
* Rspec - Testing (Using London-syle doubles)
* Dillinger - Markdown Editor

### How to use

Clone this repo:
```sh
$ git clone https://github.com/jamesascarter/FAAST2.git
```

Change into the directory:
```sh
$ cd FAAST2
```

To run the rspec tests:
```sh
$ rspec
```

To run the code:
```sh
$ irb
    > require './runner'
    > paddington = Station.new
    > waterloo = Station.new
    > train101 = Train.new
    > james = Passenger.new
```

Once these have been created you can then use the methods specified in my code to allow passenger to topup travel credit, enter/leave stations and embark/alight trains. The passengers can also move from station to station of which you can create as many as you want.

### Improvements

* When passengers enter and leave the train I should iterate over the coaches in order to block remove them all. When dealing with lots of passengers it will make it much more efficient rather than removing one-by-one.

* Ensure that passengers can only enter a train when it is present at the stationld. make a checker method that ensures train is at the station.







