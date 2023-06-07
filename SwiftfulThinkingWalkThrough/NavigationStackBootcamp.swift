//
//  NavigationStackBootcamp.swift
//  SwiftfulThinkingWalkThrough
//
//  Created by Mitch Andrade on 6/7/23.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 40) {
                    ForEach(0..<10) { x in
                        NavigationLink(destination: {
                            
                        }, label: {
                            Text("Click me: \(x)")
                        })
                        .navigationTitle("Nav Bootcamp")
                    }
                }
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

struct NavigationStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootcamp()
    }
}
