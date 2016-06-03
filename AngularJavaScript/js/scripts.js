// CHARACTERS IN STRINGS

// order N*N
function findCharsNN(string1, string2) {
  var hit_map = {}, // object with all matching chars as keys
      result = "";
  for (var i = 0, len1 = string1.length; i < len1; i++) {
    var char1 = string1[i];
    for (var j = 0, len2 = string2.length; j < len2; j++) {
      var char2 = string2[j];
      if (char1 == char2 && hit_map[char1] == undefined) {
        hit_map[char1] = "hit";
        result += char1;
      } 
    }
  }
  return result;
}

// order N
function findCharsN(string1, string2) {
  var result = "",
      chars1 = {}, // characters in the first string
      chars2 = {}; // characters in the second string
  for (var j = 0, len2 = string2.length; j < len2; j++) {
    chars2[string2[j]] = true;
  }
  for (var i = 0, len1 = string1.length; i < len1; i++) {
    var char1 = string1[i];
    if (chars2[char1] && chars1[char1] == undefined) {
      chars1[char1] = "hit";
      result += char1;
    }
  }
  return result;
}

// ARRAY COMPACTION

function compactArray(array) {
  var length = array.length;
  var new_array = new Array(length);
  var new_length = 0;
  var current_value = null;

  for (var i = 0; i < length; i++) {
    if (current_value != array[i]) {
      current_value = array[i];
      new_array[new_length] = current_value;
      new_length++;
    }
  }
  new_array.length = new_length;

  return new_array;
}

// ROTATING AN ARRAY

function rotateArray(array, n) {
  var length = array.length;
  var new_array = new Array(length);
  var new_index = n%length;

  for (var i = 0; i < length; i++) {
    if (new_index >= length)
      new_index -= length;
    new_array[new_index] = array[i];
    new_index++;
  }
  return new_array;
}

// LEAST COMMON MULTIPLE

function findGCD(a, b) {
  var tmp;
  while (b != 0) {
    tmp = b;
    b = a % b;
    a = tmp;
  }
  return a;
}

function findLCM(array) {
  var denominator = 1;
  var numerator = 0;
  for (var i = 0; i < array.length; i++) {
    denominator *= array[i];
  }
  for (var i = 0; i < array.length; i++) {
    numerator += denominator / array[i];
  }
  var gcd = findGCD(numerator, denominator)
  return denominator / gcd;
}

