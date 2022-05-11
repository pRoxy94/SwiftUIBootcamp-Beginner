//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 11/05/22.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var bgColor: Color = Color.pink
    
    var body: some View {
	   ZStack {
		  //background
		  bgColor.ignoresSafeArea()
		  
		  //content
		  contentLayer
	   }
    }
    
    var contentLayer: some View {
	   VStack {
		  Text("Title")
			 .font(.largeTitle)
		  
		  Button(action: {
			 buttonPressed()
		  }, label: {
			 Text("PRESS ME")
				.font(.headline)
				.foregroundColor(.white)
				.padding()
				.background(Color.black)
				.cornerRadius(10)
		  })
	   }
    }
    
    func buttonPressed() {
	   bgColor = .yellow
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
