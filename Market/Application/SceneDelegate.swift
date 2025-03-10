//
//  SceneDelegate.swift
//  Market
//
//  Created by 장동혁 on 1/16/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        // 스토리보드를 사용하지 않고 초기 화면 설정하기
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // UIWindow를 생성하고, UIWindowScene에 연결
        window = UIWindow(windowScene: windowScene)
        
        // 초기화면을 OnboardingViewController로 설정
        let initialViewController = UINavigationController(rootViewController: OnboardingViewController())
        window?.rootViewController = initialViewController
        
        // 윈도우를 key 창으로 만들기
        window?.makeKeyAndVisible()
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
        // 메모리 정리 작업이 필요한 경우
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
        // 앱이 활성화될 때 필요한 작업
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
        // 앱이 비활성화될 때 필요한 작업
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
        // 앱이 포그라운드로 들어올 때 필요한 작업 구현
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
        // 앱이 백그라운드로 갈 때 필요한 작업 구현
    }

    
}

