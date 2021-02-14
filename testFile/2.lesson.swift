var ads:Bool = true
var money:Int = 1000

if (ads == true && money <= 2000) {
    print("plesae pay for some money$")
} else {
    print("You is vip now!!!")
}
//上述代码的意思是：如果所设定的布尔型（Bool）变量函数ads为(true)正确，并且所设的money的整数值(Int)小于或等于2000时，那么就打印 “plesae pa for some money$"字样

//笔记：string为文本类型 //Bool为布尔类型也称flage类型（如网络用语：”我要立一个flage要完成某某一件事“）用于判断某两个值的真（ture)和假(false)
//笔记：var是变量关键字其值可以改变但也不能随意更改 //let是定量关键字也可以称之为常量关键字是一个一旦设置固定不变的量
//笔记：func是函数的意思用于设置一个函数体
//笔记：变量的类型可以省略不写（如：第一行代码和第二行代码后面的类型(Bool布尔类型和Int整数类型）但函数的类型必须要写出来（如第17行代码）


func Small(c: Int, a: Int) -> Int { //这里是设置一个名为Small函数并在其后面括号里添加参数c和a并将设置的参数类型设为整数类型Int；后面的箭头表示输出前面括号内参数的意思

    if a > c { //这行代码的意思是当所设的参数a大于c时，使用if（如果）语句判断：（当大于c时运行下一行代码）
    //上面程序的功能是比较a和c的数值大小
        return a//这行代码是返回a的值
    } else { //这里的意思是当上面所设定的规则（if a > c )中的a不大于c时执行下一行代码
        return c//意思：返回c的值
    }
}







let b = Small(c: 3, a: 4)//设置一个定量函数b，并且使b函数接收函数体Small所返回的值
print(b)//打印定量函数b的值
