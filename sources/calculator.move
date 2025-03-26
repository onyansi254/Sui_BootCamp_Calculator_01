// Module: calculator
module calculator::calculator {

    // Importing vectors and debugging utilities
    use std::vector;
    use std::debug;

    // Structure to store previous calculation results
    public struct Calculator {
        history: vector<u64>
    }

    // Function to add two numbers
    public fun add(a: u64, b: u64): u64 {
        let result = a + b;
        result
    }

    // Function to subtract two numbers
    public fun subtract(a: u64, b: u64): u64 {
        let result = a - b;
        result
    }

    // Function to create a new Calculator instance
    public fun create_calculator(): Calculator {
        Calculator {
            history: vector::empty()
        }
    }

    // Function to record a calculation in the history
    public fun record_calculation(calc: &mut Calculator, result: u64) {
        vector::push_back(&mut calc.history, result);
    }
}
