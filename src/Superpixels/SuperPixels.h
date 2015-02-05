//  SuperPixels.h
//  Robust_tracking_by_detection
//
//  Created by Ivan Bogun on 12/18/14.
//
//

#ifndef __Robust_tracking_by_detection__SuperPixels__
#define __Robust_tracking_by_detection__SuperPixels__

#include <cv.h>
#include "seeds2.h"
#include "helper.h"
#include "armadillo"
class SuperPixels{



public:

    SuperPixels();


    UINT* calculateSegmentation(cv::Mat& img_,int nSuperPixels);
    
    arma::mat calculateSegmentation_armamat(cv::Mat& img_,int nSuperpixels);
    // cv::Mat getBoundary();
    // cv::Mat getLabels();
    // cv::Mat getSegmentation();


};

#endif /* defined(__Robust_tracking_by_detection__SuperPixels__) */