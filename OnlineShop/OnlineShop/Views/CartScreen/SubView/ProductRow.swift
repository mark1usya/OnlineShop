

import SwiftUI

struct ProductRow: View {
    let product: Product
    @EnvironmentObject var vm: ViewModel
    var body: some View {
       
            ZStack(alignment: .trailing) {
                HStack(spacing:20){
                    if let url = URL(string: product.image){
                        CardImageView(url: url, width: 100, height: 100)
                    }
                    VStack(alignment: .leading,spacing: 20){
                        Text(product.name)
                        if let quantityInCart = product.quantityInCart{
                            let sum = quantityInCart * product.price
                            Text("$\(sum)")}
                    }
                    Spacer()
                }
                .padding(10)
                .background(.background)
                .cornerRadius(20)
                
                
                VStack(alignment: .trailing, spacing: 25) {
                    Button{
                        vm.removeFromCart(product: product)
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                    }
                    .buttonStyle(.plain)
              
                HStack{
                    Button{
                        vm.dereaseQuantity(product: product)
                    } label: {
                        Image(systemName: "minus.rectangle.fill")
                            .foregroundStyle(.primary)
                            .font(.title)
                    }
                    .buttonStyle(.plain)
                    if let quantityInCart = product.quantityInCart{
                        let sum = quantityInCart * product.price
                        Text("\(quantityInCart)")
                    }
                    
                    Button{
                        vm.increaseQuantity(product: product)
                    } label: {
                        Image(systemName: "plus.rectangle.fill")
                            .foregroundStyle(.primary)
                            .font(.title)
                    }
                    .buttonStyle(.plain)
                   
                }
                    
                }
                .padding()
            }
        
        .padding(.horizontal, 10)
        .shadow(color: .black.opacity(0.1), radius: 7,x: 5, y: 6)
//        .background(.secondary.opacity(0.3))
    }
}
#Preview { CartView()
        .environmentObject(ViewModel())
  
}
