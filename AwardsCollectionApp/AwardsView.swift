//
//  AwardsView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct AwardsView: View {
    private let columns = [GridItem(.adaptive(minimum: 160))]

    var body: some View {
        NavigationView {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        GradientRectangles()
                            .frame(width: 200, height: 200)
                        PathView()
                            .frame(width: 200, height: 200)
                        CurvesView()
                            .frame(width: 200, height: 200)
                        CharmedView()
                            .frame(width: 200, height: 200)
                    }
                }
            .navigationBarTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
