// this gives you a live update of any code changes so you can see how your code chages the storyboard
import SwiftUI
struct ControllerWrapper: UIViewControllerRepresentable {
    typealias UIViewControllerType = //name of view controller file
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ControllerWrapper>) -> ControllerWrapper.UIViewControllerType {
        let storyboard  = UIStoryboard(name: "name of storyboard", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "NAME OF STORYBOARD IDENTIFIER")
    }
    
    func updateUIViewController(_ uiViewController: ControllerWrapper.UIViewControllerType, context: UIViewControllerRepresentableContext<ControllerWrapper>) {
        //do nothing
    }
    

}

struct MyPreview: PreviewProvider {
    typealias Previews = <#type#>
    
    static var previews: some View {
        Group{
            ControllerWrapper()
        }
    }
}
