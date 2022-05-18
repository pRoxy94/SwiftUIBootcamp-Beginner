//
//  SheetsBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 12/05/22.
//

import SwiftUI

struct SheetsAndFullScreenCoversBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
	   ZStack {
		  Color.green
			 .ignoresSafeArea()
		  
		  Button(action: {
			 showSheet.toggle()
		  }, label: {
			 Text("Button")
				.foregroundColor(.green)
				.font(.headline)
				.padding(20)
				.background(Color.white.cornerRadius(10))
		  })
//		  .fullScreenCover(isPresented: $showSheet, content: {
//			 SecondScreen()
//		  })
		  .sheet(isPresented: $showSheet, content: {
			 SecondScreen()
		  })
	   }
    }
}

struct SecondScreen: View {
    
    // binding to the current presentation mode of the view associated with this environment
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
	   ZStack(alignment: .topLeading) {
		  Color.red
			 .ignoresSafeArea()
		  
		  Button(action: {
			 // dismiss sheet
			 presentationMode.wrappedValue.dismiss()
		  }, label: {
			 Image(systemName: "xmark")
				.foregroundColor(.white)
				.font(.headline)
				.padding(20)
		  })
	   }
    }
}

struct SheetsAndFullScreenCoversBootcamp_Previews: PreviewProvider {
    static var previews: some View {
	   SheetsAndFullScreenCoversBootcamp()
    }
}
