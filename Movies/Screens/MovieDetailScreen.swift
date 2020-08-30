//
//  MovieDetail.swift
//  Movies
//
//  Created by Anderson  on 2020/8/30.
//

import SwiftUI

struct MovieDetailScreen: View {
  let imdbId: String
  @ObservedObject var movieDetailViewModel = MovieDetailViewModel()
  var body: some View {
    VStack {
      if movieDetailViewModel.loadingState == .loading {
        LoadingView()
      } else if movieDetailViewModel.loadingState == .success {
        //
      }
    }
  }
}
