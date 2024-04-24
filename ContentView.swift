import SwiftUI

struct ContentView: View {
    @State var Q1: Double = 0
    @State var Q2: Double = 0
    @State var Dgrade: Double = 0
    @State var Output: Double = 0
    @State var String: String = ""

    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.blue)
            
            VStack {
                Text("FINAL GRADE CALCULATOR") 
                    .font(.largeTitle)
                Divider()
                Spacer()
                HStack{
                    Text("Q1 Grade:   ")
                    TextField("", value: $Q1, formatter: NumberFormatter())
                    Text("Q2 Grade  ")
                    TextField("", value: $Q2, formatter: NumberFormatter())
                    Text("Desired Grade")
                    TextField("", value: $Dgrade, formatter: NumberFormatter())
                    Button(action: {
                        let A = Q1 * 0.4 + Q2 * 0.4 
                        let B = Dgrade - A 
                        Output = B
                        let C = Output / 0.2 
                        Output = C
                    }, label: {
                        Text("Answer")
                            .foregroundColor(.white)
                    })
                   
                }
                HStack{
                    VStack{
                        Text("\(Output)")
                        
                    }
                }
                Spacer() 
                
            }
            
        }
    }
    
        
}
