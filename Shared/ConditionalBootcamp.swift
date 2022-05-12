//
//  ConditionalBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 12/05/22.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
	   VStack(spacing: 20) {
		  
		  Button("IS LOADING \(isLoading.description)", action: {
			 isLoading.toggle()
		  })
		  
		  if isLoading {
			 ProgressView()
		  }
		  
//		  Button("Circle Button: \(showCircle.description)", action: {
//			 showCircle.toggle()
//		  })
//
//		  Button("Rectangle Button: \(showRectangle.description)", action: {
//			 showRectangle.toggle()
//		  })
//
//		  if showCircle {
//			 Circle()
//				.frame(width: 100, height: 100)
//		  } else if showRectangle {
//			 Rectangle()
//				.frame(width: 100, height: 100)
//		  } else {
//			 RoundedRectangle(cornerRadius: 25)
//				.frame(width: 200, height: 100)
//		  }
//
//		  Spacer()
	   }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
