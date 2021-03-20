//
//  SpeakerViewController.swift
//  Component
//
//  Created by Takuma Osada on 2021/03/20.
//

import UIKit
import Carbon
import ReactiveSwift

public final class SpeakerViewController: UIViewController, Rendable {
    private let adapter: SpeakerAdapterProtocol
    private let renderer = Renderer(
        adapter: UITableViewAdapter(data: []),
        updater: UITableViewUpdater()
    )

    public init(adapter: SpeakerAdapterProtocol) {
        self.adapter = adapter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @IBOutlet private weak var tableView: UITableView! {
        didSet {
            tableView.separatorStyle = .none
        }
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        renderer.target = tableView
        reactive.render <~ adapter.computed.dataState
    }

    public func render(with state: SpeakerDataComposer.State) {
        renderer.render {
            adapter.dataComposer.compose(state: state)
        }
    }
}
