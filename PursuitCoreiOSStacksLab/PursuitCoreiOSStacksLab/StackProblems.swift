import Foundation

//Problem One:
//Find the largest integer in a Stack of Ints

func largest(stack: Stack<Int>) -> Int {
    var myMax = 0
    var stack = stack
    while stack.isEmpty() == false {
         var currentPop = stack.pop()
        if currentPop! >= myMax {
            myMax = currentPop!
        }

    
   }
    return myMax
}



//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
    var mySum = 0
    var stack = stack
    while stack.isEmpty() == false {
        var currentPop = stack.pop()
        mySum += currentPop!
        
        
    }
    return mySum
}

//Problem Three:
//Reverse a Stack without using an Array

//Sample input:
/*
 4
 2
 9
 3
 */

//Sample output:
/*
 3
 9
 2
 4
 */

//store last val.

func reverse<T>(stack: Stack<T>) -> Stack<T> {
    var newStack = Stack<T>()
    var stack = stack
    while stack.isEmpty() == false {
        newStack.push(element: stack.pop()!)
    }
    return newStack
    
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    var stackOneArr = [Int]()
    var stackTwoArr = [Int]()
    var stackOne = stackOne
    var stackTwo = stackTwo
    
    while stackOne.isEmpty() == false {
        stackOneArr.append(stackOne.pop() as! Int)
    }
    
    while stackTwo.isEmpty() == false {
        stackTwoArr.append(stackTwo.pop() as! Int)
    }
    
    if stackOneArr == stackTwoArr {
        return true
    } else {
        return false
    }
    
}




//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    var revStack = reverse(stack: stack)
    revStack.push(element: newElement)
    revStack = reverse(stack: revStack)
    return revStack
}

//Problem Six:
//Determine if the parentheses are balanced in a given String

//Sample input: ((()))
//Sample output: true

//Sample input: ((())
//Sample output: false

//Sample input: (()((())()))
//Sample output: false


func isBalanced(str: String) -> Bool {
    return false
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    return ""
}

