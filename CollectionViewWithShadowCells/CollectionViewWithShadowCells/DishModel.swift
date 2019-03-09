//
//  DishModel.swift
//  CollectionViewWithShadowCells
//
//  Created by Stanly Shiyanovskiy on 3/9/19.
//  Copyright © 2019 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit

public struct DishModel {
    var mainImage: String
    var dishName: String
    var size: Double
    var price: Int
    
    public static func fetchDishes() -> [DishModel] {
        let item01 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499717165656299.png", dishName: "Капучино", size: 0.40000000000000002, price: 10099)
        let item02 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499718844910516.png", dishName: "Флэт Уайт", size: 200, price: 9500)
        let item03 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636675187846604038.png", dishName: "Моккачино", size: 300, price: 11900)
        let item04 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499720931164274.png", dishName: "Американо", size: 240, price: 7500)
        let item05 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499883842177940.png", dishName: "Эспрессо", size: 60, price: 7500)
        let item06 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499727639059846.png", dishName: "Какао", size: 400, price: 10000)
        let item07 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499769761772947.png", dishName: "Латте", size: 400, price: 10900)
        let item08 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499772873704658.png", dishName: "Хотти «Масала» на обезжиренном молоке", size: 340, price: 14000)
        let item09 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636516678953491826.png", dishName: "Хотти «Масала» на кокосовом молоке", size: 340, price: 14000)
        let item10 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499773869163028.png", dishName: "Хотти «Масала» на соевом молоке", size: 340, price: 14000)
        let item11 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499781727324656.png", dishName: "Хотти Масала", size: 0, price: 9000)
        let item12 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499782129874744.png", dishName: "Хотти Облепиха-Имбирь", size: 0, price: 9000)
        let item13 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499782551018497.png", dishName: "Хотти Клюква-Можжевельник", size: 0, price: 9000)
        let item14 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499782881901777.png", dishName: "Хотти Яблоко-Корица", size: 0, price: 9000)
        let item15 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499783310299636.png", dishName: "Хотти Вишня-Малина", size: 0, price: 9000)
        let item16 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636557549623759031.png", dishName: "Вода Бонаква", size: 0.5, price: 7500)
        let item17 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636557550213836846.png", dishName: "Напиток Добрый Палпи Апельсин", size: 0.45000000000000001, price: 7500)
        let item18 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636557565011585899.png", dishName: "Fanta", size: 0.5, price: 7500)
        let item19 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636557562587768286.png", dishName: "Сок Добрый яблоко", size: 0.33000000000000002, price: 6500)
        let item20 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636557550927704559.png", dishName: "Coca Cola", size: 0.5, price: 7500)
        let item21 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499825907293369.png", dishName: "Синнамен с корицей и сырно-сливочным кремом", size: 90, price: 4900)
        let item22 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499826775379598.png", dishName: "Синнамен с малиной", size: 90, price: 4900)
        let item23 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499827398707517.png", dishName: "Синнамен с черникой", size: 0, price: 4900)
        let item24 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499828049788120.png", dishName: "Синнамен с яблоком и карамелью", size: 100, price: 4900)
        let item25 =
            DishModel(mainImage: "http://alexhrom.cdn.zerocdn.com/Restomania/4/636499829285949543.png", dishName: "Конверт ветчина", size: 0, price: 5500)
        
        return [item01, item02, item03, item04, item05,
                item06, item07, item08, item09, item10,
                item11, item12, item13, item14, item15,
                item16, item17, item18, item19, item20,
                item21, item22, item23, item24, item25]
    }
}
