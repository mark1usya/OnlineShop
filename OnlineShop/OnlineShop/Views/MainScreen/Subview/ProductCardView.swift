

import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreCombineSwift
struct ProductCardView: View {
    var product: Product
    @FirestoreQuery(collectionPath: "shop") var  items: [Product]
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        GeometryReader{
            geo in
            let size = geo.size
            
            ZStack(alignment: .bottom) {
                ZStack(alignment: .topTrailing){
                if let url = URL(string: product.image){
                    CardImageView(url: url, width: size.width, height: size.height)
                    Button{
                        vm.toggleFavorites(product: product)
                    } label: {
                        Image(systemName: "heart.fill")
                            .padding(10)
                            .foregroundColor(product.isFavourite ? .red : .white)
                            .background(.black)
                            .clipShape(Circle())
                            .padding()
                    }
                    }
                    
                }
                VStack(alignment: .leading){
                    
                    Text(product.name)
                        .titleFont()
                        .lineLimit(1)
                    Text("$\(product.price)")
                        .subtitle()
                      
                        
                }
                .padding(10)
                .frame(maxWidth: .infinity,alignment: .leading)
                .background(.background.opacity(0.5))
                .cornerRadius(10)
                .padding(10)
                
            }
        }
        .frame(height: UIScreen.main.bounds.width * 0.7)
//        .background(.background.opacity(0.5))
        .padding(10)
       
    }
}
#Preview {
   MainView()
        .environmentObject(ViewModel())
}
