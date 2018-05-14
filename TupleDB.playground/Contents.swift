//: Playground - noun: a place where people can play

import UIKit

class TupleData {
    var TName:(StuName:String, BlogName:String)
    var StuTuples:[(StuNo:String, Grade:Int, GPA:Double)]
    var BlogTuples:[(StuNo:String, Fols:Int, Class_:Int)]
    
    init (Stu:String, Blog:String){
        self.TName = (Stu, Blog)
        self.StuTuples = []
        self.BlogTuples = []
    } // initialize
    
    func addStu(a:String, b:Int, c:Double) {
        StuTuples.append((a, b, c))
    } // add student info
    
    func addBlog(a:String, b:Int) {
        var c:Int = 0
        if b >= 500000 { c = 1 }
        else if b >= 50000 { c = 2 }
        else if b >= 10000 { c = 3 }
        else { c = 4 }
        BlogTuples.append((a, b, c))
    } // add blog info
    
    func searchStu(No:String, TableNo:Int, ColNo:Int) -> Any {
        if TableNo == 1 {
            for i in 0..<StuTuples.count {
                if StuTuples[i].StuNo == No {
                    if ColNo == 1 { return StuTuples[i].StuNo }
                    else if ColNo == 2 { return StuTuples[i].Grade }
                    else if ColNo == 3 { return StuTuples[i].GPA }
                }
            }
        } // student table
        else if TableNo == 2 {
            for i in 0..<BlogTuples.count {
                if BlogTuples[i].StuNo == No {
                    if ColNo == 1 { return BlogTuples[i].StuNo }
                    else if ColNo == 2 { return BlogTuples[i].Fols }
                    else if ColNo == 3 { return BlogTuples[i].Class_ }
                }
            }
        } // blog table
        return -1
    } // search info and return
    
    func deleteStu(No:String, TableNo:Int) {
        if TableNo == 1 {
            for i in 0..<StuTuples.count {
                if StuTuples[i].StuNo == No {
                    StuTuples.remove(at: i)
                }
            }
        } // student table
        else if TableNo == 2 {
            for i in 0..<BlogTuples.count {
                if BlogTuples[i].StuNo == No {
                    BlogTuples.remove(at: i)
                }
            }
        } // blog table
    } // delete info
    
    func printTable(TableNo:Int) {
        if TableNo == 1 {
            print("Table name = \(TName.StuName)")
            for i in 0..<StuTuples.count {
                print(StuTuples[i])
            }
        } // student table
        else if TableNo == 2 {
            print("Table name = \(TName.BlogName)")
            for i in 0..<BlogTuples.count {
                print(BlogTuples[i])
            }
        } // blog table
    } // print tables
}

var x:TupleData = TupleData(Stu: "Students", Blog: "Blogs")
x.addStu(a: "20162534", b: 3, c: 1.75)
x.addStu(a: "20151139", b: 2, c: 4.0)
x.addStu(a: "20141234", b: 3, c: 4.5)
x.addStu(a: "20171013", b: 2, c: 3.75)
x.addStu(a: "20180024", b: 1, c: 4.25)
x.addBlog(a: "20162534", b: 35000)
x.addBlog(a: "20151139", b: 71500)
x.addBlog(a: "20141234", b: 600000)
x.addBlog(a: "20171013", b: 2500)
x.printTable(TableNo: 1)
x.printTable(TableNo: 2)
print(x.searchStu(No: "20162534", TableNo: 1, ColNo: 3))

var str = "Hello, playground"
print(str)
