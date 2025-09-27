class Main inherits IO {
    main() : Object {
        {
            out_string("=== Stack Implementation Test ===\n");

            let s : Stack <- new Stack in

            -- Test empty stack
            out_string("1. Testing empty stack:\n");
            out_string("Is stack empty? ").out_string(if s.isEmpty() then "Yes" else "No" fi).out_string("\n\n");

            -- Test pushing
            out_string("2. Pushing 10, 20, 30:\n");
            s.push(10).push(20).push(30);
            s.print(self);
            out_string("Top element: ").out_int(s.peek()).out_string("\n\n");

            -- Test popping
            out_string("3. Popping top element:\n");
            out_string("Popped: ").out_int(s.pop()).out_string("\n");
            s.print(self);
            out_string("New top: ").out_int(s.peek()).out_string("\n\n");

            -- Test more operations
            out_string("4. Push 40 and pop twice:\n");
            s.push(40);
            s.print(self);
            out_string("First pop: ").out_int(s.pop()).out_string("\n");
            out_string("Second pop: ").out_int(s.pop()).out_string("\n");
            s.print(self);
            out_string("\n");

            -- Final state
            out_string("5. Final state:\n");
            out_string("Is stack empty? ").out_string(if s.isEmpty() then "Yes" else "No" fi).out_string("\n");

            out_string("=== Test Completed ===\n");
        }
    };
};