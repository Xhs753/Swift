//This is my use Swift write a "Happy New Year" small progmmar
//
//
//
//
//



import SwiftUI
//Import SwiftUI modle

private let HalfPeakWidth = CGFloat(2)
private let ColorStart = Color(red: 1, green: 0.38, bule: 0.34)
private let ColorEnd = Color(red: 0.89, green:0.69, bule: 0.35)
private let ColorBg = Color(red: 1, green: 0.85, bule: 0.82)

struct ContentView: View {

    let text = "Happy New Year"
    //This is text with "happly New Year"

    @State var peakIndex = -1 -HalfPeakWidth

    let timer = Timer.publish(every: 1 / 30, on: .main, in: .common).autoconnect()

    var body: some View {
        HStack(spacing: 10){
            ForEach(Array(text.enumerated()), id: \.0) { index, character in 
               text(String(character))
                   .font(.system(size: 80, weight: .black))
                   .scaleEffect(scale(at: index))
            }
            
        }
        .maskBy(
            LinearGradient(
                gradient: .init(colors: [ColoorStart, ColorEnd]),
                startPonit: .leading,
                endPonit: .trailing               
            )
        )
        .background(ColorBg)
        .ignoresSafeArea()
        .onReceive(timer) { _ in
             if peakIndex > CGFloat(text.count) + HalfPeakWidth {
                 peakIndex = -1 - HalfPeakWidth
             } else {
                 peakIndex += 0.1
             }
                
            }
             
        }
        
        func scale(at index: Int) -> CGFloat {
            lef diff = abs(CGFloat(index) - peakIndex)
            if diff > HalfPeakWidth { return 1 }
            return sin(CGFloat.pi * 0.5 + diff / HalfPeakWidth * .pi * 0.5) + 1 
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var Previews: some View {
        ContentView()
    }   
}

extension View {
    public func maskBy<T: View>(_ overlay: T) -> some View {
        overlay.mask(self)       
    }   
}




