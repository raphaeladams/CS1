int a = 12;
int b = 4;
println("BEFORE: a = " + a + ", b = " + b);

b *= a; 
a = b/a;
b /= a;
println("AFTER: a = " + a + ", b = " + b); 
