//
//  SnapshotTestDemoTests.swift
//  SnapshotTestDemoTests
//
//  Created by Jeans Ruiz on 22/11/21.
//  Copyright © 2021 Jeans. All rights reserved.
//

import XCTest
import iOSSnapshotTestCase

@testable import SnapshotTestDemo

class SnapshotTestDemoTests: FBSnapshotTestCase {

  private var rootWindow: UIWindow!

  override func setUp() {
    super.setUp()
    //self.recordMode = true

    rootWindow = UIWindow(frame: UIScreen.main.bounds)
    rootWindow.isHidden = false
  }

  func test_Populated_DragonBall_Z() {
    // given
    let model = TVShowDetailInfo.stub()
    let viewController = TVShowDetailViewController(model: model)
    rootWindow.rootViewController = viewController

    FBSnapshotVerifyView(viewController.view)
  }

  func test_Populated_LargeName() {
    // given
    let model = TVShowDetailInfo.stub(name: "The Championships in another Run by The Germany",
                                      firstAirDate: "1992/01/23", lastAirDate: "2019/09/09",
                                      episodeRunTime: [40], genreIds: [Genre(id: 10765, name: "Drama")],
                                      numberOfEpisodes: 1230,
                                      overView: "Fringe is an American science fiction television series created by J. J. ... " +
                                        "The team uses fringe science and FBI investigative techniques to investigate" +
                                        "a series of unexplained, often ghastly occurrences, which are related to mysteries surrounding a parallel universe.",
                                      voteAverage: 6.3,
                                      voteCount: 12903)
    let viewController = TVShowDetailViewController(model: model)
    rootWindow.rootViewController = viewController

    FBSnapshotVerifyView(viewController.view)
  }
}
