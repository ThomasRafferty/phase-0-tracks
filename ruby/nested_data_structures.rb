#Highway Nested Data Structures
#Create Hash for each side of Highway (East/West) With that Create Lanes again using hashes.  Within Lanes create cars out of arrays of cars in which an array of descriptive information about the cars is nested

highway = {
  eastbound: {
      fast_lane: [
        [cars_east_fast = [
          ['Mercedes-Benz', 'speed: 85 mph' 'Driver: Steve', 'Passengers: 4'],
          ['Honda', 'speed: 67 mph', 'Driver: Mark', 'Passengers: 0'],
          ['Mazda', 'speed: 65 mph', 'Driver: Mark', 'Passengers: 0']
        ]
      ],
      middle_lane: [
        [cars_east_middle = [
        ]
      ],
      slow_lane: [
        [cars_east_low = [
        ]
      ]
    ]
  },
  westbound: {
      fast_lane: [
        [cars_west_fast = [
          ['Mercedes-Benz', 'speed: 85 mph' 'Driver: Steve', 'Passengers: 4'],
          ['Honda', 'speed: 67 mph', 'Driver: Mark', 'Passengers: 0'],
          ['Mazda', 'speed: 65 mph', 'Driver: Mark', 'Passengers: 0']
        ]
      ],
      middle_lane: [
        [cars_west_medium = [
        ]
      ],
      slow_lane: [
        [cars_west_slow = [
        ]
      ]
  }
}