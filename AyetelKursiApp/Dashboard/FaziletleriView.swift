import SwiftUI

struct FaziletleriView: View {

    @Environment(\.presentationMode) var presentationMode
    @State private var faziletleriDataModel: FaziletleriJson?
    @State private var faziletleri: [String] = []

    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    HStack {
                        
                        VStack{
                            Text("Faziletleri")
                                .foregroundColor(.white)
                                .frame(width:400, height: 50)
                                .font(.title)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, 245)
                        }
                        
                    }.background(Color("menuColor"))
                }
                ZStack{
                    ScrollView{
                        if let faziletleriData = faziletleriDataModel {
                            Text(faziletleriData.faziletleri.baslik)
                                .foregroundColor(Color("arapcaColor"))
                                .font(.title2)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal)
                                .frame(maxWidth: .infinity, alignment: .leading)

                            VStack{
                                Text(faziletleriData.faziletleri.icerik.joined(separator: "\n\n"))
                                    .foregroundColor(Color("arapcaColor"))
                                    .opacity(1)
                                    .fontWeight(.medium)
                                    .font(.system(size: 17))
                                    .font(.title)
                                    .multilineTextAlignment(.leading)
                                    .padding(12)
                                    .frame(width: 360)
                                    .background(Color.white)
                                    .cornerRadius(3)
                                    .padding(.vertical, 5)
                                    .shadow(radius: 5)
                            }
                        }
                    }
                    .padding(.bottom, 20)
                }
            }

        }
        .onAppear{
            self.faziletleriDataModel = loadAyetelKursiFaziletleri()
        }
    }

}

struct FaziletleriView_Previews: PreviewProvider {
    static var previews: some View {
        FaziletleriView()
    }
}
