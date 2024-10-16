//
//  MockData.swift
//  musicApp
//
//  Created by Станислав Никулин on 16.10.2024.
//

import Foundation
import UIKit

struct MockData {
    static let mockData: [CellModel] = [
        .init(image: UIImage(systemName: "lock.open.fill")!, title: "Сегодня - бесплатный доступ", description: "Наслаждайся 1000+ музыки и подкастов"),
        .init(image: UIImage(systemName: "bell.fill")!, title: "День 5 - напоминание", description: "Мы отправим тебе уведомление, чтобы напомнить,\nкогда заканчивается пробный период"),
        .init(image: UIImage(systemName: "checkmark.seal.fill")!, title: "День 7 - окончание бесплатного периода", description: "Твоя подписка начнет действовать. Ты сможешь\nлегко отменить её после этого дня")
    ]
}
