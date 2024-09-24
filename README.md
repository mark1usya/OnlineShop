

# Online Shop App

This is a simple **Online Shop** app for iPhone, built using **Swift**, **SwiftUI**, **Firebase**, and following the **MVVM** architecture. The app allows users to browse products, add items to their favorites, and manage their shopping cart. With a clean and intuitive design, users can seamlessly interact with the shop’s catalog and complete their purchases.

## Features

- **Main View**: Displays a grid of product cards, each showing the product’s name and price. 
    - **Favorite Button**: Tap the heart icon on a card to add the product to your favorites list.
    - **Product Details**: Tap on the body of the card to view more details about the product on the Detail View.
    
- **Favourites View**: Shows a list of all the products that have been added to your favorites. Products can be easily removed or explored further.

- **Cart View**: Displays the products you’ve added to your shopping cart, along with the total price. Includes a "Buy" button to complete the purchase.

- **Detail View**: Provides more information about the selected product. Users can add the product to their cart from this view.

## Architecture

The app follows the **MVVM** (Model-View-ViewModel) architecture for clean separation of concerns and easy scalability. 

- **Swift & SwiftUI**: Used to build a responsive and visually appealing UI.
- **Firebase**: Used for backend services such as user authentication, real-time data management, and storage.

## How to Install

1. Clone the repository:
   ```
   git clone https://github.com/your-username/online-shop-app.git
   ```
2. Open the project in Xcode.
3. Configure Firebase by downloading your `GoogleService-Info.plist` from Firebase and adding it to the project.
4. Build and run the app on a simulator or iOS device.

## App Views

- **Main View**: 
    - Displays a list of products with names, prices, and a heart icon to add to favorites.
    - Tap on a product to navigate to the Detail View.
  
- **Favourites View**: 
    - Lists all products marked as favorites.
  
- **Detail View**: 
    - Shows detailed product information with an "Add to Cart" button.

- **Cart View**: 
    - Shows all products in the cart, along with their total price.
    - Tap the "Buy" button to proceed with purchasing.

