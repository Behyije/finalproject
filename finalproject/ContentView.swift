 import SwiftUI

struct ContentView: View {
    
    @State var isNavPush = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                NavigationLink(isActive: $isNavPush) {
                    StartView()
                } label: {}
                
                Image("health-care")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100,height: 100)
                
                Button(action: {
                    isNavPush = true // 設置狀態為true，啟動頁面跳轉
                }) {
                    Text("開始")
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }

            }.navigationTitle("運動飲食App")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
