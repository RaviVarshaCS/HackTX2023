import SwiftUI
import MongoKitten


struct ImagePickerView: View {
    @State private var selectedImage: Image? = nil
    @State private var isImagePickerPresented: Bool = false
    @State private var isLoading: Bool = false
    @State private var showResultView: Bool = false
    
    var body: some View {
        VStack {
            if !showResultView {
                if selectedImage != nil {
                    selectedImage!
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                } else {
                    Text("No Image Selected")
                }

                if !isLoading {
                    Button("Select Image") {
                        isImagePickerPresented.toggle()
                    }
                    .padding()
                    .sheet(isPresented: $isImagePickerPresented) {
                        ImagePicker(image: $selectedImage, isLoading: $isLoading, showResultView: $showResultView)
                    }
                } else {
                    ProgressView("Loading...")
                }
            } else {
                Image("testdone")
                NavigationLink("See Results!", destination: ResultView(selectedImage: $selectedImage))
            }
        }
    }
}

struct ResultView: View {
    @Binding var selectedImage: Image?

    var body: some View {
        ScrollView() {
            VStack {
                HStack {
                    Image("8780")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Image("120235")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Image("120241")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
            }
        }

    }
}

struct ImagePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerView()
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    @Binding var image: Image?
    @Binding var isLoading: Bool
    @Binding var showResultView: Bool
    @Environment(\.presentationMode) var presentationMode

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = context.coordinator
        imagePicker.sourceType = .photoLibrary
        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {
    }

    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        var parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                parent.image = Image(uiImage: uiImage)
            }
            parent.isLoading = true

            // Simulate a 9-second loading time
            DispatchQueue.main.asyncAfter(deadline: .now() + 9) {
                self.parent.isLoading = false
                self.parent.showResultView = true
                self.parent.presentationMode.wrappedValue.dismiss()
            }
        }
    }
}
