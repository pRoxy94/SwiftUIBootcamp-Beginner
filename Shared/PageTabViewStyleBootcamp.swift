//
//  PageTabViewStyleBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 19/05/22.
//

import SwiftUI

struct PageTabViewStyleBootcamp: View {
    
    let icons: [String] = [
	   "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
	   TabView {
		  ForEach(icons, id: \.self) { icon in
			 Image(systemName: icon)
				.resizable()
				.scaledToFit()
				.padding(30)
		  }
		  .background(
			 RadialGradient(
				gradient:
				    Gradient(colors: [Color.red, Color.blue]),
				center: .center,
				startRadius: 5,
				endRadius: 300)
		  )
//		  RoundedRectangle(cornerRadius: 25)
//			 .foregroundColor(.red)
//		  RoundedRectangle(cornerRadius: 25)
//			 .foregroundColor(.orange)
//		  RoundedRectangle(cornerRadius: 25)
//			 .foregroundColor(.yellow)
	   }
	   .frame(height: 500)
	   .tabViewStyle(PageTabViewStyle())
    }
}

struct PageTabViewStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PageTabViewStyleBootcamp()
    }
}
