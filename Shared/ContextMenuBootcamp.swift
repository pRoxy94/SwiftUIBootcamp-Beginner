//
//  ContextMenuBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 18/05/22.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var bgColor: Color = Color.blue
    
    var body: some View {
	   VStack(alignment: .leading, spacing: 10.0) {
		  Image(systemName: "house.fill")
			 .font(.title)
		  Text("Swiftful Thinking")
			 .font(.headline)
		  Text("how to use Context Menu")
			 .font(.subheadline)
	   }
	   .padding(30)
	   .foregroundColor(.white)
	   .background(bgColor).cornerRadius(30)
	   .contextMenu(menuItems: {
		  Button(action: {
			 bgColor = .yellow
		  }, label: {
			 // similar to HStack with text and image
			 Label("Button 1", systemImage: "flame.fill")
		  })
		  
		  Button(action: {
			 bgColor = .red
		  }, label: {
			 Text("Button 2")
		  })
		  
		  Button(action: {
			 bgColor = .green
		  }, label: {
			 HStack {
				Text("Button 3")
				Image(systemName: "heart.fill")
			 }
		  })
	   })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
