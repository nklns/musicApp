//
//  MainViewMockData.swift
//  musicApp
//
//  Created by Станислав Никулин on 17.10.2024.
//

import Foundation
import UIKit

struct MainViewMockData {
    static let mockData: [MainViewCellModel] = [
        .init(songName: "Song 1", artistName: "Artist 1", albumImage: UIImage(named: "album1")!),
        .init(songName: "Song 2", artistName: "Artist 2", albumImage: UIImage(named: "album2")!),
        .init(songName: "Song 3", artistName: "Artist 3", albumImage: UIImage(named: "album3")!)
    ]
}
