//
//  TapGesturebootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 20/05/22.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
	   VStack(spacing: 40) {
		  RoundedRectangle(cornerRadius: 25.0)
			 .frame(height: 200)
			 .foregroundColor(isSelected ? Color.orange : Color.red)
		  
		  // highlighted state
		  Button(action: {
			 isSelected.toggle()
		  }, label: {
			 Text("Button")
				.font(.headline)
				.foregroundColor(.white)
				.frame(height: 55)
				.frame(maxWidth: .infinity)
				.background(Color.blue)
				.cornerRadius(25)
		  })
		  
		  Text("TAP Gesture")
			 .font(.headline)
			 .foregroundColor(.white)
			 .frame(height: 55)
			 .frame(maxWidth: .infinity)
			 .background(Color.blue)
			 .cornerRadius(25)
		  	// no highlighted state
		  
//			 .onTapGesture {
//				isSelected.toggle()
//			 }
			 .onTapGesture(count: 2, perform: {
				isSelected.toggle()
			 })
		  
		  Spacer()
	   }
	   .padding()
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
