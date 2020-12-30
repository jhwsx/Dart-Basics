// https://www.youtube.com/watch?v=TF-TBsgIErY&list=PLjxrf2q8roU0Net_g1NT5_vOO3s_FR02J&index=1&ab_channel=Flutter

main() {
  var range = getRange(1, 10);
  for (var val in range) {
    print(val);
  }
}


Iterable<int> getRange(int start, int finish) sync* {
  print('getRange: start=$start, finish=$finish');
  if (start <= finish) {
    print('start=$start');
    yield start;
    yield* getRange(start + 1, finish);
  }
}


// Iterable<int> getRange(int start, int finish) sync* {
//   print('getRange: start=$start, finish=$finish');
//   if (start <= finish) {
//     print('start=$start');
//     yield start;
//     for (final val in getRange(start + 1, finish)) {
//       print('val=$val');
//       yield val;
//     }
//   }
// }


// Iterable<int> getRange(int start, int finish) sync* {
//   for (int i = start; i <= finish; i++) {
//     yield i;
//   }
// }


// Future<int> fetchDouble(int val) {
//
// }
//
// Stream<int> fetchDoubles(int start, int finish) async* {
//   for (int i = start; i <= finish; i++) {
//     yield await fetchDouble(i);
//   }
// }

