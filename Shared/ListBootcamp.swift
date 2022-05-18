//
//  ListBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 17/05/22.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
	   "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
	   "tomato", "potato", "carrot"
    ]
    
    var body: some View {
	   NavigationView {
		  List{
			 Section(
				header:
				    HStack {
					   Text("Fruits")
					   Image(systemName: "flame.fill")
				    }
				    .font(.headline)
				    .foregroundColor(Color.orange),
				content: {
				    ForEach(fruits, id: \.self) { fruit in
					   Text(fruit.capitalized)
				    }
				    .onDelete(perform: delete)
				    .onMove(perform: move)
				    .listRowBackground(Color.gray)
				})
			 
			 Section(header: Text("Veggies")) {
				ForEach(veggies, id: \.self) { veggie in
				    Text(veggie.capitalized)
				}
			 }
		  }
//		  .listStyle(InsetGroupedListStyle())
		  .navigationTitle("Grocery List")
		  // change with .toolbar
		  .navigationBarItems(
			 leading: EditButton(),
			 trailing: addButton
		  )
	   }
	   .accentColor(Color.orange)
    }
    
    var addButton: some View {
	   Button("Add", action: {
		  add()
	   })
    }
    
    func delete(indexSet: IndexSet) {
	   fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
	   fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
	   fruits.append("Coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
	   ListBootcamp()
    }
}
