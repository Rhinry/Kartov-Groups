# 📑 Kartov Groups

<p align="center">
  <b>Universal Multi-Comp Layer Group & Visibility Manager for Adobe After Effects</b><br>
  <i>Control, group, and toggle layers across multiple compositions with a single click.</i>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Adobe%20After%20Effects-CC%202017%20--%202026%2B-9999FF?logo=adobeaftereffects&logoColor=white" alt="AE Version">
  <img src="https://img.shields.io/badge/CEP-7.0%2B-blue" alt="CEP Version">
  <img src="https://img.shields.io/badge/Platform-Windows%20%7C%20macOS-informational" alt="Platform">
  <img src="https://img.shields.io/badge/License-MIT-green" alt="License">
  <img src="https://img.shields.io/badge/Version-v1.4-orange" alt="Release">
</p>

<p align="center">
  <a href="#-features">Features</a> •
  <a href="#-the-problem--solution">Why Kartov Groups?</a> •
  <a href="#-installation">Installation</a> •
  <a href="#-quick-start">Quick Start</a> •
  <a href="#-how-it-works">How It Works</a> •
  <a href="#-t%C3%BCrk%C3%A7e-dok%C3%BCmantasyon">Türkçe Dokümantasyon</a>
</p>

---

## 💡 The Problem & Solution

In professional post-production and motion design, delivering multiple versions of a project is standard practice:
- **TV Deliveries:** Require Legal disclaimers, station logos, age ratings, and localized voiceovers.
- **Web / Social Deliveries:** Require clean visuals, vertical ratios, no legal bars, and alternate music beds.
- **Client Reviews:** Require watermarks and timecodes.

**The After Effects Problem:**
After Effects has no native concept of cross-composition layer grouping. When you need to turn off a logo or disclaimer placed across 4 different compositions, you have to dig into each comp manually, find the layer, and click the eyeball. This is repetitive, frustrating, and prone to costly delivery mistakes.

**The Solution — Kartov Groups:**
Kartov Groups gives you **global, cross-comp layer control**. Select layers across any number of compositions, add them to a group, and toggle them on/off or solo them with **one click** from a single dockable panel.

---

## ✨ Features

- 🌐 **Multi-Comp Project-Wide Scope:** Toggle layers residing in 5 different compositions simultaneously.
- 🎯 **Active Comp Scope:** Quickly switch scope to only affect the currently active composition when needed.
- 🧠 **Embedded Project Memory (XMP):** Group settings, colors, and presets are saved directly inside your `.aep` project file. Send the project to a coworker or reopen it a year later—everything is preserved!
- 🗂️ **Zero Clutter on Blank Projects:** Opens completely clean on fresh projects. No unwanted dummy groups.
- 👁️ **Simultaneous Video & Audio Control:** Toggles both the eyeball (`enabled`) and the speaker (`audioEnabled`) together.
- 🔒 **Locked Layer Safe:** Works reliably even if tagged layers are locked on your timeline (temporarily unlocks and relocks automatically).
- 📋 **Composition Breakdown Drawer:** Expand any group (`📋 Katmanlar ▾`) to see exactly which compositions and layer numbers belong to it.
- 📸 **Presets / Saved Views (Snapshots):** Save entire visibility configurations (e.g., *"TV Broadcast"*, *"Social Clean"*, *"Client Watermarked"*) and switch between them instantly.
- ⚡ **Master Controls:** Sleek, minimalist native dark-themed buttons for **Master Turn On**, **Master Turn Off**, and **Invert All**.
- 💡 **Auto-Discovery:** Automatically scans and discovers previously tagged layers in any imported `.aep` project.
- 🌍 **Instant TR / EN Language Switch:** One-click language toggle (`TR / EN`) in the header. Remembers your language preference across sessions.
- ⏪ **100% Native Undo Support (Ctrl+Z):** Every action is grouped under a clean `Kartov Groups: ...` undo entry.

---

## 🖥️ UI Overview

| Feature | Description |
| :--- | :--- |
| **Scope Switcher** | Switch between `🌐 Tüm Proje (Çoklu Comp)` and `🎯 Sadece Aktif Comp`. |
| **Group Toggle** | Click `✓ AÇIK` / `✕ KAPALI` to switch visibility across all comps in scope. |
| **Action Toolbar** | `+ Ekle` (Add selected layers), `- Çıkar` (Remove layers), `👁️ Seç` (Select layers on timeline), `⚡ Solo` (Solo group). |
| **Drawer Panel** | Shows categorized layer breakdown grouped by composition name. |
| **Presets Bar** | Quick pills to apply saved layer states with one click. |
| **Master Controls** | Sleek AE dark-themed buttons: Turn all on, turn all off, invert states. |

---

## 🚀 Installation

### Option 1: Drag & Drop via ZXP Installer (Recommended - Windows & macOS)

1. Download **`KartovGroups.zxp`** directly from the [`dist/`](dist/KartovGroups.zxp) folder or from GitHub Releases.
2. Open any standard ZXP installer:
   - **[ZXP Installer](https://zxpinstaller.com/)** (Free, Open Source)
   - **[Anastasiy's Extension Manager](https://install.anastasiy.com/)**
   - **aescripts + aeplugins desktop app**
3. Drag and drop **`KartovGroups.zxp`** into the installer window.
4. Restart **Adobe After Effects** and find it under:
   ```text
   Window > Extensions > Kartov Groups
   ```

---

### Option 2: Windows 1-Click Script (`install.bat`)

1. Download or clone this repository:
   ```bash
   git clone https://github.com/your-username/KartovGroups.git
   ```
2. Close **Adobe After Effects**.
3. Double-click `install.bat`.
   - *The script automatically enables `PlayerDebugMode` in the Windows Registry and copies the files to `%APPDATA%\Adobe\CEP\extensions\KartovGroups`.*
4. Launch After Effects:
   ```text
   Window > Extensions > Kartov Groups
   ```

---

### Option 3: macOS Manual Install

1. Close **Adobe After Effects**.
2. Open **Terminal** and enable CEP PlayerDebugMode:
   ```bash
   defaults write com.adobe.CSXS.10 PlayerDebugMode 1
   defaults write com.adobe.CSXS.11 PlayerDebugMode 1
   defaults write com.adobe.CSXS.12 PlayerDebugMode 1
   defaults write com.adobe.CSXS.13 PlayerDebugMode 1
   defaults write com.adobe.CSXS.14 PlayerDebugMode 1
   defaults write com.adobe.CSXS.15 PlayerDebugMode 1
   defaults write com.adobe.CSXS.16 PlayerDebugMode 1
   ```
3. Copy the `KartovGroups` folder to your Adobe CEP extensions directory:
   ```bash
   mkdir -p ~/Library/Application\ Support/Adobe/CEP/extensions/
   cp -R /path/to/KartovGroups ~/Library/Application\ Support/Adobe/CEP/extensions/KartovGroups
   ```
4. Launch After Effects and find it under:
   ```text
   Window > Extensions > Kartov Groups
   ```

---

## 📖 Quick Start

1. **Create a Group:**
   - Click the **`+ Yeni Grup`** button at the top.
   - Enter a name (e.g., *Logolar*, *Legaller*, *Seslendirme*, *Watermark*) and pick a label color.
2. **Assign Layers:**
   - In any composition, select one or more layers on your timeline.
   - Click the **`+ Ekle`** button on your group card.
   - *(Optional: Repeat this across other compositions! The group will collect layers from all of them.)*
3. **Toggle Visibility:**
   - Click the **`✓ AÇIK / ✕ KAPALI`** button to toggle all tagged layers across your compositions simultaneously.
4. **Save a Delivery Preset:**
   - Set up your desired active/inactive group states.
   - Click **`+ Görünüm Kaydet`** and name it (e.g. *"TV Yayını"*).
   - Now you can restore that exact state whenever rendering!

---

## ⚙️ How It Works (Under the Hood)

- **Non-Destructive Comment Tagging:**
  Kartov Groups attaches a lightweight hashtag to the layer's comment field (e.g. `[#grp_logolar]`).
  - No slow expressions.
  - No third-party effect dependencies.
  - If a team member doesn't have the extension installed, their project will still open without any warnings or missing effect errors.
- **Embedded XMP Metadata:**
  Group names, icons, colors, and preset states are encoded directly inside the project file's XMP metadata (`<KartovGroupsConfig>`). This ensures the settings persist seamlessly inside the `.aep` binary.

---

<br>

---

## 🇹🇷 Türkçe Dokümantasyon

### 🎯 Kartov Groups Nedir?

**Kartov Groups**, After Effects'te post prodüksiyon ve hareketli grafik çalışmalarında farklı kompozisyonlara yayılmış katmanları **tek merkezden ve tek tıkla** yönetmenizi sağlayan modern bir CEP eklentisidir.

### ❓ Neden İhtiyaç Duyuldu?
Özellikle TV, Web ve Sosyal Medya teslimatlarında:
- TV kopyasında legal yazılar, logolar ve sesler açık olmalı,
- Web kopyasında legal yazılar kapalı olmalı,
- Sosyal medya kopyasında farklı ses ve alt yazılar aktif olmalıdır.

After Effects'te 3-4 farklı kompozisyonda yer alan bu katmanları her seferinde tek tek comp'lara girip açıp kapatmak ciddi bir vakit kaybıdır ve render hatalarına yol açar. **Kartov Groups** ile katmanlarınızı serbestçe gruplayabilir ve tek bir butona basarak tüm kompozisyonlarda aynı anda gizleyip açabilirsiniz.

### 🌟 Öne Çıkan Özellikler

1. **Sıfırdan Temiz Başlangıç:** Boş projelerde otomatik dummy gruplar (Grup 1, Grup 2 vb.) oluşturmaz; tamamen temiz başlar.
2. **Tüm Proje (Çoklu Comp) Desteği:** Tek bir tıkla projedeki tüm açık/kapalı kompozisyonlara eşzamanlı etki eder.
3. **Gelişmiş Proje Hafızası:** Gruplar doğrudan `.aep` proje dosyasının içine (XMP metadata) kaydedilir. Projeyi kapatıp aylar sonra açsanız veya başka bilgisayara gönderseniz bile gruplarınız korunur.
4. **Sade ve Minimalist AE Teması:** "Hepsini Aç", "Hepsini Kapat" ve "Ters Çevir" butonları After Effects'in yerel koyu arayüzüne tam uyumlu, sade ve göz yormayan modern butonlarla donatılmıştır.
5. **Kilitli Katman Güvencesi:** Timeline'da kilitli (`locked`) katmanlar varsa hata vermez; arka planda kilidi geçici olarak açıp işlemi tamamlar ve tekrar kilitler.
6. **Kayıtlı Görünümler (Presets):** *"TV Yayını"*, *"Web / YouTube"*, *"Müşteri Önizleme"* gibi görünümleri kaydedip tek tıkla uygulayabilirsiniz.
7. **Tam Geri Alınabilirlik (Ctrl+Z):** Yapılan her işlem After Effects geçmişinde tek bir `Kartov Groups: ...` başlığı altında geri alınabilir.
8. **Anında TR / EN Dil Seçeneği:** Panel üstündeki `TR / EN` butonu ile tek tıkla Türkçe ve İngilizce arasında geçiş yapabilirsiniz. Seçiminiz otomatik hatırlanır.

### 📦 Kurulum Seçenekleri

#### Seçenek 1: ZXP Installer ile Sürükle-Bırak (En Kolay Yol - Win & Mac)
1. [`dist/KartovGroups.zxp`](KartovGroups.zxp) dosyasını indirin.
2. Ücretsiz **[ZXP Installer](https://zxpinstaller.com/)** veya **Anastasiy's Extension Manager** programını açın.
3. `KartovGroups.zxp` dosyasını pencereye sürükleyip bırakın.
4. After Effects'i açıp menüden **Window > Extensions > Kartov Groups** yolunu izleyin!

#### Seçenek 2: Windows Otomatik Kurucu (`install.bat`)
1. Repoyu indirin ve After Effects kapalıyken `install.bat` dosyasına çift tıklayın.
2. After Effects'i açıp **Window > Extensions > Kartov Groups** yolundan kullanmaya başlayın.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE). Feel free to use it in personal and commercial projects.

---

<p align="center">
  Crafted with ❤️ for Motion Designers & Post-Production Artists.
</p>
