//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 06/05/22.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
	   CircleShape()
	   EllipseShape()
	   CapsuleShape()
	   RectangleShape()
    }
}

struct CircleShape: View {
    var body: some View {
	   /**
	    Circle Shape
	    */
	   Circle()
//			 .fill(.red)
//			 .foregroundColor(.pink)
//			 .stroke()
//			 .stroke(Color.blue)
//			 .stroke(Color.pink, lineWidth: 10)
			 .stroke(
				Color.orange,
				style: StrokeStyle(
				    lineWidth: 10, lineCap: .round, dash: [30]
				)
			 )
			 .frame(width: .infinity).padding()
//			 .trim(from: 0.2, to: 1.0)
//			 .stroke(Color.purple, lineWidth: 2)
    }
}

struct EllipseShape: View {
    var body: some View {
	   /**
	    Ellipse Shape: same modifier of Circle()
	    */
	   
	   Ellipse()
		  .stroke(
			 Color.orange,
			 style: StrokeStyle(
				lineWidth: 20, lineCap: .round, dash: [30]
			 )
		  )
//		  .stroke(Color.purple, lineWidth: 20)
		  .frame(width: 200, height: 100)
    }
}

struct CapsuleShape: View {
    var body: some View {
	   /**
	    Capsule Shape: same modifier
	    */
	   
	   Capsule(style: .circular) //.continuous
		  .fill(Color.green)
//		  .stroke(Color.purple, lineWidth: 20)
		  .frame(width: 200, height: 100)
    }
}

struct RectangleShape: View {
    var body: some View {
	   /**
	    Rectangle and RoundedRectangle Shape: same modifier
	    */
	   VStack {
		  Rectangle()
			 .fill(Color.blue)
			 .frame(width: 200, height: 100)
		  
		  RoundedRectangle(cornerRadius: 30)
			 .trim(from: 0.4, to: 1.0)
			 .stroke(Color.blue, lineWidth: 3)
			 .frame(width: 300, height: 200)
	   }
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
