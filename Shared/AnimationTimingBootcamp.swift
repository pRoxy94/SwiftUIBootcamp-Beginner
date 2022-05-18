//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 12/05/22.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    
    var body: some View {
	   VStack {
		  Button("Button") {
			 isAnimating.toggle()
		  }
		  
		  RoundedRectangle(cornerRadius: 20)
			 .frame(width: isAnimating ? 350 : 50, height: 100)
		  // linear: same speed from start to end
//			 .animation(Animation.linear(duration: timing))
//			 .animation(.spring())
		  
			 .animation(.spring(
				response: 0.5,	// duration that we had in our original
				dampingFraction: 0.7, // how much we want to bounce back on the sprint
				blendDuration: 1.0)
			 )

		  // easeIn: slow and fast
		  RoundedRectangle(cornerRadius: 20)
			 .frame(width: isAnimating ? 350 : 50, height: 100)
			 .animation(Animation.easeIn(duration: timing))

		  // easeInOut: slow fast slow
		  RoundedRectangle(cornerRadius: 20)
			 .frame(width: isAnimating ? 350 : 50, height: 100)
			 .animation(Animation.easeInOut(duration: timing))


		  // easeOut: fast and slow
		  RoundedRectangle(cornerRadius: 20)
			 .frame(width: isAnimating ? 350 : 50, height: 100)
			 .animation(Animation.easeOut(duration: timing))
		  
	   }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
