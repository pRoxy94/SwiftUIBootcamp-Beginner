//
//  TabViewBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 13/05/22.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State var selectedTab: Int = 0
    
    var body: some View {
	   TabView(selection: $selectedTab) {
		  SoulView(selectedTab: $selectedTab)
			 .tabItem {
				Image(systemName: "house.fill")
				Text("Soul")
			 }
			 .tag(0)
		  
		  Text("Tribe")
			 .tabItem {
				Image(systemName: "globe")
				Text("Tribe")
			 }
			 .tag(1)
		  
		  Text("Vibe")
			 .tabItem {
				Image(systemName: "heart.fill")
				Text("Vibe")
			 }
			 .tag(2)
		  
		  Text("Profile")
			 .tabItem {
				Image(systemName: "person.fill")
				Text("Profile")
			 }
			 .tag(3)
	   }
	   .accentColor(.gray)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct SoulView: View {
    
    @Binding var selectedTab: Int
    var body: some View {
	   ZStack {
		  Color.orange.ignoresSafeArea()
		  
		  VStack {
			 Text("Soul Tab")
				.foregroundColor(.white)
			 .font(.largeTitle)
			 
			 Button(action: {
				selectedTab = 3
			 }, label: {
				Text("Go To Profile")
				    .font(.headline)
				    .padding()
				    .background(Color.white)
				    .cornerRadius(20)
			 })
		  }
	   }
    }
}
