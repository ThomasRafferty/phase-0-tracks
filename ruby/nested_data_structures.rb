#Highway Nested Data Structures
#Create Hash for each side of Highway (East/West) With that Create Lanes again using hashes.  Within Lanes create cars out of arrays of cars in which an array of descriptive information about the cars is nested

highway = {
  eastbound: {
    cars_fast_lane = [
        ['Driver: Steve' 'Mercedes-Benz', 'Speed: 85 mph', 'Passengers: 4'],
        ['Driver: Stephanie', 'Honda', 'Speed: 67 mph', 'Passengers: 0'],
        ['Driver: Jamal', 'Mazda', 'Speed: 65 mph', 'Passengers: 0']
    ],
    cars_middle_lane = [
      ['Ford', 'Speed:64 mph', 'Driver: Jane', 'Passengers: 2'],
      ['Honda', 'Speed: 60 mph', 'Driver: ']
    ],
    cars_slow_lane = [
    ]
  },
  westbound: {
   fast_lane: [
     cars_west_fast = [
       ["Mercedse-Benz", "speed: 85 mph", "Driver: Steve", "Passengers: 4"],
       ["Honda", "speed: 67 mph", "Driver: Mark", "Passengers: 0"],
       ["Mazda", "speed: 65 mph", "Driver: Mark", "Passengers: 0"]
     ]
   ],
   middle_lane: [
     cars_west_medium = [
     ]
   ],
   slow_lane: [
     cars_west_slow = [
     ]
   ]
  }
}