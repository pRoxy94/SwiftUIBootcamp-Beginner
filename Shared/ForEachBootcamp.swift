//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 08/05/22.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone", "Hola"]
    let myString: String = "Hello"
    
    var body: some View {
	   VStack {
		  ForEach(data.indices) { index in
			 Text("\(data[index]): \(index)")
		  }
	   }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
