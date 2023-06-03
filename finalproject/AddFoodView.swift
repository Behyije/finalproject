import SwiftUI

struct AddFoodView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var name: String = ""
    @State private var calories: Double?
    @State private var quantity: Int = 1
    @State private var currentTime = Date()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("名稱")
                        .padding([.top, .leading, .bottom])
                    
                    TextField("輸入食物名稱", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding([.top, .trailing, .bottom])
                }
                
                HStack {
                    Text("熱量")
                        .padding([.top, .leading, .bottom])
                    
                    TextField("輸入食物的熱量", value: $calories, format: .number)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding([.top, .trailing, .bottom])
                }
                
                HStack {
                    Text("數量")
                        .padding()
                    Spacer()
                    Button(action: {
                        if quantity > 1 {
                            quantity -= 1
                        }
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .font(.title3)
                            .foregroundColor(.black)
                    }
                    
                    Text("\(quantity)")
                        .font(.title3)
                        .padding()
                    
                    Button(action: {
                        quantity += 1
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .font(.title3)
                            .foregroundColor(.black)
                    }
                    .padding(.trailing)
                }
                
                DatePicker("日期",selection: $currentTime)
                    .padding()
                Spacer()
            }
        }
        .navigationBarTitle("新增用餐紀錄")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(
            leading: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("取消")
            },
            trailing: Button(action: {
                // 儲存按鈕的動作
            }) {
                Text("儲存")
            }
        )
    }
}

struct AddFoodView_Previews: PreviewProvider {
    static var previews: some View {
        AddFoodView()
    }
}
