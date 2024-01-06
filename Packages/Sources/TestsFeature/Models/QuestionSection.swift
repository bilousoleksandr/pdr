//
//  QuestionSection.swift
//
//
//  Created by Oleksandr Bilous on 06.01.2024.
//

import Foundation

struct QuestionSection: Hashable {
    let id: Int
    let order: Int
    let text: String

    static let all = [
        QuestionSection(id: 1, order: 1, text: "1. Загальні положення"),
        QuestionSection(id: 2, order: 2, text: "2. Обов'язки і права водіїв механічних транспортних засобів"),
        QuestionSection(id: 3, order: 3, text: "3. Рух транспортних засобів із спеціальними сигналами"),
        QuestionSection(id: 4, order: 4, text: "4. Обов'язки і права пішоходів"),
        QuestionSection(id: 5, order: 5, text: "5. Обов'язки і права пасажирів"),
        QuestionSection(id: 6, order: 6, text: "6. Вимоги до велосипедистів"),
        QuestionSection(id: 7, order: 7, text: "7. Вимоги до осіб, які керують гужовим транспортом, і погоничів тварин"),
        QuestionSection(id: 8, order: 8, text: "8.1. Регулювання дорожнього руху (Регульовані перехрестя)"),
        QuestionSection(id: 74, order: 9, text: "8.2. Регулювання дорожнього руху (Нерегульовані перехрестя)"),
        QuestionSection(id: 9, order: 10, text: "9. Попереджувальні сигнали"),
        QuestionSection(id: 10, order: 11, text: "10. Початок руху та зміна його напрямку"),
        QuestionSection(id: 14, order: 12, text: "11. Розташування транспортних засобів на дорозі"),
        QuestionSection(id: 15, order: 13, text: "12. Швидкість руху"),
        QuestionSection(id: 16, order: 14, text: "13. Дистанція, інтервал, зустрічний роз'їзд"),
        QuestionSection(id: 17, order: 15, text: "14. Обгін"),
        QuestionSection(id: 18, order: 16, text: "15. Зупинка і стоянка"),
        QuestionSection(id: 19, order: 18, text: "16.2. Проїзд перехресть​ (Нерегульовані перехрестя)"),
        QuestionSection(id: 75, order: 17, text: "16.1. Проїзд перехресть​ (Регульовані перехрестя)"),
        QuestionSection(id: 20, order: 19, text: "17. Переваги маршрутних транспортних засобів"),
        QuestionSection(id: 21, order: 20, text: "18. Проїзд пішохідних переходів і зупинок транспортних засобів"),
        QuestionSection(id: 22, order: 21, text: "19. Користування зовнішніми світловими приладами"),
        QuestionSection(id: 23, order: 22, text: "20. Рух через залізничні переїзди"),
        QuestionSection(id: 24, order: 23, text: "21. Перевезення пасажирів"),
        QuestionSection(id: 25, order: 24, text: "22. Перевезення вантажу"),
        QuestionSection(id: 26, order: 25, text: "23. Буксирування та експлуатація транспортних составів"),
        QuestionSection(id: 27, order: 26, text: "24. Навчальна їзда"),
        QuestionSection(id: 28, order: 27, text: "25. Рух транспортних засобів у колонах"),
        QuestionSection(id: 29, order: 28, text: "26. Рух у житловій та пішохідній зоні"),
        QuestionSection(id: 30, order: 29, text: "27. Рух по автомагістралях і дорогах для автомобілів"),
        QuestionSection(id: 31, order: 30, text: "28. Рух по гірських дорогах і на крутих спусках"),
        QuestionSection(id: 32, order: 31, text: "29. Міжнародний рух"),
        QuestionSection(id: 33, order: 32, text: "30. Номерні, розпізнавальні знаки, написи і позначення"),
        QuestionSection(id: 34, order: 33, text: "31. Технічний стан транспортних засобів та їх обладнання"),
        QuestionSection(id: 35, order: 34, text: "32. Окремі питання дорожнього руху, що потребують узгодження"),
        QuestionSection(id: 84, order: 35, text: "33.1 Попереджувальні знаки"),
        QuestionSection(id: 85, order: 36, text: "33.2 Знаки пріоритету"),
        QuestionSection(id: 86, order: 37, text: "33.3 Заборонні знаки"),
        QuestionSection(id: 87, order: 38, text: "33.4 Наказові знаки"),
        QuestionSection(id: 88, order: 39, text: "33.5 Інформаційно-вказівні знаки"),
        QuestionSection(id: 89, order: 40, text: "33.6 Знаки сервісу"),
        QuestionSection(id: 90, order: 41, text: "33.7 Таблички до дорожніх знаків"),
        QuestionSection(id: 37, order: 42, text: "34. Дорожня розмітка"),
        QuestionSection(id: 42, order: 43, text: "35. Основи безпечного водіння"),
        QuestionSection(id: 38, order: 44, text: "36. Основи права в області дорожнього руху"),
        QuestionSection(id: 39, order: 45, text: "37. Надання першої медичної допомоги"),
        QuestionSection(id: 53, order: 46, text: "38. Етика водіння, культура та відпочинок водія"),
        QuestionSection(id: 41, order: 47, text: "39. Європротокол"),
        QuestionSection(id: 54, order: 60, text: "40. Додаткові питання щодо категорій А1, А (Загальні)"),
        QuestionSection(id: 55, order: 62, text: "41. Додаткові питання щодо категорій А1, А (Будова і терміни)"),
        QuestionSection(id: 56, order: 64, text: "42. Додаткові питання щодо категорій А1, А (Юридична відповідальність)"),
        QuestionSection(id: 57, order: 66, text: "43. Додаткові питання щодо категорій А1, А (Безпека)"),
        QuestionSection(id: 58, order: 80, text: "44. Додаткові питання щодо категорій В1, В (Загальні)"),
        QuestionSection(id: 59, order: 82, text: "45. Додаткові питання щодо категорій В1, В (Будова і терміни)"),
        QuestionSection(id: 60, order: 84, text: "46. Додаткові питання щодо категорій В1, В (Юридична відповідальність)"),
        QuestionSection(id: 61, order: 86, text: "47. Додаткові питання щодо категорій В1, В (Безпека)"),
        QuestionSection(id: 62, order: 100, text: "48. Додаткові питання щодо категорій C1,C (Загальні)"),
        QuestionSection(id: 63, order: 102, text: "49. Додаткові питання щодо категорій C1,C (Будова і терміни)"),
        QuestionSection(id: 64, order: 104, text: "50. Додаткові питання щодо категорій C1,C (Юридична відповідальність)"),
        QuestionSection(id: 65, order: 106, text: "51. Додаткові питання щодо категорій C1,C (Безпека)"),
        QuestionSection(id: 66, order: 120, text: "52. Додаткові питання щодо категорій D1, D (Загальні)"),
        QuestionSection(id: 67, order: 122, text: "53. Додаткові питання щодо категорій D1, D (Будова і терміни)"),
        QuestionSection(id: 68, order: 124, text: "54. Додаткові питання щодо категорій D1, D (Юридична відповідальність)"),
        QuestionSection(id: 69, order: 126, text: "55. Додаткові питання щодо категорій D1, D (Безпека)"),
        QuestionSection(id: 70, order: 140, text: "56. Додаткові питання щодо категорій BE, C1E, CE, D1E, DE (Загальні)"),
        QuestionSection(id: 71, order: 142, text: "57. Додаткові питання щодо категорій BE, C1E, CE, D1E, DE (Будова и терміни)"),
        QuestionSection(id: 72, order: 144, text: "58. Додаткові питання щодо категорій BE, C1E, CE, D1E, DE (Юридична відповільність)"),
        QuestionSection(id: 73, order: 146, text: "59. Додаткові питання щодо категорій BE, C1E, CE, D1E, DE (Безпека)"),
        QuestionSection(id: 76, order: 160, text: "60. Додаткові питання щодо категорії T (Загальні)"),
        QuestionSection(id: 77, order: 162, text: "61. Додаткові питання щодо категорії Т (Будова и терміни)"),
        QuestionSection(id: 78, order: 164, text: "62. Додаткові питання щодо категорії Т (Юридична відповільність)"),
        QuestionSection(id: 79, order: 166, text: "63. Додаткові питання щодо категорії Т (Безпека)")
    ]
}
