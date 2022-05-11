//
//  ExtractSubviewsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 11/05/22.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
	   ZStack {
		  Color.blue.ignoresSafeArea()
		  
		  // content
		  contentLayer
	   }
    }
    
    var contentLayer: some View {
	   HStack {
		  MyView(title: "Apples", count: 1, color: .red)
		  MyView(title: "Oranges", count: 2, color: .orange)
		  MyView(title: "Bananas", count: 4, color: .yellow)
	   }
    }
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyView: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
	   VStack {
		  Text("\(count)")
		  Text("\(title)")
	   }
	   .padding()
	   .background(color)
	   .cornerRadius(10)
    }
}
