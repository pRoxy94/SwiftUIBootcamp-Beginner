//
//  LetGuardBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 20/05/22.
//

import SwiftUI

struct LetGuardBootcamp: View {
    
    @State var currentUserID: String? = "testUser223"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
	   NavigationView {
		  VStack {
			 Text("Here we are practicing safe coding!")
			 
			 // if text is not nil
			 if let text = displayText {
				Text(text)
				    .font(.title)
			 }
			 
			 // DO NOT USER ! EVER
			 // DO NOT FORCE UNWRAP VALUES
//			 Text(displayText!)
//				.font(.title)
			 
			 if isLoading {
				ProgressView()
			 }

			 Spacer()
		  }
		  .navigationTitle("Safe Coding")
		  .onAppear {
			 loadData2()
		  }
	   }
    }
    
    // MARK: - Functions
    
    func loadData() {
	   // if there is a userID
	   if let userID = currentUserID {
		  isLoading = true
		  DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
			 displayText = "This is the new data! User id is: \(userID)"
			 isLoading = false
		  }
	   } else {
		  displayText = "Error. There is no user ID!"
	   }
    }
    
    func loadData2() {
	   // if there isn't a userID
	   guard let userID = currentUserID else {
		  displayText = "Error. There is no user ID!"
		  return
	   }
	   
	   isLoading = true
	   DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
		  displayText = "This is the new data! User id is: \(userID)"
		  isLoading = false
	   }
    }
}

struct LetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LetGuardBootcamp()
    }
}
