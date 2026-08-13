# linux-canva.web - Turkce

Bu proje, **resmi Canva sitesini** Brave'in kurulu Web Uygulamasi (PWA) olarak
Linux uygulama menusunden guvenilir bicimde acmaya yarayan kucuk ve incelenebilir
bir yardimcidir. Brave'in olusturdugu gercek PWA'yi bulur, pencere sinifi dogru
bir kisayol olusturur ve guvenli klavye tanilamasi sunar.

> **Bagimsiz topluluk projesi:** Canva Pty Ltd veya Brave Software, Inc. ile
> baglantili, onlarca onaylanmis ya da desteklenmis resmi bir urun degildir.
> Canva ve Brave ilgili sahiplerinin markalaridir. Proje Canva veya Brave'i
> dagitmaz ve degistirmez.

## Yaptiklari

- Resmi Brave APT kurulumunu veya Brave Snap'i algilar.
- Sabit kullanici yolu kullanmadan kurulu Canva PWA'yi bulur.
- Pencere sinifi dogru olan uygulama menusu kisayolunu olusturur.
- Brave, profil, PWA, masaustu girdisi ve IBus sagligini denetler.
- Klavye sorunu icin yalniz acik onayla kullanici IBus hizmetini yeniden baslatir.
- Kaldirirken yalniz kendi olusturdugu dosyalari siler.

## Yapmadiklari

- Resmi olmayan istemci, sayfa degistirme, veri kazima veya tarayici otomasyonu yoktur.
- Cerez, anahtar, profil, hesap, tasarim, IndexedDB veya oturum verisi kopyalamaz.
- Brave'i kurmaz, profilleri tasimaz, hesaba girmez ve IBus'u kendiliginden baslatmaz.
- Canva/Brave logolari, ekran goruntuleri veya kullanici verileri depoda bulunmaz.

## Kurulum

Once Brave'i [resmi Linux sayfasindan](https://brave.com/linux/) kurun.

```bash
git clone https://github.com/KodOkullari/linux-canva.web.git
cd linux-canva.web
./install.sh
```

Canva PWA henuz kurulu degilse arac yalnizca `https://www.canva.com/` adresini
acar. Brave'de **Kaydet ve paylas -> Canva'yi yukle** secenegini kullanin;
terminale donup Enter'a basin. Ayrintilar: [INSTALL.md](INSTALL.md).

Kurulum bitince uygulama menusundeki **Canva** simgesini kullanin.

Etiketli surumlerde kurulabilir `.deb` paketi de bulunur:

```bash
sudo apt install ./linux-canva-web_0.1.0_all.deb
linux-canva-web setup
```

## Linux'ta yonlendirme ekranini kapatma

Canva, Linux icin resmi yerel masaustu uygulamasi sunmadigi halde bazi
baglantilarda masaustu uygulamasi protokolunu acmayi deneyebilir. Canva icinde
**Ayarlar -> Profiliniz -> Baglanti acma** bolumune gidin ve
**Baglantilari Masaustu Uygulamasinda acin** secenegini kapatin. Bundan sonra
baglantilar Brave Web Uygulamasinda devam eder.

Yardimci bu hesap tercihini otomatik degistirmez; sayfa/hesap otomasyonu proje
kapsami disindadir. Resmi aciklama:
[Canva masaustu uygulamasi temel kullanim](https://www.canva.com/help/pagecanva-desktop-app-basics/).

## Tanilama ve klavye onarimi

```bash
linux-canva-web doctor
linux-canva-web repair-input
```

Ikinci komut yalniz bilgi verir. Sorun gercekten IBus ise once yazilmamis
metinleri kaydedin ve sonra `linux-canva-web repair-input --apply` calistirin.

## Kaldirma

```bash
./uninstall.sh
```

Brave, PWA, Canva hesabi/tasarimlari ve tarayici verileri silinmez. PWA'yi
isterseniz ayrica `brave://apps` sayfasindan yonetebilirsiniz.

## Gizlilik ve kapsam

Yapilandirma yalniz Brave yolu, profil dizini adi/koku ve herkese acik PWA
kimligini icerir. Proje Ubuntu 24.04 GNOME/X11 ve Brave Snap uzerinde canli
sinanmistir; diger masaustleri icin topluluk testleri gereklidir.
