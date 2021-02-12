class student{
    private var name:String = ""//定义一个文本类型“string”的名字name变量函数
    private var age:Int = -1//定义一个整数类型Int并减去1的年龄age变量函数
    private var score:Double = -1.0//使用浮点double（使用double可以使值代有小数点，使结果更加准确）定义一个带有小数点的分数score变量函数
    private var ispass:Bool = false

    public static let schoolName = "北京大学"//使用static定义一个通用的（public)学校名，注意：static的功能是规定一个范围内的变量，这里的意思是规定一个通用的学校名字为“北京大学”的范围内常量

    convenience init(){
        self.init(name:"unknow",age:0,score:0.0)
    }

    init(name:String,age:Int,score:Double){
        self.name = name
        self.age = age
        
        isPass(param:score)
    }

    private func isPass(param:Double){
        self.score = param
        if self.score > 60{
            self.ispass = true
        }else{
            self.ispass = false
        }
    }

    public func setScore(score:Double){
        isPass(param:score)
    }

    public func getName() -> String{
        return self.name
    }

    public func getAge() -> Int{
        return self.age
    }

    public func getScore() -> Double{
        return self.score
    }

    public func getIsPass() -> Bool{
        return self.ispass
    }
}

// var array = [["name":"张三","age":17,"score":85.0],["name":"李四","age":17,"score":55.0]]

// for i in array{

//     print(type(of: i["score"]!))

// }

// print(array)

var s = student(name:"张三",age:17,score:55)

// s.setScore(score:80.5) 

print("大学: \(student.schoolName)")
print("姓名: \(s.getName())")
print("年龄: \(s.getAge())")
print("分数: \(s.getScore())")
print("是否通过: \(s.getIsPass())")

