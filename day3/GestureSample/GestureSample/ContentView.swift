import SwiftUI

struct ContentView: View {
    @State var spinning = false
    @State var visible = true
    @State var count = 0
    @GestureState var angle: Angle = Angle.zero
    var body: some View {
        let tap = TapGesture()
            .onEnded {
                count += 1
            }
//        let lpress = LongPressGesture()
//            .onEnded { _ in
//                count += 10
//            }
        let rot = RotationGesture()
            .updating($angle) { angle, state, transaction in
                state = angle
            }
//            .onChanged { angle in
//                print("Angle: \(angle)")
//                self.angle = angle
//            }
//            .onEnded { _ in
//                print("Rotation Ended")
//            }
        VStack {
            Text("count = \(count) angle = \(angle.degrees)")
            ZStack {
                Circle()
                    .stroke(.blue, lineWidth: 5)
                    .background(Circle().fill(
                        RadialGradient(gradient: Gradient(colors: [
                            Color.red, Color.yellow, Color.green
                        ]), center: .center, startRadius: 0, endRadius: 80)
                    ))
                    .frame(width: 200, height: 200)
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.red, lineWidth: 8)
                    .frame(width: 200, height: 70)
                Text("Tap Me !!")
                    .gesture(tap)
                    .border(Color.red, width: 4)
                .rotationEffect(angle)
            }
            .rotationEffect(.degrees(spinning ? 360 : 0))
            .animation(
                .linear(duration: 1)
                    .repeatForever(autoreverses: false),
                value: spinning ? 360 : 0)
            .onAppear {
                spinning = true
            }
            
            Toggle(isOn: $visible.animation(.linear)) {
                Text("Toggle Control")
            }
            .frame(width:200)

            Button {
//                spinning = !spinning
            } label: {
                Text("Toggle Spinning")
                    .padding(10)
                    .background(
                        Capsule()
                            .stroke(.brown, lineWidth: 3)
                    )
            }
            Spacer()
            if visible {
                Path { path in
                    path.move(to: CGPoint(x: 200, y: 0))
                    path.addLine(to: CGPoint(x: 100, y: 200))
                    path.addLine(to: CGPoint(x: 300, y: 200))
    //                path.addLine(to: CGPoint(x: 200, y: 0))
    //                path.closeSubpath()
                }
                .stroke(.blue, style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
            }
            HStack {
                Image(systemName: "pencil.and.outline")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("Rotate Me")
            }
            .padding(50)
            .background(LinearGradient(colors: [Color.yellow, Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing))
        }
        .gesture(rot)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

