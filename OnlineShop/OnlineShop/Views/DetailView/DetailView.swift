

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var vm: ViewModel
    let product: Product
    var body: some View {
        ZStack(alignment: .topLeading) {
           
            VStack{
                if let url = URL(string: product.image){
                    CardImageView(url: url, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.7)
                        .ignoresSafeArea()
                        .shadow(color: .black.opacity(0.3), radius: 10,x: 5,y: 8)
                    
                }
                VStack(alignment: .leading,spacing: 20){
                    HStack{
                        Text(product.name)
                            .titleFont()
                        Spacer()
                        Text("$\(product.price)")
                            .titleFont()
                    }
                    Text(product.description)
                        .subtitle()
                        .fixedSize(horizontal: false, vertical: true)
                        .lineLimit(6)
                    Spacer()
                    
                    CustomMainButton(title: "Add to cart") {
                        vm.addToCart(product: product)
                    }
                    
                    
                }
                .padding(.horizontal,30)
            }
            .background(.secondary.opacity(0.3))
            .navigationBarBackButtonHidden()
            BackButtonView()
                .padding(.leading)
        }
    }
}

#Preview {
    DetailView(
        product: Product(
          
            name: "Apple Watch",
            description: "Series 10 is a major milestone for Apple Watch. It features our biggest and most advanced display yet,2 showing more information onscreen than ever. With Apple’s first wide-angle OLED Display, the screen is brighter when viewed from an angle, making it easier to read with a quick glance.",
            image:
                "https://firebasestorage.googleapis.com/v0/b/onlineshop-92c5d.appspot.com/o/products%2Fpexels-tdcat-437037.jpg?alt=media&token=cb661bb1-d19a-4d9d-8e7d-74b24574c093",
            price: 453,
            isFavourite: false
    
        )
    )
    .environmentObject(ViewModel())
}
