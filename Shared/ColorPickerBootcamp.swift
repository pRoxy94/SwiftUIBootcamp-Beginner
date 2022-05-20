//
//  ColorPickerBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 18/05/22.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var bgColor: Color = .green
    
    var body: some View {
	   ZStack {
		  bgColor.ignoresSafeArea()
		  
		  ColorPicker(
			 "Select a color",
			 selection: $bgColor,
			 supportsOpacity: true
		  )
		  .padding()
		  .background(Color.black)
		  .cornerRadius(10)
		  .foregroundColor(.white)
		  .font(.headline)
		  .padding(50)
	   }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
