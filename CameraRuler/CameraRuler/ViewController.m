//
//  ViewController.m
//  CameraRuler
//
//  Created by sungbeomcho on 2016. 5. 4..
//
//

#import "ViewController.h"

@interface ViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) UIImagePickerController *cameraController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = NO;
    
    if ( [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        _cameraController = [[UIImagePickerController alloc] init];
        _cameraController.delegate = self;
        _cameraController.sourceType = UIImagePickerControllerSourceTypeCamera;
        _cameraController.cameraDevice = UIImagePickerControllerCameraDeviceFront;
//        _cameraController.showsCameraControls = NO;
//        _cameraController.toolbarHidden = YES;
        _cameraController.accessibilityElementsHidden = YES;
//        _cameraController.navigationBarHidden = YES;
        _cameraController.edgesForExtendedLayout = UIRectEdgeNone;
        
        _cameraController.edgesForExtendedLayout = UIRectEdgeNone;
        _cameraController.extendedLayoutIncludesOpaqueBars = NO;
        
        [self.view addSubview:_cameraController.view];
        [_cameraController viewWillAppear:YES];
        [_cameraController viewDidAppear:YES];
    }
}

- (BOOL)prefersStatusBarHidden {
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
