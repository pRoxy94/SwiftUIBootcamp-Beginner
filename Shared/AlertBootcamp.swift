//
//  AlertBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 18/05/22.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String =  ""
//    @State var alertMessage: String =  ""
    @State var bgColor: Color = Color.yellow
    
    enum MyAlerts {
	   case success
	   case error
    }
    
    var body: some View {
	   ZStack {
		  bgColor.ignoresSafeArea()
		  
		  VStack {
			 Button("BUTTON 1") {
				alertType = .error
//				alertTitle = "Error uploading video"
//				alertMessage = "The video could not be uploaded."
				showAlert.toggle()
			 }
			 
			 Button("BUTTON 2") {
				alertType = .success
//				alertTitle = "Successfully uploaded video 🥳"
//				alertMessage = "Your video is now public!"
				showAlert.toggle()
			 }
		  }
		  .alert(isPresented: $showAlert, content: {
			 getAlert()
		  })
	   }
    }
    
    func getAlert() -> Alert {
	   
	   switch alertType {
		  case .error:
			 return Alert(
				title: Text("There was an error!"),
				message: Text("Here we will describe the error."),
				primaryButton: .destructive(Text("Delete"), action: {
				    bgColor = .red
				}),
				secondaryButton: .cancel()
			 )
		  case .success:
			 return Alert(title: Text("This was a success! 🥳"), message: nil, dismissButton: .default(Text("Ok"), action: {
				bgColor = .green
			 }))
		  default:
			 return Alert(title: Text("Error"))
	   }

//	   return Alert(
//		  title: Text(alertTitle),
//		  message: Text(alertMessage),
//		  dismissButton: .default(Text("Ok"))
//	   )
	   
	   //Alert(title: Text("There was an error!"))
//	   return Alert(
//		  title: Text("This is the title"),
//		  message: Text("Here we will describe the error"),
//		  primaryButton: .destructive(Text("Delete"), action: {
//			 bgColor = .red
//		  }),
//		  secondaryButton: .cancel())
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
