//
//  TVShowDetailViewController.swift
//  SnapshotTestDemo
//
//  Created by Jeans Ruiz on 22/11/21.
//  Copyright © 2021 Jeans. All rights reserved.
//

import UIKit

class TVShowDetailViewController: NiblessViewController {

  var rootView: TVShowDetailRootView?

  lazy var favoriteButton: UIBarButtonItem = {
    let barButtonItem = UIBarButtonItem(image: UIImage(named: "favorite"),
                                        style: .plain, target: nil, action: nil)
    barButtonItem.tintColor = .gray
    return barButtonItem
  }()

  lazy var watchListButton: UIBarButtonItem = {
    let bookmarkButton = UIBarButtonItem(image: UIImage(named: "bookmark"),
                                         style: .plain, target: nil, action: nil)
    bookmarkButton.tintColor = .gray
    return bookmarkButton
  }()

  var model: TVShowDetailInfo?

  // MARK: - Initializer
  init(model: TVShowDetailInfo? = nil) {
    self.model = model
    super.init()
  }

  override func loadView() {
    rootView = TVShowDetailRootView()
    view = rootView
  }

  // MARK: - Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()

    setupNavigationBar()
    configView()
  }

  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
  }

  deinit {
    print("deinit \(Self.self)")
  }

  fileprivate func setupNavigationBar() {
    navigationItem.rightBarButtonItems = [favoriteButton, watchListButton]
  }

  fileprivate func configView() {
    guard let model = model else {
      return
    }
    rootView?.setupView(with: model)
  }
}
