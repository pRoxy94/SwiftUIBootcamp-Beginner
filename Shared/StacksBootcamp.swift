//
//  StacksBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 08/05/22.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
	   // VStack -> Vertical
	   // HStack -> Horizontal
	   // ZStack -> zIndex (back to front)
	   ZStack(alignment: .top) {
		  Rectangle()
			 .fill(Color.yellow)
			 .frame(width: 350, height: 500, alignment: .center)
		  
		  VStack(alignment: .leading) {
			 Rectangle()
				.fill(Color.red)
				.frame(width: 150, height: 150)
			 Rectangle()
				.fill(Color.green)
				.frame(width: 100, height: 100)
			 
			 HStack(alignment: .bottom) {
				Rectangle()
				    .fill(Color.purple)
				    .frame(width: 50, height: 50)
				Rectangle()
				    .fill(Color.pink)
				    .frame(width: 75, height: 75)
				Rectangle()
				    .fill(Color.blue)
				    .frame(width: 45, height: 45)
			 }
			 .background(Color.white)
		  }
		  .background(Color.black)
	   }
	   
	   VStack(alignment: .center, spacing: 20) {
		  Text("5")
			 .font(.largeTitle)
			 .underline()
		  
		  Text("items in your cart")
			 .font(.caption)
			 .foregroundColor(.gray)
	   }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
