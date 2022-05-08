//
//  GradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 06/05/22.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
	   VStack {
		  LinearGradientBootcamp()
		  RadialGradientBootcamp()
		  AngularGradientBootcamp()
	   }
    }
}

struct LinearGradientBootcamp: View {
    var body: some View {
	   RoundedRectangle(cornerRadius: 25)
		  .fill(
			 LinearGradient(
				gradient: Gradient(
				    colors: [Color.red, Color.blue]
				),
				startPoint: .topLeading,
				endPoint: .bottom)
		  )
		  .frame(width: 300, height: 200)
    }
}

struct RadialGradientBootcamp: View {
    var body: some View {
	   RoundedRectangle(cornerRadius: 25)
		  .fill(
			 RadialGradient(
				gradient: Gradient(colors: [Color.red, Color.blue]),
				center: .topLeading,
				startRadius: 5,
				endRadius: 200)
		  )
		  .frame(width: 300, height: 200)
    }
}

struct AngularGradientBootcamp: View {
    var body: some View {
	   RoundedRectangle(cornerRadius: 25)
		  .fill(
			 AngularGradient(
				gradient: Gradient(colors: [Color.red, Color.blue]),
				center: .center,
				angle: .degrees(90 + 45)
			 )
		  )
		  .frame(width: 300, height: 200)
    }
}


struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
