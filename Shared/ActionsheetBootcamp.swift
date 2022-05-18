//
//  ActionsheetBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 18/05/22.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOption = .isOtherPost
    
    enum ActionSheetOption {
	   case isMyPost
	   case isOtherPost
    }
    
    var body: some View {
//	   Button("Click me") {
//		  showActionSheet.toggle()
//	   }
	   VStack {
		  HStack {
			 Circle()
				.frame(width: 30, height: 30)
			 Text("@username")
			 Spacer()
			 Button(action: {
				actionSheetOption = .isMyPost
				showActionSheet.toggle()
			 }, label: {
				Image(systemName: "ellipsis")
			 })
			 .tint(.primary)
		  }
		  .padding(.horizontal)
		  
		  Rectangle()
			 .aspectRatio(1.0, contentMode: .fit)
	   }
	   .actionSheet(
		  isPresented: $showActionSheet,
		  content: getActionSheet
	   )
    }
    
    func getActionSheet() -> ActionSheet {
	   
	   let shareButton: ActionSheet.Button = .default(Text("Share")) {
		  // add code to share this post
	   }
	   
	   let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
		  // add code to report this post
	   }
	   
	   let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
		  // add code to delete this post
	   }
	   
	   let cancelButton: ActionSheet.Button = .cancel()
	   
	   let title = Text("What would u lieke to do?")
	   
	   switch actionSheetOption {
		  case .isMyPost:
			 return ActionSheet(
				title: title,
				message: nil,
				buttons: [shareButton, reportButton, deleteButton, cancelButton]
			 )
		  case .isOtherPost:
			 return ActionSheet(
				title: title, message: nil,
				buttons: [shareButton, reportButton, cancelButton]
			 )
	   }
	   
//	   return ActionSheet(title: Text("This is the title!"))
	   
//	   let bt1: ActionSheet.Button = .default(Text("DEFAULT"))
//	   let bt2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
//	   let bt3: ActionSheet.Button = .cancel()
//
//	   return ActionSheet(
//		  title: Text("This is the title!"),
//		  message: Text("this is the message."),
//		  buttons: [bt1, bt2, bt3]
//	   )
    }
}

struct ActionsheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionsheetBootcamp()
    }
}
