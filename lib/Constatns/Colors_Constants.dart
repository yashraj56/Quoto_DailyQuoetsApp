import 'dart:math';
import 'package:flutter/material.dart';

Color generateRandomDarkColor() {
  Random random = Random();
  int red = random.nextInt(150) + 106; // 106-255
  int green = random.nextInt(150) + 106; // 106-255
  int blue = random.nextInt(150) + 106; // 106-255
  return Color.fromARGB(255, red, green, blue);
}

/*
This algorithm generates a random dark color by using the Random class from the
dart:math library to generate random values for the red, green, and blue color components.
The values generated are between 106 and 255 to ensure that the resulting color is relatively dark.

Here's a breakdown of how the algorithm works =>

=> First, a new instance of the Random class is created using the Random() constructor.
This will allow us to generate random numbers.

=> Three variables are then declared to store the red, green, and blue color components.
Each variable is assigned a random integer between 106 and 255 using the nextInt()
method of the Random class.

=> Finally, a new Color object is created using the Color.fromARGB() constructor.
This constructor takes four arguments: alpha, red, green, and blue.
In this case, the alpha value is set to 255 (fully opaque) and the red, green,
and blue values are set to the random values generated earlier.
The resulting Color object is then returned.

e.g =>

import 'dart:math';

void main() {
  Random random = Random();

  // generate a random integer between 0 and 9
  int randomNumber1 = random.nextInt(10);
  print(randomNumber1);

  // generate a random integer between 1 and 6
  int randomNumber2 = random.nextInt(6) + 1;
  print(randomNumber2);

  // generate a random integer between -100 and 100
  int randomNumber3 = random.nextInt(201) - 100;
  print(randomNumber3);
}

*/
