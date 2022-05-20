//
//  DocumentationBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 19/05/22.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    @State var data: [String] = ["Apples", "Oranges", "Bananas"]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    var body: some View {
	   NavigationView { // START: NAV
		  ZStack {
			 // background
			 Color.red.ignoresSafeArea()
			 
			 //foreground
			 fgLayer
			 
			 .navigationTitle("Documentation")
			 // navigationBarItems deprecated
			 .toolbar(content: {
				Button("ALERT", action: {
				    showAlert.toggle()
				})
			 })
		  }
	   }	// END: NAV
	   .alert(isPresented: $showAlert, content: {
		  getAlert(text: "This is the alert!")
	   })
    }
    
    /// This is the foregroung layer that holds a scrollView.
    private var fgLayer: some View {
	   ScrollView {	// START: SCROLLV
		  Text("Hello!")
		  ForEach(data, id: \.self) { name in
			 Text(name)
				.font(.headline)
		  }
	   }	// END: SCROLLV
    }
    
    // Things to do:
    /*
	bkla
	blkab
	blaborbk
	blkborkbea
	boakboakbraob
	baaijijbiaejbrijbi
	baeijbiaebierjbi
	
	cmd + opt + <- / -> to show and hide comments
	*/
    
    // MARK: FUNCTIONS
    
    
    /// Gets an alert with a specified title.
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message.
    ///
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
	   return Alert(title: Text(text))
    }
}

// MARK: PREVIEW
struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
