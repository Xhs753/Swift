func bingger(a: Int, b: Int) -> Int {
    if a > b {
        return a 
    } else {
        return b 
    }
}



//泛型实例↓（顾名思义就是指广泛使用的类型）
func bingger2<T: Comparable>(a: T, b: T) -> T {  //这里的T就是指一个通用的类型，但在这里因为没有定义T的类型所以现在T只是一个占位符谁也不知道是什那么东西
//所以现在我们需要在bingger函数后面加上一个尖括号<>用来说明T的类型，并再见括号中添加说明：<T: Comparable>这里的comparable的意思是可比较的意思
//也就是说规定T为COMPARABLE类型也就是可比较类型后就可以使bigger函数后面的括号内的a与b进行比较了
//笔记： ->为输出的意思
    if a > b {
        return a 
    } else {
        return b 
    }
}












let num = bingger(a: 10, b: 20)//规定一个常量num比较a和b的数值大小
let dad = bingger2(a: "a", b:"b")//规定一个常量dad比较a和b的排列顺序

print(num)
print(dad)
