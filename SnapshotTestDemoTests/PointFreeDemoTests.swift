//
//  PointFreeDemoTests.swift
//  SnapshotTestDemoTests
//
//  Created by Jeans Ruiz on 22/11/21.
//  Copyright © 2021 Jeans. All rights reserved.
//

import XCTest
import SnapshotTesting

@testable import SnapshotTestDemo

class PointFreeDemoTests: XCTestCase {

  override func setUp() {
    isRecording = false
  }

  func test_BreakingBad_PointFree() {
    // given
    let model = TVShowDetailInfo.stub(name: "Breaking Bad")
    let viewController = TVShowDetailViewController(model: model)

    assertSnapshot(matching: viewController, as: .wait(for: 1, on: .image(on: .iPhoneSe)))
    assertSnapshot(matching: viewController, as: .wait(for: 1, on: .image(on: .iPhoneXsMax)))
  }

  func test_ShowWithLargeName_PointFree() {
    // given
    let overview = "Fringe is an American science fiction television series created by J. J. ... " +
      "The team uses fringe science and FBI investigative techniques to investigate" +
      "a series of unexplained, often ghastly occurrences, which are related to " +
      "mysteries surrounding a parallel universe."

    let model = TVShowDetailInfo.stub(name: "This a TVShow with a large Name, that doesnt fit in the screen",
                                      overView: overview)
    let viewController = TVShowDetailViewController(model: model)

    assertSnapshot(matching: viewController, as: .wait(for: 1, on: .image(on: .iPhoneSe)))
    assertSnapshot(matching: viewController, as: .wait(for: 1, on: .image(on: .iPhoneXsMax)))
  }
}
