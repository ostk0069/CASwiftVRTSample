//
//  App.swift
//  UICatalog
//
//  Created by 長田 卓馬 on 2021/03/23.
//

import SwiftUI
import PlaybookUI

final class AppDelegate: NSObject, UIApplicationDelegate {
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
  ) -> Bool {
    Playbook.default.add(AllScenarios.self)
    return true
  }
}

@main
struct MainApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    @Environment(\.scenePhase) private var scenePhase

    var body: some Scene {
        WindowGroup {
            PlaybookView()
        }
        .onChange(of: self.scenePhase) { scene in
            switch scene {
            case .background:
                break
            case .inactive:
                break
            case .active:
                break
            @unknown default:
                break
            }
        }
    }
}
