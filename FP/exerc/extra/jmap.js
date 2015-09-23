function jmap(arr, fn) {
  for (var element in arr) {
    print(fn(element))
  }
}

doubleMe = function(x) { return x * 2; };
hello = function(x) { return "Olá, número: " + x; };

arr = [1,2,3,4,5];

jmap(arr, doubleMe);
jmap(arr, hello);

