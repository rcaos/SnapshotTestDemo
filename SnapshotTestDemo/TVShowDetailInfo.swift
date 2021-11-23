//
//  TVShowDetailInfo.swift
//  SnapshotTestDemo
//
//  Created by Jeans Ruiz on 22/11/21.
//  Copyright © 2021 Jeans. All rights reserved.
//

import Foundation

public struct TVShowDetailInfo {
  var id: Int
  var backDropPath: URL?
  var nameShow: String?
  var yearsRelease: String?
  var duration: String?
  var genre: String?
  var numberOfEpisodes: String?
  var posterPath: URL?
  var overView: String?
  var score: String?
  var maxScore: String = "/10"
  var countVote: String?

  public init(show: TVShowDetailResult) {
    id = show.id
    backDropPath = show.backDropPathURL
    nameShow = show.name
    yearsRelease = show.releaseYears
    duration = show.episodeDuration
    genre = show.genreIds?.first?.name
    numberOfEpisodes  = (show.numberOfEpisodes != nil) ? String(show.numberOfEpisodes!) : ""
    posterPath = show.posterPathURL
    overView = show.overview
    score = (show.voteAverage != nil) ? String(show.voteAverage!) : ""
    countVote = (show.voteCount != nil) ? String(show.voteCount!) : ""
  }
}
