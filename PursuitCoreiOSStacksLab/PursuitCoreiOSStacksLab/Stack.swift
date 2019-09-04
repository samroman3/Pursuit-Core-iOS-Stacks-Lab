import Foundation

class Stack<T> {
    
    private var arr = Array<T>()
    
    func pop() -> T? {
        return arr.popLast()
    }
    
    func push(element: T) {
        arr.append(element)
    }
    
    func peek() -> T? {
        guard arr.count > 0 else {
            return nil
        }
        return arr[arr.count - 1]
    }
    
    func isEmpty() -> Bool {
        return arr.count == 0
    }
}

