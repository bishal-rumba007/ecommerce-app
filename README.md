# E-commerce App

An E-commerce Mobile Application.

## Features

### Authentication
- **Login**: Secure login functionality for users.
- **Signup**: New users can create an account.
- **Forgot Password**: Users can reset their password if they forget it.
- **OTP Verification**: OTP-based verification for secure transactions.
- **Change Password**: Users can change their password from their profile.
- **Social Auth**: Sign in with Google

### Profile
- **User Profile**: Users can view and update their profile information.

### Order
- **Order Management**: Users can view their order history and order details.

### Cart
- **Shopping Cart**: Users can add, update, and remove items from their cart.

### Wishlist
- **Wishlist**: Users can add items to their wishlist for future purchases.

### Checkout
- **Checkout Process**: Seamless checkout process for users to place orders.

### Payment
- **Stripe Integration**: Secure payment processing using Stripe.

## Getting Started

### Prerequisites
- Flutter SDK
- Dart
- Stripe account for payment processing

### Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/ecommerce_app.git
    ```

2. Navigate to the project directory:
    ```sh
    cd ecommerce_app
    ```

3. Install dependencies:
    ```sh
    flutter pub get
    ```

4. Set up environment variables:
    - Create a `.env` file in the `assets` directory with your Stripe publishable key and Google server client ID:
        ```
        STRIPE_PUBLISHABLE_KEY=your_stripe_publishable_key
        GOOGLE_SERVER_CLIENT_ID=your_google_server_client_id
        ```

5. Run the app:
    ```sh
    flutter run
    ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.