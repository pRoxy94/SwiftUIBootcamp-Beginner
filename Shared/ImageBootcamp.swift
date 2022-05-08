//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 08/05/22.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("apple")
//		  .renderingMode(.template)
		  .resizable()
		  .scaledToFit()
		  .frame(width: 400)
		  .clipShape(Circle())
//		  .foregroundColor(.orange)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
