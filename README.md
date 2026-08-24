# Awor Coffee App

A mobile ordering application for **Awor Coffee**, a specialty coffee shop chain based in Yogyakarta, Indonesia. Built as a front-end portfolio project using **Flutter** with **VelocityX** and **GetX**.

---

## Project Description

The specialty coffee industry in Indonesia has grown rapidly, yet many local coffee shops still lack a dedicated mobile ordering platform — putting them at a disadvantage against large chains like Starbucks, Kopi Kenangan, and Fore Coffee that already offer seamless digital ordering experiences. Awor Coffee, a specialty coffee shop chain operating 5 outlets across Yogyakarta, faces this exact challenge: customers expect the convenience of ordering from their phones for both pick-up and delivery, but no dedicated app exists to serve that need.

To address this, I studied existing D2C and Quick Commerce apps in Indonesia's F&B space — analyzing how apps like Fore Coffee and Kopi Kenangan structure their ordering flows (Pick Up and Delivery), present menus with visual-first category browsing and product customization, implement point-based loyalty systems for retention, and integrate local payment methods (QRIS, GoPay, Dana, ShopeePay, OVO) that Indonesian users expect. I also examined how each app maintains brand identity through consistent color palettes and typography, which informed the decision to build Awor Coffee's interface around its signature warm brown tones and the Poppins typeface.

Based on this research, I built a front-end mobile ordering app using Flutter with GetX for lightweight reactive state management and VelocityX for declarative, readable UI code. The app covers the complete customer journey: splash and authentication, a home screen with promotional carousels and quick-action buttons, two ordering flows (Pick Up by outlet and Delivery by address), a full product catalog across 6 menu categories with 26+ items and detailed customization options (cup size, espresso shots, ice level, sweetness), a multi-section checkout screen, QR-based payment with step-by-step instructions, a loyalty points redemption system, outlet search with map views, notifications, and a complete profile management section. The codebase follows a feature-based folder structure where each screen is composed of independent, reusable sections — for example, the checkout screen is built from 6 modular sections — and an `OrderItem` model carries all customization data consistently through the entire ordering pipeline from product detail to payment confirmation.

---

## Tech Stack

| Layer            | Technology                                    |
| ---------------- | --------------------------------------------- |
| Framework        | Flutter (Dart SDK ^3.7.2)                     |
| State Management | GetX ^4.7.2                                   |
| UI Library       | VelocityX ^4.3.1                              |
| Typography       | Poppins (ExtraLight, Regular, SemiBold, Bold) |
| Icons            | Custom assets + Material Icons                |

## Project Structure

```
lib/
├── main.dart                    # App entry point (GetMaterialApp)
├── consts/                      # Centralized constants
│   ├── colors.dart              # Color palette (brown-based warm tones)
│   ├── images.dart              # Asset paths for icons and images
│   ├── strings.dart             # All UI text strings
│   ├── styles.dart              # Font family definitions
│   ├── list.dart                # Data lists (menus, outlets, etc.)
│   └── consts.dart              # Barrel export file
├── controllers/
│   └── home_controller.dart     # Bottom navigation state (GetX)
├── models/
│   └── order_item.dart          # Order item data model
└── views/
    ├── splash_screen/           # Splash screen
    ├── auth_screen/             # Login & Register
    ├── home_screen/             # Home page with bottom nav
    ├── pickup_screen/           # Pick Up ordering flow
    ├── delivery_screen/         # Delivery ordering flow
    ├── menu_screen/             # Menu browsing
    ├── checkout_screen/         # Checkout with sections/widgets
    ├── payment_screen/          # Payment with sections
    ├── order_screen/            # Order history
    ├── exchange_poin_screen/    # Loyalty points redemption
    ├── notif_screen/            # Notifications inbox
    ├── news_screen/             # News & events
    ├── search_outlet_screen/    # Outlet finder with map
    ├── profile_screen/          # Profile & settings
    └── widget_common/           # Shared/reusable widgets
```

## Screenshots

<!-- Add your screenshots here -->
<!-- ![Home](screenshots/home.png) -->
<!-- ![Menu](screenshots/menu.png) -->
<!-- ![Checkout](screenshots/checkout.png) -->
<!-- ![Payment](screenshots/payment.png) -->

## Getting Started

### Prerequisites

- Flutter SDK ^3.7.2
- Dart SDK ^3.7.2
- Android Studio / VS Code with Flutter extension

### Installation

```bash
# Clone the repository
git clone https://github.com/BliAli/AworCoffeeApp.git

# Navigate to the project directory
cd AworCoffeeApp

# Install dependencies
flutter pub get

# Run the app
flutter run
```

## Acknowledgments

- **Awor Coffee** — brand assets and menu data used for educational/portfolio purposes
- **UI/UX Designer** — UI/UX design collaboration
- Built with [Flutter](https://flutter.dev), [GetX](https://pub.dev/packages/get), and [VelocityX](https://pub.dev/packages/velocity_x)
