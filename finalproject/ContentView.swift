
import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    var body: some View {
        VStack(spacing: 25) {
            Text("歡迎使用")
                .font(.largeTitle)
                .bold()
            
            Image("health-care")
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80)
            
            Text("開始管理您的運動和飲食")
                .font(.headline)
            
            Button(action: {
                isPresented = true // 設置狀態為true，啟動頁面跳轉
            }) {
                Text("開始")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $isPresented) {
                            StartView()
                        }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
