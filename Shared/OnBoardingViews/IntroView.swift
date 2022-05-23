//
//  IntroView.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 21/05/22.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
	   ZStack {
		  RadialGradient(
			 gradient: Gradient(colors: [Color.purple, Color.blue]),
			 center: .topLeading,
			 startRadius: 10,
			 endRadius: UIScreen.main.bounds.height
		  )
		  .ignoresSafeArea()
		  
		  if currentUserSignedIn {
			 ProfileView()
				.transition(
				    .asymmetric(insertion: .move(edge: .bottom),
							 removal: .move(edge: .top)))
		  } else {
			 OnboardingView()
		  }
	   }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
