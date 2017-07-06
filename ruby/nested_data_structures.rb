#Highway Nested Data Structures
#Create Hash for each side of Highway (East/West) With that Create Lanes again using hashes.  Within Lanes create cars out of arrays of cars in which an array of descriptive information about the cars is nested

highway = {
  eastbound_lanes: {
    fast_lane: [
        ['Driver: Steve ', 'Mercedes-Benz', 'Speed: 72 mph', 'Passengers: 4'],
        ['Driver: Stephanie ', 'Honda', 'Speed: 67 mph', 'Passengers: 0'],
        ['Driver: Jamal ', 'Mazda', 'Speed: 65 mph', 'Passengers: 1']
    ],
    middle_lane: [
      ['Driver: Jane ', 'Ford', 'Speed:64 mph', 'Passengers: 2'],
      ['Driver: John ' 'Honda', 'Speed: 60 mph', 'Passengers: 0'],
      ['Driver: Brandon ' 'Ford', 'Speed: 60 mph', 'Passengers: 1']
    ],
    slow_lane: [
      ['Driver: Grandma' 'Chevy', 'Speed: 25 mph', 'Passengers: 0'],
    ]
  },
  westbound_lanes: {
   fast_lane: [
      ['Driver: Grandpa', 'GMC', 'Speed: 85', 'Passengers: 1'],
      ['Driver: Max', 'Toyota', 'Speed: 70', 'Passengers: 0']
    ],
   middle_lane: [
    ],
   slow_lane: [
    ['Driver: Harry', 'Lexus', 'Speed: 65', 'Passengers: 3'],
    ['Driver: Phoebe', 'Honda', 'Speed: 55', 'Passengers: 0'],
    ['Driver: Elizabeth', 'Chevy', 'Speed: 54', 'Passengers: 1']
   ]
  }
}
require 'pp'
pp highway