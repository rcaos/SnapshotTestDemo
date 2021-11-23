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

  func test_BreakingBad_PointFree() {
    // given
    let model = TVShowDetailInfo.stub(name: "Breaking Bad")
    let viewController = TVShowDetailViewController(model: model)

    assertSnapshot(matching: viewController, as: .image)

    // rootWindow.rootViewController = viewController
  }
}
