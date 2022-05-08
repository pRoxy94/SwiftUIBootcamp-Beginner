//
//  StateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 08/05/22.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var bgColor: Color = Color.green
    @State var title: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
	   ZStack {
		  // background
		  bgColor
			 .ignoresSafeArea()
		  
		  VStack(spacing: 20) {
			 Text(title)
				.font(.title)
			 
			 Text("Count: \(count)")
				.font(.headline)
				.underline()
			 
			 HStack {
				Button("BUTTON 1") {
				    bgColor = .red
				    title = "Button 1 was pressed"
				    count += 1
				}
				
				Button("BUTTON 2") {
				    bgColor = .purple
				    title = "Button 2 was pressed"
				    count -= 1
				}
			 }
		  }
		  .foregroundColor(.white)
	   }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
