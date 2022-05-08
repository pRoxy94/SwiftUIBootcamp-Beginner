//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 08/05/22.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
	   VStack {
		  BackgroundBootcamp()
		  Spacer().frame(height: 100)
		  OverlayBootcamp()
	   }
    }
}

struct BackgroundBootcamp: View {
    var body: some View {
	   Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
		  .background(
//			 Color.red
//			 LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
			 Circle()
				.fill(
				    LinearGradient(
					   gradient: Gradient(colors: [Color.red, Color.blue]),
					   startPoint: .leading,
					   endPoint: .trailing))
				.frame(width: 100, height: 100, alignment: .center)
		  )
	   /**
	    background -> to put a layers behind
	    */
		  .background(
			Circle()
			 .fill(
				LinearGradient(
				    gradient: Gradient(colors: [Color.blue, Color.red]),
				    startPoint: .leading,
				    endPoint: .trailing)
			 )
			 .frame(width: 120, height: 120, alignment: .center)
		  )
    }
}

struct OverlayBootcamp: View {
    var body: some View {

	   VStack {
		  OverlayCircleBootcamp()
		  Spacer().frame(height: 70)
		  OverlayRectangleBootcamp()
		  Spacer().frame(height: 70)
		  OverlayImageBootcamp()
	   }
    }
}

struct OverlayCircleBootcamp: View {
    var body: some View {
	   Circle()
		  .fill(Color.pink)
		  .frame(width: 100, height: 100)
	   /**
	    overlay: to put a layer in front
	    */
		  .overlay(
			 Text("1")
				.font(.largeTitle)
				.foregroundColor(.white)
		  )
		  .background(
			 Circle()
				.fill(Color.purple)
				.frame(width: 110, height: 110)
		  )
    }
}


struct OverlayRectangleBootcamp: View {
    var body: some View {
	   Rectangle()
		  .frame(width: 100, height: 100)
		  .overlay(
			Rectangle()
			 .fill(Color.blue)
			 .frame(width: 50, height: 50),
			alignment: .topLeading
			
		  )
		  .background(
			 Rectangle()
				.fill(Color.red)
				.frame(width: 150, height: 150),
			 alignment: .bottomTrailing
		  )
    }
}

struct OverlayImageBootcamp: View {
    var body: some View {
	   Image(systemName: "heart.fill")
		  .font(.system(size: 40))
		  .foregroundColor(Color.white)
		  .background(
		  	Circle()
			 .fill(
				LinearGradient(
				    gradient: Gradient(colors: [Color.blue, Color.purple]),
				    startPoint: .topLeading,
				    endPoint: .bottomTrailing)
			 )
			 .frame(width: 100, height: 100)
			 .shadow(color: .purple.opacity(0.5), radius: 10, x: 0, y: 10)
			 .overlay(
				Circle()
				    .fill(Color.blue)
				    .frame(width: 35, height: 35)
				    .overlay(
					   Text("5")
						  .font(.headline)
						  .foregroundColor(.white)
				    )
				    .shadow(color: .purple.opacity(0.5), radius: 10, x: 5, y: 5),
				alignment: .bottomTrailing
			 )
		  )
	   
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
