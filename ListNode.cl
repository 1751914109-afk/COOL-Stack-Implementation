class ListNode {
    item : Int;
    next : ListNode;

    init(i : Int, n : ListNode) : SELF_TYPE {
        {
            item <- i;
            next <- n;
            self;
        }
    };
};