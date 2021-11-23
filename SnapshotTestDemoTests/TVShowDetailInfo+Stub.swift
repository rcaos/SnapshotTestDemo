//
//  TVShowDetailInfo+Stub.swift
//  SnapshotTestDemoTests
//
//  Created by Jeans Ruiz on 22/11/21.
//  Copyright © 2021 Jeans. All rights reserved.
//

import Foundation
@testable import SnapshotTestDemo

extension TVShowDetailInfo {
  
  static func stub(
    id: Int = 1,
    name: String = "Dragon Ball Z",
    firstAirDate: String = "1989-04-26",
    lastAirDate: String = "1996-01-31",
    episodeRunTime: [Int] = [26],
    genreIds: [Genre] = [Genre(id: 10765, name: "Sci-Fi & Fantasy")],
    numberOfEpisodes: Int = 291,
    numberOfSeasons: Int = 9,
    posterPath: String? = nil,
    backDropPath: String? = nil,
    overView: String = """
      Five years have passed since the fight with Piccolo Jr.,
      and Goku now has a son, Gohan. The peace is interrupted when an alien named Raditz arrives on
      Earth in a spacecraft and tracks down Goku, revealing to him that that they are members of a
      near-extinct warrior race called the Saiyans.
      """,
    voteAverage: Double = 8.1,
    voteCount: Int = 1147,
    status: String = "Ended") -> TVShowDetailInfo {
    
    let result =  TVShowDetailResult(id: id,
                                     name: name,
                                     firstAirDate: firstAirDate,
                                     lastAirDate: lastAirDate,
                                     episodeRunTime: episodeRunTime,
                                     genreIds: genreIds,
                                     numberOfEpisodes: numberOfEpisodes,
                                     numberOfSeasons: numberOfSeasons,
                                     posterPath: posterPath,
                                     backDropPath: backDropPath,
                                     overview: overView,
                                     voteAverage: voteAverage,
                                     voteCount: voteCount,
                                     status: status)
    return TVShowDetailInfo(show: result)
    
  }
}
