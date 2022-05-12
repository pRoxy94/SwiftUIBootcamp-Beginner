//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 11/05/22.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var bgColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
	   ZStack {
		  bgColor.ignoresSafeArea()
		  VStack {
			 Text(title)
				.foregroundColor(.white)
			 
			 ButtonView(bgColor: $bgColor, title: $title)
		  }
	   }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

struct ButtonView: View {
    
    // connect variables from one screen to another
    @Binding var bgColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    
    var body: some View {
	   Button(action: {
		  bgColor = Color.orange
		  buttonColor = Color.pink
		  title = "New title"
	   }, label: {
		  Text("Button")
			 .foregroundColor(.white)
			 .padding()
			 .padding(.horizontal)
			 .background(buttonColor)
			 .cornerRadius(10)
	   })
    }
}
