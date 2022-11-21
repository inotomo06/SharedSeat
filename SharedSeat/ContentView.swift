//
//  ContentView.swift
//  SharedSeat
//
//  Created by cmStudent on 2022/09/27.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowActivitySheet = false
    
    var body: some View {
        
        VStack {
            Button {
                //                openPrinterDialog()
                isShowActivitySheet.toggle()
            } label: {
                Text("チンアナゴ〜")
            }
            .sheet(isPresented: $isShowActivitySheet) {
                ActivityView(image: UIImage(imageLiteralResourceName: "Shellingford"))
            }
        }
    }
    
    // プリンター
    func openPrinterDialog() {
        let printInteractionController = UIPrintInteractionController.shared
        // 印刷したいUIImageを指定する
        printInteractionController.printingItem = UIImage()
        
        // プリントジョブを設定する
        let printInfo = UIPrintInfo(dictionary: nil)
        printInfo.jobName = "job name" // デフォルトはアプリ名
        printInfo.orientation = .portrait // printingItem または printingItems がある場合はここでの指定が無視されて自動的に決まる。
        printInteractionController.printInfo = printInfo
        
        printInteractionController.present(animated: true, completionHandler: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
