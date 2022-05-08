//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 08/05/22.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
	   
	   ScrollView {
		  VStack {
			 Text("Title goes here")
				.font(.largeTitle)
				.frame(maxWidth: .infinity, alignment: .leading)
			 
			 ForEach(0..<10) { index in
				RoundedRectangle(cornerRadius: 25)
				    .fill(Color.white)
				    .frame(height: 150)
				    .shadow(radius: 10)
				    .padding(20)
			 }
		  }
	   }
	   // background just by default ignoring the safe area
	   .background(
		  Color.red
			 .edgesIgnoringSafeArea(.all) // deprecated
			 .ignoresSafeArea(.all)
	   )
	   
	   
//	   ZStack {
//		  // background
//		  Color.blue.edgesIgnoringSafeArea(.all)
//
//
//		  // foreground
//		  VStack {
//			 Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//			 Spacer()
//		  }
//		  .frame(maxWidth: .infinity, maxHeight: .infinity)
//		  // background just by default ignoring the safe area
////		  .background(Color.red)
//	   }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
