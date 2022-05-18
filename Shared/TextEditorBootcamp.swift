//
//  TextEditorBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 18/05/22.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var text: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
	   NavigationView {
		  VStack {
			 TextEditor(text: $text)
				.frame(height: 300)
				.cornerRadius(10)
				.colorMultiply(.gray.opacity(0.6))
			 Button(action: {
				savedText = text
			 }, label: {
				Text("Save".uppercased())
				    .font(.headline)
				    .foregroundColor(.white)
				    .padding()
				    .frame(maxWidth: .infinity)
				    .background(Color.blue)
				    .cornerRadius(10)
			 })
			 
			 Text(savedText)
			 
			 Spacer()
		  }
		  .padding()
//		  .background(Color.orange)
		  .navigationTitle("TextEditor Bootcamp")
	   }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
