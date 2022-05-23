//
//  PickerBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 18/05/22.
//

import SwiftUI

struct PickerBootcamp: View {

    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
	   "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
	   // From UIKit
	   UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.orange
	   
	   let attributes: [NSAttributedString.Key:Any] = [
		  .foregroundColor: UIColor.white
	   ]
	   
	   UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
	   
	   Picker(
		  selection: $selection,
		  content: {
			 ForEach(filterOptions.indices) { index in
				Text(filterOptions[index])
				    .tag(filterOptions[index])
			 }
		  },
		  label: {
			 Text("Picker")
		  })
	   .pickerStyle(SegmentedPickerStyle())
	   
//	   Menu(content: {
//		  Picker(
//			 selection: $selection,
//			 content: {
//				ForEach(filterOptions, id: \.self) { option in
//				    HStack {
//					   Text(option)
//					   Image(systemName: "heart.fill")
//				    }
//				    .tag(option)
//				}
//			 }, label: {
//		  })
//	   }, label: {
//		  HStack {
//			 Text("Filter:")
//			 Text(selection)
//		  }
//		  .font(.headline)
//		  .foregroundColor(.white)
//		  .padding()
//		  .padding(.horizontal)
//		  .background(Color.blue)
//		  .cornerRadius(10)
//		  .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
//	   })
	   
//	   VStack {
//		  HStack {
//			 Text("Age:")
//			 Text(selection)
//		  }
//
//		  Picker(
//			 selection: $selection,
//			 content: {
//				ForEach(18..<100, content: { number in
//				    Text("\(number)")
//					   .font(.headline)
//					   .foregroundColor(.orange)
//					   .tag("\(number)")
//				})
//			 }, label: {
//				Text("Picker")
//		  })
//		  .pickerStyle(WheelPickerStyle())
//	   }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
