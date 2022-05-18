//
//  TextFieldBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 18/05/22.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
	   NavigationView {
		  VStack {
			 TextField("Type something here...", text: $textFieldText)
	   //		  .textFieldStyle(RoundedBorderTextFieldStyle())
				.padding()
				.background(Color.gray.opacity(0.3)).cornerRadius(10)
				.foregroundColor(.red)
			 .font(.headline)
			 
			 Button(action: {
				if validateText() {
				    saveText()
				}
			 }, label: {
				Text("Save".uppercased())
				    .padding()
				    .frame(maxWidth: .infinity)
				    .background(validateText() ? Color.blue : Color.gray)
				    .cornerRadius(10)
				    .foregroundColor(.white)
			 })
			 .disabled(!validateText())
			 
			 ForEach(dataArray, id: \.self) { data in
				Text(data)
			 }
			 
			 Spacer()
		  }
		  .padding()
		  .navigationTitle("TextField Bootcamp")
	   }
    }
    
    func validateText() -> Bool {
	   if textFieldText.count >= 3 {
		  return true
	   }
	   return false
    }
    
    func saveText() {
	   dataArray.append(textFieldText)
	   textFieldText = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
