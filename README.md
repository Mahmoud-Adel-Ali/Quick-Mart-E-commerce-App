# QuickMart App

## Overview

QuickMart is a feature-rich e-commerce application designed to simplify online shopping and digital payments. It provides a seamless and intuitive user experience, allowing users to browse products, make secure payments, and track their orders in real time. With robust authentication and an admin panel, QuickMart ensures a secure and efficient shopping experience for both customers and store owners.

## Features

- **User Authentication**: Secure sign-up, login, and logout using BackEnd Authentication.
- **Product Browsing**: Explore a variety of products across multiple categories.
- **Search & Filters**: Easily find products using keyword searches and advanced filtering options such as category, price range, and ratings.
- **Cart & Checkout**: Add products to the cart, apply discount codes, and complete purchases smoothly.
- **Payment Integration**: Secure payment processing with `flutter_stripe`, `flutter_paypal`, and other payment gateways.
- **Order Tracking**: Track order status in real-time, including estimated delivery time and live location of the delivery.
- **User Profile**: Manage personal details, saved addresses, and preferred payment methods.
- **Push Notifications**: Receive instant updates on order confirmations, shipping, promotions, and discounts.
- **Admin Panel**: Manage product listings, orders, customers, and promotional offers.
- **Dark Mode**: Toggle between light and dark themes for a customized user experience.

## Tech Stack & Packages

- **State Management**: `Bloc (Cubit)`
- **Navigation**: `go_router`
- **Database**: `Firebase Firestore` / `SQLite`
- **Authentication**: `Firebase Auth`
- **Backend**: `.NET RestFull API`
- **Local Storage**: `Shared Preferences` / `Hive`
- **Payment Integration**: `flutter_stripe`, `flutter_paypal`
- **Maps & Location**: `google_maps_flutter`, `geolocator`
- **Push Notifications**: `firebase_messaging`
- **UI & Icons**: `flutter_svg`, `lottie`, `cached_network_image`
