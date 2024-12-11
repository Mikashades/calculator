import std.stdio;
import std.math;
import std.conv;
import std.string;

void menu() {
    writeln("***********************************");
    writeln("   Hesap Makinesine Hoşgeldiniz!");
    writeln("***********************************");
    writeln("+ | Toplama");
    writeln("- | Çıkarma");
    writeln("* | Çarpma");
    writeln("/ | Bölme");
    writeln("^ | Üs Alma");
    writeln("sqrt | Karekök");
    writeln("% | Mod Alma");
    writeln("trgo | Trigonometrik Fonksiyonlar");
    writeln("lgrt | Logaritma");
    writeln("! | Faktöriyel");
    writeln("q | Çıkış");
    writeln("**********************************");
}

long factorial(long n) {
    return (n <= 1) ? 1 : n * factorial(n - 1);
}

real degreeToRadian(real degree) {
    return degree * (PI / 180.0);
}

void main() {
    while (true) {
        menu();
        write("Bir işlem seçin: ");
        string secim = readln().strip;

        try {
            switch (secim) {
                case "+":
                    write("Birinci sayıyı girin: ");
                    auto sayi1 = readln().strip.to!real;
                    write("İkinci sayıyı girin: ");
                    auto sayi2 = readln().strip.to!real;
                    writeln("Sonuç: ", sayi1 + sayi2);
                    break;

                case "-":
                    write("Birinci sayıyı girin: ");
                    auto sayi1 = readln().strip.to!real;
                    write("İkinci sayıyı girin: ");
                    auto sayi2 = readln().strip.to!real;
                    writeln("Sonuç: ", sayi1 - sayi2);
                    break;

                case "*":
                    write("Birinci sayıyı girin: ");
                    auto sayi1 = readln().strip.to!real;
                    write("İkinci sayıyı girin: ");
                    auto sayi2 = readln().strip.to!real;
                    writeln("Sonuç: ", sayi1 * sayi2);
                    break;

                case "/":
                    write("Birinci sayıyı girin: ");
                    auto sayi1 = readln().strip.to!real;
                    write("İkinci sayıyı girin: ");
                    auto sayi2 = readln().strip.to!real;
                    if (sayi2 != 0)
                        writeln("Sonuç: ", sayi1 / sayi2);
                    else
                        writeln("Bir sayı 0'a bölünemez.");
                    break;

                case "^":
                    write("Tabanı girin: ");
                    auto sayi1 = readln().strip.to!real;
                    write("Üssü girin: ");
                    auto sayi2 = readln().strip.to!real;
                    writeln("Sonuç: ", pow(sayi1, sayi2));
                    break;

                case "sqrt":
                    write("Sayınızı girin: ");
                    auto sayi1 = readln().strip.to!real;
                    if (sayi1 >= 0)
                        writeln("Sonuç: ", sqrt(sayi1));
                    else
                        writeln("Negatif bir sayının karekökü alınamaz.");
                    break;

                case "%":
                    write("Birinci sayıyı girin: ");
                    auto sayi1 = readln().strip.to!int;
                    write("İkinci sayıyı girin: ");
                    auto sayi2 = readln().strip.to!int;
                    writeln("Sonuç: ", sayi1 % sayi2);
                    break;

                case "trgo":
                    write("Fonksiyonu seçin (sin, cos, tan): ");
                    string fonksiyon = readln().strip.toLower;
                    write("Açıyı girin (derece): ");
                    auto derece = readln().strip.to!real;
                    auto radyan = degreeToRadian(derece);

                    if (fonksiyon == "sin")
                        writeln("Sonuç: ", sin(radyan));
                    else if (fonksiyon == "cos")
                        writeln("Sonuç: ", cos(radyan));
                    else if (fonksiyon == "tan")
                        writeln("Sonuç: ", tan(radyan));
                    else
                        writeln("Geçersiz fonksiyon!");
                    break;

                case "lgrt":
                    write("Logaritma türünü seçin (log10, ln): ");
                    string logTur = readln().strip.toLower;
                    write("Sayınızı girin: ");
                    auto sayi1 = readln().strip.to!real;

                    if (logTur == "log10")
                        writeln("Sonuç: ", log10(sayi1));
                    else if (logTur == "ln")
                        writeln("Sonuç: ", log(sayi1));
                    else
                        writeln("Geçersiz logaritma türü!");
                    break;

                case "!":
                    write("Bir tam sayı girin: ");
                    auto sayi1 = readln().strip.to!long;
                    if (sayi1 >= 0)
                        writeln("Sonuç: ", factorial(sayi1));
                    else
                        writeln("Negatif bir sayının faktöriyeli alınamaz");
                    break;

                case "q":
                    writeln("Hesap makinesi kapatılıyor");
                    return;

                default:
                    writeln("Geçersiz seçim!");
            }
        } catch (Exception e) {
            writeln("Geçersiz giriş yaptınız Lütfen tekrar deneyin");
        }
    }
}

