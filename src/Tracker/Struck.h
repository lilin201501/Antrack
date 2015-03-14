//
//  Struck.h
//  Robust Struck
//
//  Created by Ivan Bogun on 10/6/14.
//  Copyright (c) 2014 Ivan Bogun. All rights reserved.
//

#ifndef __Robust_Struck__Struck__
#define __Robust_Struck__Struck__

#include <stdio.h>
#include <unordered_map>
#include <vector>

#include "OLaRank_old.h"
#include "LocationSampler.h"

#include "../Features/Feature.h"


#include "../Kernels/RBFKernel.h"
#include "../Kernels/IntersectionKernel.h"
#include "../Kernels/IntersectionKernel_fast.h"
#include "../Kernels/ApproximateKernel.h"
#include "../Kernels/LinearKernel.h"
#include "../Kernels/MultiKernel.h"

#include "../Features/RawFeatures.h"
#include "../Features/Haar.h"
#include "../Features/Histogram.h"
#include "../Features/HoG.h"
#include "../Features/HoGandRawFeatures.h"
#include "../Features/MultiFeature.h"


#include "../Datasets/Dataset.h"
#include "../Datasets/EvaluationRun.h"

#include "../Superpixels/Objectness.h"

#include "../Filter/KalmanFilterGenerator.h"


class Struck {
    

    
    OLaRank_old* olarank;
    Feature* feature;
    LocationSampler* samplerForUpdate;
    LocationSampler* samplerForSearch;
    
    KalmanFilter_my filter;
    
    
    cv::Rect lastLocation;
    
    cv::Rect lastLocationFilter;
    cv::Rect lastLocationObjectness;

    cv::Rect lastRectFilterAndDetectorAgreedOn;
    
    
    
    std::unordered_map<int,cv::Mat> frames;
    
    // for plotting support vectors (used only if display==2)
    cv::Mat canvas;
    
    cv::Mat objectnessCanvas;
    
    int gridSearch=2;
    int R=30;
    int framesTracked=0;
    
    bool pretraining;
    bool useFilter;
    bool useObjectness;
    bool scalePrior;
    
    bool updateTracker=true;
    
    int seed=1;
    
    void copyFromRectangleToImage(cv::Mat& canvas,cv::Mat& image,cv::Rect rect,int step,cv::Vec3b color);

    friend std::ostream& operator<<(std::ostream&, const Struck&);
    
public:
    int display;
    std::vector<cv::Rect> boundingBoxes;
    
    Struck();
    
    Struck(OLaRank_old* olarank_,Feature* feature_,LocationSampler* samplerSearch_,LocationSampler* samplerUpdate_,bool useObjectness_,bool scalePrior_,bool useFilter_,int usePretraining_,int display_){
        olarank = olarank_;
        feature = feature_;
        samplerForSearch=samplerSearch_;
        samplerForUpdate = samplerUpdate_;
        useObjectness=useObjectness_;
        scalePrior=scalePrior_;
        useFilter=useFilter_;
        display = display_;
        pretraining=usePretraining_;
    };
    
    void setParameters(OLaRank_old* olarank_,Feature* feature_,LocationSampler* samplerSearch_,LocationSampler* samplerUpdate_,bool useFilter_,int display_){
      
        this->olarank=olarank_;
        this->feature=feature_;
        this->samplerForSearch=samplerSearch_;
        this->samplerForUpdate=samplerUpdate_;
        this->useFilter=useFilter_;
        this->display=display_;
    };
    
    
    static Struck getTracker();
    
    std::vector<cv::Rect> getBoundingBoxes(){
        return this->boundingBoxes;
    };
    
    void videoCapture();
    
    void initialize(cv::Mat& image,cv::Rect& location);
    
    void allocateCanvas(cv::Mat&);
    
    cv::Rect track(cv::Mat& image);
    
    void updateDebugImage(cv::Mat* canvas,cv::Mat& img, cv::Rect &bestLocation,cv::Scalar colorOfBox);
    
    void applyTrackerOnDataset(Dataset* dataset,std::string rootFolder,std::string saveFolder, bool saveResults);
    
    void applyTrackerOnVideo(Dataset* dataset, std::string rootFolder, int videoNumber);
    
    EvaluationRun applyTrackerOnVideoWithinRange(Dataset* dataset,std::string rootFolder,std::string saveFolder,int videoNumber, int frameFrom, int frameTo, bool saveResults=false);
    
    void saveResults(string fileName);
    
    void setFilter(const KalmanFilter_my& var){filter=var;};
    
    std::pair<arma::rowvec, arma::rowvec> weightWithStraddling(cv::Mat& image,arma::rowvec& predictions, std::vector<cv::Rect>& rects,const int nSuperpixels);
    

    void preTraining(cv::Mat&,const cv::Rect& location);
    
    void reset(){
        
        this->olarank->clear();
        this->boundingBoxes.clear();
        this->frames.clear();
        this->framesTracked=0;
    };
};

#endif /* defined(__Robust_Struck__Struck__) */
