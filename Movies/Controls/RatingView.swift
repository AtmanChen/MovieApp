//
//  Rating.swift
//  Movies
//
//  Created by Anderson  on 2020/8/29.
//

import SwiftUI

struct RatingView: View {
  @Binding var rating: Int?
  var body: some View {
    HStack {
      ForEach(1...10, id: \.self) { index in
        Image(systemName: starImage(for: index))
          .foregroundColor(.yellow)
          .onTapGesture {
            self.rating = index
          }
      }
    }
  }
  private func starImage(for index: Int) -> String {
    if let rating = rating {
      return index <= rating ? "star.fill" : "star"
    }
    return "star"
  }
}



struct Rating_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      RatingView(rating: .constant(0))
        .previewLayout(.sizeThatFits)
      RatingView(rating: .constant(6))
        .previewLayout(.sizeThatFits)
        .colorScheme(.dark)
      RatingView(rating: .constant(10))
        .previewLayout(.sizeThatFits)
    }
  }
}
