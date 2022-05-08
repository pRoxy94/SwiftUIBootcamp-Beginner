//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 08/05/22.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
	   VStack(alignment: .leading, spacing: 20) {
		  Text("Hello, World!")
			 .font(.largeTitle)
			 .fontWeight(.semibold)
		  
		  Text("This is the description of what we'll do on this screen. It is a multiple lines and we will align this text to the leading edge.")
	   }
	   .padding()
	   .background(
		  Color.white
			 .cornerRadius(10)
			 .shadow(
				color: Color.black.opacity(0.3),
				radius: 10,
				x: 0,
				y: 10
			 )
	   )
	   .padding(.horizontal, 15)
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
