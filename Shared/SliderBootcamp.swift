//
//  SliderBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 19/05/22.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    
    var body: some View {
	   VStack {
		  FirstSlider()
		  SecondSlider()
		  ThirdSlider()
		  FourthSlider()
	   }
    }
}

struct FirstSlider: View {
    
    @State var sliderValue: Double = 3
    
    var body: some View {
	   VStack {
		  Text("Rating:")
		  Text("\(sliderValue)")
		  Slider(value: $sliderValue)
			 .padding()
			 .tint(.orange)
	   }
    }
}

struct SecondSlider: View {
    @State var sliderValue: Double = 30
    var body: some View {
	   VStack {
		  Text("Rating:")
		  Text("\(sliderValue)")
		  Slider(value: $sliderValue, in: 0...30)
			 .padding()
			 .tint(.orange)
	   }
    }
}

struct ThirdSlider: View {
    @State var sliderValue: Double = 30
    var body: some View {
	   VStack {
		  Text("Rating:")
		  Text(
			 String(format: "%.2f", sliderValue)
//			 "\(sliderValue)"
		  )
		  Slider(value: $sliderValue, in: 1...5, step: 0.5)
			 .padding()
			 .tint(.orange)
	   }
    }
}

struct FourthSlider: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    var body: some View {
	   VStack {
		  Text("Rating:")
		  Text(
			 String(format: "%.0f", sliderValue)
//			 "\(sliderValue)"
		  )
		  .foregroundColor(color)
		  Slider(
			 value: $sliderValue,
			 in: 1...5,
			 step: 1.0,
			 label: {
				Text("Title")
			 },
			 minimumValueLabel: {
				Text("1")
				    .font(.headline)
			 },
			 maximumValueLabel: {
				Text("5")
				    .font(.headline)
			 },
			 onEditingChanged: { _ in
				color = .green
			 })
		  .padding()
		  .tint(.orange)
	   }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
