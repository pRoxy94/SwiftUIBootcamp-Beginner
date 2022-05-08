//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Rossana Laricchia on 06/05/22.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
	   Text("Hello, world! This is the SwiftUI Bootcamp. \nThis is the SwiftUI Bootcamp. \nThis is the SwiftUI Bootcamp.  \nThis is the SwiftUI Bootcamp. \nThis is the SwiftUI Bootcamp.".uppercased().lowercased().capitalized)
	   
	   // .font(.title) effettua un resize automatico in base al device
	   
//		  .font(.title)
//		  .fontWeight(.semibold)
//		  .foregroundColor(Color.orange)
//		  .underline(true, color: Color.red)
//		  .strikethrough(true, color: Color.blue)
//		  .bold()
//		  .italic()
	   
	   // non effettua un resize automatico, 24 su tutti i device
//		  .font(
//			 .system(
//				size: 24,
//				weight: .semibold,
//				design: .monospaced
//			 )
//		  )
//		  .baselineOffset(-30.0)
//		  .kerning(10)
		  .multilineTextAlignment(.leading)
		  .foregroundColor(.blue)
		  .frame(width: 200, height: 100, alignment: .leading)
		  .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
