import SwiftUI

struct MainView: View {
    @State private var currentCaloriesIntake: Double = 900.0
    @State private var totalCaloriesIntake: Double = 1800.0
    var body: some View {
        TabView {
            //tab 飲食紀錄 start
            NavigationView{
                VStack {
                    Text("BMI: 25.0") // 顯示BMI值，請替換成實際的數值
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top,15)
                        .padding(.leading)
                    
                    Text("建議攝取大卡量: 1800") // 顯示建議攝取的大卡量，請替換成實際的數值
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top,15)
                        .padding(.leading)
                    
                    Text("目前大卡攝取量: \(String(format: "%.1f", currentCaloriesIntake))") // 顯示目前大卡攝取量
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top,15)
                        .padding(.leading)
                    
                    HStack{
                        ProgressView(value: Double(currentCaloriesIntake), total: Double(totalCaloriesIntake)) // 進度條
                            .accentColor(Color.green)
                            .scaleEffect(x: 1, y: 8)
                            .padding()
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .frame(width: 25.0, height: 25.0)
                                .foregroundColor(.black)
                                .padding()
                        }
                    }
                    
                    Spacer() // 將元素推到頂部
                }
                .navigationTitle("飲食紀錄")
            }
            .tabItem {
                Image(systemName: "doc.text.below.ecg")
                Text("飲食紀錄")
            }
            //tab 飲食紀錄 end
            //========================================
            //tab 添加數據 start
            NavigationView{
                VStack {
                    
                }
                .navigationTitle("添加數據")
            }
            .tabItem {
                Image(systemName: "doc.badge.plus")
                Text("添加數據")
            }
            //tab 添加數據 end
            //========================================
            //tab 運動紀錄 start
            NavigationView{
                VStack {
                    
                }
                .navigationTitle("運動紀錄")
            }
            .tabItem {
                Image(systemName: "figure.run")
                Text("運動紀錄")
            }
            //tab 運動紀錄 end
            //========================================
            //tab 個人資訊 start
            NavigationView{
                VStack {
                    
                }
                .navigationTitle("個人資訊")
            }
            .tabItem {
                Image(systemName: "person.circle.fill")
                Text("個人資訊")
            }
            //tab 個人資訊 end
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
