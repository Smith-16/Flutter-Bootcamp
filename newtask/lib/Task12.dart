void main() {
  var numList = [3,9,35,97,12,15,45,38];
  var largestNum = numList[0];
  var smallestNum = numList[0];
  for (var i = 0; i < numList.length; i++) {
    if (numList[i] > largestNum) {
      largestNum = numList[i];
    }
    if (numList[i] < smallestNum) {
      smallestNum = numList[i];
    }
  }
  print("Smallest value in the list : $smallestNum");
  print("Largest value in the list : $largestNum");
}