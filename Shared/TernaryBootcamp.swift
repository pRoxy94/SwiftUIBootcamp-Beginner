//
//  TernaryBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 12/05/22.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
	   VStack {
		  Button("Button: \(isStartingState.description)",
			    action: {
			 isStartingState.toggle()
		  })
		  
		  Text(isStartingState ? "Starting state" : "Ending state")
		  
		  RoundedRectangle(
			 // ternary operator
			 cornerRadius: isStartingState ? 25 : 0
		  )
			 .fill(isStartingState ? Color.red : Color.blue)
			 .frame(width: 200, height: 100)
		  
		  Spacer()
	   }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
	   TernaryBootcamp()
    }
}
