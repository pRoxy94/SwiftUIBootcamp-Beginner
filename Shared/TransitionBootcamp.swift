//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 12/05/22.
//

import SwiftUI

/**
 Transitions can be used to animation an object on-to or off-of the screen.
 The transition only occurs when the object is being added or removed from the view hierarchy
 */
struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
	   ZStack(alignment: .bottom) {
		  VStack {
			 Button("BUTTON", action: {
				showView.toggle()
			 })
			 
			 Spacer()
		  }
		  
		  if showView {
			 RoundedRectangle(cornerRadius: 30)
				.frame(height: UIScreen.main.bounds.height * 0.5)
//				.transition(AnyTransition.scale.animation(.easeInOut))
//				.transition(.move(edge: .bottom))
//				.opacity(showView ? 1.0 : 0.0)
//				.animation(.spring())
				.transition(.asymmetric(
				    insertion: .move(edge: .leading),
				    removal: .move(edge: .bottom)//AnyTransition.scale.animation(.easeInOut)
				))
				.animation(.easeInOut)
		  }
	   }
	   .ignoresSafeArea(edges: .bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
