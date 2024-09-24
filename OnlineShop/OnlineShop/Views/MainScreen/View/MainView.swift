

import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreCombineSwift

struct MainView: View {
    @FirestoreQuery(collectionPath: "shop") var  items: [Product]
    @EnvironmentObject var vm: ViewModel

    var columns = Array(repeating: GridItem(), count: 2)
    var body: some View {
      
            NavigationStack{
                ScrollView(.vertical,showsIndicators: false){
                    LazyVGrid(columns: columns){
                        ForEach(items){
                            item in
                            NavigationLink(destination: DetailView(product: item)) {
                                ProductCardView(product: item)
                            }
                            .buttonStyle(.plain)
                           
                        }
                    }
                }
                .padding(.horizontal, 10)
//                .background(.secondary.opacity(0.3))
                .shadow(color: .black.opacity(0.2), radius: 8, x: 5,y: 8)
                
                .navigationTitle("Products")
                .toolbar{
                    ToolbarItem(placement: .topBarLeading) {
                        NavigationLink(destination: FavouritesView()) {
                            Image(systemName: "heart.fill")
                                .font(.title2)
                        }
                        .buttonStyle(.plain)
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink(destination:CartView()) {
                            CartButton(numberOfProducts: vm.cartItemCount)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            
        }
    
}

#Preview {
    MainView()
        .environmentObject(ViewModel())
}
