/*:
# Intro to Programming in Swift Worksheet 2
In this set of exercises, you'll use Swift to make functions that do basic operations using loops. Remember to turn on the *Assistant Editor* before you start.
*/

func printHeader(title: String){
    println("")
    println(title);
    println("------------")
}
/*:
## Demo 1: Even or Odd?
This function returns true if your number is even, and false if your number is odd.
*/

func isThisEven(number : Int)->Bool{
    if(number%2==0){
        return true;
    }
    else{
        return false;
    }
}

println(isThisEven(5));
/*:
Notice how we specify the **return type** of the function?
*/

/*:
## Exercise 3A: Is it divisible by 4?
Using the isThisEven function twice, check whether testNumber is divisible by 4.
    There should be 3 different types of outcomes

` 1 => 1 is Odd`

` 2 => 2 is Even but not divisible by 4`

` 8 => 8 is Even and divisible by 4 `
*/
printHeader("Exercise 3A");
var testNumber=4;
if(isThisEven(testNumber)){
    println("\(testNumber) is Even");
}
else{
    println("\(testNumber) is Odd");
}


/*:
## Exercise 3B: Judging People
Remember the BMI function you wrote in Worksheet 2-1? copy and paste it below. Remember to edit it to return the calculated BMI!

Now fill in the amIOverweight function to return true if the BMI exceeds 25, or false otherwise.
*/
printHeader("Exercise 3B");

func calculateBMI(weight : Double, height : Double) {
    var bmi = weight // TODO: this is wrong!
    println("Your BMI is \(bmi)")
}
func amIOverweight(weight: Double, height: Double){
    calculateBMI(weight,height)
    println("You're overweight!")
}
amIOverweight(78, 1.75);

/*:
## Exercise 3C: Judging Intensifies
Using the same calculateBMI function above, write a function that checks whether a given height and weight is underweight (BMI<18.5), normal (18.5<=BMI<=25), overweight (25<BMI<30), or obese (30<BMI) and prints the result.
Hint: Else if
*/
printHeader("Exercise 3C");
func judgeMe(weight: Double, height: Double){
    calculateBMI(weight,height);
}
judgeMe(78,1.75);
