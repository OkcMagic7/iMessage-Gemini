//
//  ErrorView.swift
//  iMessageGemini
//
//  Created by Hunter Ward on 1/27/24.
//

import SwiftUI

struct ErrorView: View {
    var errorMessage: String

    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.triangle")
                .foregroundColor(.red)
                .font(.largeTitle)
            Text("Error")
                .font(.headline)
                .foregroundColor(.black)
            Text(errorMessage)
                .font(.body)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(errorMessage: "Something went wrong. Please try again.")
    }
}
