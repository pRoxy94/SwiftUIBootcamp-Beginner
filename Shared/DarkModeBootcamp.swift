//
//  DarkModeBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 19/05/22.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
	   NavigationView {
		  ScrollView {
			 VStack(spacing: 20) {
				Text("This text is PRIMARY")
				    .foregroundColor(.primary)
				Text("This color is SECONDARY")
				    .foregroundColor(.secondary)
				Text("This color is BLACK")
				    .foregroundColor(.black)
				Text("This color is WHITE")
				    .foregroundColor(.white)
				Text("This color is RED")
				    .foregroundColor(.red)
				Text("This color is globally adaptive!")
				    .foregroundColor(Color("AdaptiveColor"))
				Text("This color is locally adaptive!")
				    .foregroundColor(colorScheme == .light ? .green : .yellow)
			 }
		  }
		  .navigationTitle("Dark Mode Bootcamp")
	   }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
	   DarkModeBootcamp()
		  .preferredColorScheme(.light)
		  
    }
}
