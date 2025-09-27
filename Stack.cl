class Stack {
    top : ListNode;

    isEmpty() : Bool { isvoid top };

    push(i : Int) : SELF_TYPE {
        {
            top <- new ListNode.init(i, top);
            self;
        }
    };

    pop() : Int {
        if isEmpty() then
            abort()
        else
            let res : Int <- top.item in
            {
                top <- top.next;
                res;
            }
        fi
    };

    peek() : Int {
        if isEmpty() then
            abort()
        else
            top.item
        fi
    };

    print(io : IO) : SELF_TYPE {
        let cur : ListNode <- top in
        {
            io.out_string("Stack contents (top to bottom): ");
            while not isvoid cur loop
            {
                io.out_int(cur.item).out_string(" ");
                cur <- cur.next;
            } pool;
            io.out_string("\n");
            self;
        }
    };
};