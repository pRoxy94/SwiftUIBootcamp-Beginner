//
//  ScrollViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 08/05/22.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
	   ScrollView(.vertical, showsIndicators: true) {
		  LazyVStack {
			 ForEach(0..<100) { index in
				ScrollView(.horizontal, showsIndicators: false) {
				    LazyHStack {
					   ForEach(0..<200) { index in
						  RoundedRectangle(cornerRadius: 25)
							 .fill(Color.white)
							 .frame(width: 200, height: 150)
							 .shadow(radius: 10)
							 .padding()
					   }
				    }
				}
			 }
		  }
	   }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
