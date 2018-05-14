//: Playground - noun: a place where people can play

import UIKit

struct queue {
    var queuename:String
    var contents:[Int]
    var limit:Int
    
    init(name:String, limit:Int) {
        self.queuename = name
        self.contents = []
        self.limit = limit
    } // initialize
    
    func print_queue() {
        print(contents)
    } // print values
    
    func get_count() -> Int {
        return self.contents.count
    } // print get_count
    
    mutating func enqueue(value:Int) {
        if contents.count >= limit {
            print("\(queuename) has \(limit) values. Cannot enqueue more.")
        }
        else { contents.append(value) }
    } // enqueue
    
    mutating func dequeue() {
        if contents.count == 0 {
            print("\(queuename) has no values. Cannot dequeue.")
        }
        else {
            for i in 0..<contents.count - 1 {
                contents[i] = contents[i+1]
            }
            contents.remove(at: contents.count - 1)
        }
    } // dequeue
}

var queue1:queue
queue1 = queue(name: "my_queue", limit: 3)
queue1.enqueue(value: 3)
queue1.enqueue(value: 11)
queue1.enqueue(value: 15)
queue1.print_queue()
queue1.dequeue()
queue1.print_queue()
queue1.dequeue()
queue1.print_queue()
queue1.dequeue()
queue1.print_queue()
queue1.dequeue()
queue1.enqueue(value: 8)
queue1.enqueue(value: 40)
queue1.enqueue(value: 0)
queue1.print_queue()

var str = "Hello, playground"
print(str)