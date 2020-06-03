//
//  PhotoTaking.swift
//  FoodCam
//
//  Created by Alexis Wei on 5/29/20.
//  Copyright © 2020 Alexis Wei. All rights reserved.
//

import SwiftUI
import AVFoundation
import UIKit




struct PhotoTaking: View {
    
    @State var alertVisible: Bool = false
    

    init(){
        askPermission()
    }
    
    var body: some View {
        
        return Text("Hello")
            .alert(isPresented: $alertVisible) {
            Alert (title: Text("Camera access required to take photos"),
                   message: Text("Go to Settings?"),
                   primaryButton: .default(Text("Settings"), action: {
                       UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
                   }),
                   secondaryButton: .default(Text("Cancel")))
               }
            
            
    }
    
    
    
    func askPermission() {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
            case .authorized: // The user has previously granted access to the camera.
                print("authorized")
                self.startSession()
    
            case .notDetermined: // The user has not yet been asked for camera access.
                print("not determined")
                AVCaptureDevice.requestAccess(for: .video) { granted in
                    if granted {
                        self.startSession()
                    }
                }
            case .restricted:
                print("restricted")
                self.goToSettings()
            
            case .denied:
                print("denied")
                self.goToSettings()
            
            @unknown default:
                return
        }
    }
    
    func goToSettings(){
        print(alertVisible)
        self.alertVisible = true
        print(alertVisible)

    }
    

    
    func startSession(){
        let captureSession = AVCaptureSession()

        captureSession.beginConfiguration()
        let videoDevice = AVCaptureDevice.default(.builtInWideAngleCamera,
                                                  for: .video, position: .unspecified)
        guard
            let videoDeviceInput = try? AVCaptureDeviceInput(device: videoDevice!),
            captureSession.canAddInput(videoDeviceInput)
            else { return }
        captureSession.addInput(videoDeviceInput)
        
        let photoOutput = AVCapturePhotoOutput()
        guard captureSession.canAddOutput(photoOutput) else { return }
        captureSession.sessionPreset = .photo
        captureSession.addOutput(photoOutput)
        captureSession.commitConfiguration()

    }
    
    
    

//
//
//    let vc = UIImagePickerController()
//    vc.sourceType = .camera
//    vc.allowsEditing = true
//    vc.delegate = self
//    present(vc, animated: true)
//
//
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        picker.dismiss(animated: true)
//
//        guard let image = info[.editedImage] as? UIImage else {
//            print("No image found")
//            return
//        }
//
//        // print out the image size as a test
//        print(image.size)
//    }
    


}





struct PhotoTaking_Previews: PreviewProvider {
    static var previews: some View {
        PhotoTaking()
    }
}
