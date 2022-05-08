//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 06/05/22.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
		  .resizable()
//		  .aspectRatio(contentMode: .fit) // aspectRatio or scaledToFit
		  .scaledToFit()
//		  .scaledToFill()
//		  .font(.largeTitle)
//		  .font(.system(size: 100))
		  .foregroundColor(.orange)
		  .frame(width: 200, height: 200)
//		  .clipped()	// se usi scaledToFill e vuoi limitarlo al frame
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
