func areParenthesesBalanced(_ inputString: String) -> Bool {
        // If lenght of the input is less than 2, then, the input can not have a balanced parentheses.
        if inputString.count > 1 {
                var stringStack: [Character] = []
                let beginParentheses: Character = "("
                let closeParentheses: Character = ")"
        
                for char in inputString {
                        // The open parentheses has to be found before the close parentheses.
                        if char == beginParentheses {
                                stringStack.append(char)
                        } else if char == closeParentheses {
                                if let last = stringStack.last, last == beginParentheses {
                                        stringStack.removeLast()
                                } else {
                                        return false
                                }
                        }
                }
                return stringStack.isEmpty
        } else {
                return false
        }
}

let input: String = "())(()"
let isValid: String = "Valid"
let isNotValid: String = "Invalid"
let output = areParenthesesBalanced(input) ? isValid : isNotValid
print("Output: \(output)")
