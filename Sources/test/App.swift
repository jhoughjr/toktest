@_exported import TokamakCore
@_exported import TokamakDOM
@_exported import testLibrary

@main
struct TokamakApp: App
{
    static let _configuration = _AppConfiguration(reconciler: .fiber(useDynamicLayout: true))

  var body: some Scene
  {
    WindowGroup("Tokamak App")
    {
      ContentView()
    }
  }
}

struct ContentView: View
{
  var body: some View
  {
    Color.gray
    VStack
    {
       Text("Hello World")
         .font(.title)
         .fontWeight(.bold)
         .foregroundStyle(.dark)
         .frame(alignment: .center)
         .padding()
    }
  }
}