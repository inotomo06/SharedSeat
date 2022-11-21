//
//  ActivityView.swift
//  SharedSeat
//
//  Created by cmStudent on 2022/09/27.
//

import Foundation
import SwiftUI

struct ActivityView: UIViewControllerRepresentable {
    @State var image: UIImage
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityView>) -> UIActivityViewController {
        
        let activityItems: [Any] = [image]
        let applicationActivities: [UIActivity]? = nil
        
        let controller = UIActivityViewController(activityItems: activityItems,
                                                  applicationActivities: applicationActivities)
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController,
                                context: UIViewControllerRepresentableContext<ActivityView>) {
        
    }
}
