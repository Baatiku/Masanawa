# WhatsApp Reverse-Engineered Reference (v2.26.40.72)

This directory contains extracted and decoded assets, manifests, vector graphics, Lottie animations, sound effects, and design system tokens reverse-engineered from `WhatsApp.apk` (v2.26.40.72, SDK 37) to serve as a design, interaction, and component reference for Masanawa's WhatsApp-like 5-tab architecture.

---

## Directory Contents

- `AndroidManifest.xml`: Fully decoded XML manifest containing all 855 activities, services, content providers, broadcast receivers, and 143 deep-link schemes (`whatsapp://`, `https://wa.me/`, etc.).
- `assets/`:
  - `fonts/`: `Roboto-Medium.ttf`, `RobotoMono-Regular.ttf`, `Exo2-ExtraBold.ttf`, `Calistoga-Regular.ttf`.
  - `graphics/`: Core SVG vectors (`clockDarkTheme.svg`, `clockLightTheme.svg`, `ic_content_location_on_emerald.svg`, `unsupported-message.svg`).
  - `json/`: Bloks screen templates and bottom sheet JSON definitions.
  - `country_names_*.tsv`: Phone country dial codes and localized names for 70+ languages.
- `res/`:
  - `*.json` (80 files): WhatsApp Design System (WDS) Lottie animations (see animation index below).
  - `*.m4a` / `*.ogg` (32 files): Native WhatsApp UI audio effects (sent message, received message, ringtones, camera click).
  - `*.webp` & `*.png` (5,500+ files): UI icons, stickers, avatars, status badges, and reaction icons.
  - `*.xml` (9,100+ files): Compiled binary XML layouts and drawables.

---

## WDS (WhatsApp Design System) Lottie Animation Index

| Filename | Animation Name | Dimensions | Purpose | Masanawa Mapping |
| :--- | :--- | :--- | :--- | :--- |
| `kh0.json` | `WDS_Anim_Expressive_Loader_Transfer Settings` | 120x120 | Settings loading spinner | Settings loader |
| `kh1.json` | `WDS_Anim_Expressive_Loader_Success_Only_EndState` | 120x120 | Success checkmark tick | Transaction / Send success |
| `kh2.json` | `WDS_Anim_Expressive_Loader_Warning_Yellow` | 120x120 | Warning / pending alert | Transaction confirmation / alert |
| `kh6.json` | `WA_Onboarding_Registration_WelcomeScreen_1x1` | 280x280 | Onboarding welcome illustration | Auth / Registration welcome |
| `khc.json` | `VerifyEncryption` | 450x450 | E2EE QR / encryption shield | Security verification |
| `khf.json` | `Reserve username icon V05 HR` | 1960x1330 | Username reservation flow | 10-digit ID / @handle setup |
| `khk.json` | `ic_AI_icon_loader_clockwise_1.45_60fps` | 120x120 | AI spinning loader | Masana AI thinking indicator |
| `khr.json` | `wds_anim_Chat_Lock_Simple-NoIcons` | 160x160 | Chat lock animation | Locked / Private chats |
| `khs.json` | `wds_ic_chatlock~outlined_android_lock_unlock` | 24x24 | Chat lock toggle icon | Chat lock header toggle |
| `khx.json` | `WDS_Anim_Expressive_Loader_Transfering_Chats` | 120x120 | Chat transfer loader | Room sync / Chat migration |
| `khy.json` | `WDS_Anim_Expressive_Loader_Alert_Error` | 600x600 | Error / failed state | Transaction failure modal |
| `ki-.json` | `meta-ai-orbit-anim-idle-purple` | 1000x1000 | Voice AI idle orbit | Masana Voice AI idle state |
| `ki7.json` | `Meta_AI_Particle_Reveal_rLottie_700px` | 700x700 | Particle reveal animation | Masana AI response reveal |
| `kja.json` | `wds_icon_animated_equalizer_v2` | 24x24 | Live voice equalizer | Masana Voice / Room audio live |
| `kjj.json` | `WDS_Anim_Expressive_Loader_Payments_UPI_Finding_Account` | 120x120 | Account inquiry spinner | Masanawa 10-digit name lookup |
| `kjq.json` | `Wave 2` | 22x16 | Voice note waveform | Voice note audio player |
| `kjt.json` | `Android PTT mic - Light` | 72x72 | Push-to-talk mic animation | Audio note recorder |
| `kk5.json` | `wds_anim_picto_payments_success` | 88x88 | Payment success pictogram | Wallet transfer completed |
| `kk7.json` | `wds_anim_privacy_check_up` | 240x140 | Privacy checkup illustration | Security & KYC screen |
| `kkv.json` | `wds_anim_E2EE` | 180x120 | End-to-end encryption banner | In-chat E2EE info card |
| `kla.json` | `wds-ill-calendar-schedule-call_phone` | 180x120 | Scheduled voice call card | Calls tab: schedule call |
| `klb.json` | `wds-ill-calendar-schedule-call_pin` | 180x120 | Scheduled call pin icon | Calls tab: pinned call reminder |

---

## WhatsApp Color Tokens & Palette

### Light Theme
- Primary Brand: `#25D366` (Iconic WhatsApp Green)
- Primary Teal: `#00A884` (WhatsApp Teal Green / Header bar)
- Secondary Emerald: `#1DAA61` / `#1FA855`
- Scaffold Background: `#FFFFFF`
- Chat Wallpaper Base: `#EFEAE2`
- Incoming Chat Bubble: `#FFFFFF` (with `#E9EDEF` subtle border)
- Outgoing Chat Bubble: `#E6FFDA` (`#D9FDD3`)
- Read Receipt Checkmarks: `#53BDEB` (Double Blue Ticks)
- Delivered / Sent Checkmarks: `#8696A0` (Grey Ticks)
- Unread Counter Badge: `#25D366` (White bold text)

### Dark Theme
- Scaffold Background: `#111B21` (Iconic WhatsApp Dark Charcoal)
- Surface / Cards: `#202C33`
- Active Tab / Accent: `#21C063` (High-contrast bright green)
- Chat Wallpaper Base: `#0B141A`
- Incoming Chat Bubble: `#202C33`
- Outgoing Chat Bubble: `#005C4B` / `#103527`
- Muted Text / Secondary: `#8696A0`
- Dividers & Borders: `#222D34`
