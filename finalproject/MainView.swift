import SwiftUI

struct MainView: View {
    var body: some View {
        // 從 UserDefaults 中取出數據
        if let savedweight = UserDefaults.standard.value(forKey: "weight") as? Double {
            Text("Weight: \(String(format: "%.1f", savedweight))")
        } else {
            Text("No saved Weight found")
        }
        if let savedheight = UserDefaults.standard.value(forKey: "height") as? Double {
            Text("Height: \(String(format: "%.1f", savedheight))")
        } else {
            Text("No saved Height found")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
