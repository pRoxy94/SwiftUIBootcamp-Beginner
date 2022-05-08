//
//  ColorsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 06/05/22.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
		  .fill(
//			 Color.primary
//			 Color(UIColor.secondarySystemBackground)
			 Color("CustomColor")
		  )
		  .frame(width: 300, height: 200)
//		  .shadow(radius: 10)
//		  .shadow(color: .orange, radius: 10, x: 0, y: 20)
		  .shadow(
			 color: Color("CustomColor").opacity(0.3),
			 radius: 10,
			 x: 0,
			 y: 20
		  )
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
	   ColorsBootcamp()
		  
		  
		  
    }
}
