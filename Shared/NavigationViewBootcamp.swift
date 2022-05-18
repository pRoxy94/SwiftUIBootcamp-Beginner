//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 17/05/22.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
	   NavigationView {
		  ScrollView {
			 
			 NavigationLink("Hello, world!",
						 destination: MyOtherScreen())
			 
			 Text("Hello, World!")
			 Text("Hello, World!")
			 Text("Hello, World!")
		  }
		  .navigationTitle("All Inboxes")
		  .navigationBarTitleDisplayMode(.automatic)
//		  .navigationBarHidden(true)
		  .navigationBarItems(
			 leading:
				HStack {
				    Image(systemName: "person.fill")
				    Image(systemName: "flame.fill")
				},
			 trailing:
				NavigationLink(destination: MyOtherScreen(), label: {
				    Image(systemName: "gear")
				})
				.accentColor(.red)
		  )
	   }
    }
}

struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
	   ZStack {
		  Color.green.ignoresSafeArea()
			 .navigationTitle("Green Screen!")
			 .navigationBarHidden(true)
		  VStack {
			 Button("BACK BUTTON") {
				presentationMode.wrappedValue.dismiss()
			 }
			 
			 NavigationLink("Click here", destination: Text("3rd Screen!"))
		  }
	   }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
