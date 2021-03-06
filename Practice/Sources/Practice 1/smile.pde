/*
  `setup` — это точка входа в программу Processing. C этой точки начинается
  исполнение наших команд. Каждая команда называется инструкцией. Каждая
  инструкция заканчивается терминатором инструкции – символом `;`. Инструкции
  выполняются в порядке, заданном в файле кода программы. Файл кода программы
  называют исходным кодом.

  Большинство инструкций в исходном коде состоят из специальных вызовов
  существующего кода, написанного вами или другими программистами – методами.
  Методы состоят из названия метода (`size`, `background`, `ellipse`) и
  аргументов методу, указанных в круглых скобках через запятую (`size(500, 500);`).
  Аргументы уточняют, каким образом методу необходимо работать. Среда Processing
  и язык Java имеют большое количество методов, написанных другими
  программистами, которые вы можете использовать для своих нужд. Список всех
  методов среды Processing вы можете найти по следующему адресу

    https://processing.org/reference

  Методы внутри `setup` выполняются только один раз при старте. Если код `Setup`
  – это все, что вы используете, вы можете не писать строку `void setup() {` и
  закрывающуюся скобку `}` в конце файла. Среда Processing обернет ваш код в
  этот блок автоматически.
 */
void setup() {
  // Метод `size` устанавливает размер окна вашей программы в пикселях. Пиксель –
  // одна точка экрана монитора.
  size(500, 500); // size(<ширина окна>, <высота окна>);
  //   ^    ^ аргументы для метода `size`. В нашем вызове аргументы
  //          заданы двумя константами 500 и 500.

  // Метод `background` задает цвет фона окна программы. Метод имеет несколько
  // вариантов.
  // background(0); // background(<оттенок серого числом от 0 (черный) до 255 (белый)>);
  background(0, 0, 0); // background(<яркость красного от 0 (черный) до 255 (красный)>,
                       //            <яркость зеленого от 0 (черный) до 255 (зеленый)>,
                       //            <яркость синего   от 0 (черный) до 255 (синий)>);
                       // 3 числа задают конечный цвет, как комбинацию яркости 3-х ключевых цветов.
  // background(0xFF000000); // background(<0x<прозрачность><яркость красного><яркость зеленого><яркость синего>>);
                             // 4 байта одного числа задают прозрачность и
                             // конечный цвет комбинацией яркости 3-х ключевых
                             // цветов.
                             // Байты задаются через одно целое число, которое
                             // записано в шестнадцатеричном виде. Каждые две
                             // цифры шестнадцатеричного числа задают один байт
                             // (от 00 (0 в десятичной системе счисления) до FF
                             // (255)).

  /*
    После подготовки окна приложений, мы начнем выполнять методы для рисования
    смайлика.
   */

  // Лицо

  // Метод `fill` задает цвет всех последующих фигур. Метод может задавать цвет
  // подобно методу `background` (см. выше).
  // Установим цвет окружности лица смайлика в желтый.
  fill(0xffffc700);
  // Метод `ellipse` рисует эллипс, вписанный в прямоугольное пространство.
  // Нарисуем при помощи него окружность лица смайлика.
  ellipse(250, 250, 300, 300); // ellipse(
                               //     <x координата центра эллипса>,
                               //     <y координата центра эллипса>,
                               //     <ширина эллипса>,
                               //     <высота эллипса>
                               // );

  // Глаза

  // Глаза, нос и рот будут нарисованы другим цветом. Установим этот цвет для
  // всех последующих фигур.
  fill(0);
  // Нарисуем окружность левого глаза относительно центра лица.
  ellipse(200, 200, 40, 40);
  // Нарисуем окружность правого глаза относительно центра лица.
  ellipse(300, 200, 40, 40);

  // Нос
  // Нарисуем нос прямоугольником со скругленными краями относительно центра
  // лица.
  // Метод `rect` рисует прямоугольник.
  rect(244, 250, 16, 30, 30); // rect(
                              //     <x координата левого верхнего угла прямоугольника>,
                              //     <y координата левого верхнего углаx прямоугольника>,
                              //     <ширина прямоугольника>,
                              //     <высота прямоугольника>,
                              //     <радиус углов прямоугольника>
                              // );

  // Рот
  // Нарисуем рот смайлика эллипсом.
  ellipse(250, 330, 100, 30);
  // Нарисуем улыбку
  // Метод `noStroke` отключает рисование границ фигур.
  noStroke(); // `noStroke` не требует никаких аргументов.
  // Нарисуем желтый эллипс чуть выше черного эллипса поверх него. Подумайте,
  // для чего мы это делаем.
  fill(0xffffc700);
  ellipse(250, 320, 100, 30);
}
