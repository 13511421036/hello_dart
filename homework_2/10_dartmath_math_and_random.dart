import 'dart:math';


void main(List<String> args) {
  // Cosine
  assert(cos(pi) == -1.0);

  // Sine
  var degrees = 30;
  var radians = degrees * (pi / 180);
  // radians is now 0.52359.
  var sinOf30degrees = sin(radians);
  // sin 30° = 0.5
  assert((sinOf30degrees - 0.5).abs() < 0.01);
  
  assert(max(1, 1000) == 1000);
  assert(min(1, -1000) == -1000);
  assert(max(1, 1000) == 1000);
  assert(min(1, -1000) == -1000);




  var random = Random();
  random.nextDouble(); // Between 0.0 and 1.0: [0, 1)
  random.nextInt(10); // Between 0 and 9.
  var random1 = Random();
  random1.nextBool(); // true or false
}


