import SwiftUI

struct CardView: View{
    let card: Card
    let isFaceUP: Bool
    
    var body: some View{
        Zstack{
            if isFaceUp{
                RoundedRectangle(conrnerRadius: 10)
                    .fill(Color.white)
                    .shadow(radius: 5)
                VStack{
                    Text(card.rank.rawValue)
                        .font(.largeTitle)
                        .bold()
                    Text(card.suit.rawValue)
                        .font(.largeTitle)
                }
            } else {
                roundedRectangle(cornerRadius: 10)
                    .fill(Color.red)
                    .shadow(radius: 5)
            }
        }
        .frame(width:60, height: 90)
    }
}
