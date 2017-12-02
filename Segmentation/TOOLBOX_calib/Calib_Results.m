% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1441.814879648494298 ; 1443.277912677505810 ];

%-- Principal point:
cc = [ 640.796098979607450 ; 468.159849043254553 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ 0.139821582642492 ; -0.315517743492187 ; 0.001231205863463 ; -0.003486738253984 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 45.752382860067279 ; 46.003848091129491 ];

%-- Principal point uncertainty:
cc_error = [ 27.914181131884053 ; 17.366002084555024 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.049168687124446 ; 0.201790519978951 ; 0.004608122754532 ; 0.005930798194522 ; 0.000000000000000 ];

%-- Image size:
nx = 1280;
ny = 960;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 10;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -3.120767e+00 ; 1.487782e-01 ; -7.039325e-02 ];
Tc_1  = [ -1.388461e+02 ; 1.226402e+02 ; 4.053300e+02 ];
omc_error_1 = [ 1.113291e-02 ; 1.798410e-03 ; 2.047577e-02 ];
Tc_error_1  = [ 7.961093e+00 ; 4.956618e+00 ; 1.360942e+01 ];

%-- Image #2:
omc_2 = [ 1.971920e+00 ; 1.832895e+00 ; 3.340609e-01 ];
Tc_2  = [ -1.517438e+02 ; -1.100132e+02 ; 4.052987e+02 ];
omc_error_2 = [ 1.405039e-02 ; 1.303993e-02 ; 1.890281e-02 ];
Tc_error_2  = [ 7.936865e+00 ; 4.952412e+00 ; 1.334338e+01 ];

%-- Image #3:
omc_3 = [ 2.854855e+00 ; -1.201651e-01 ; 6.899107e-01 ];
Tc_3  = [ -1.584182e+02 ; 9.033303e+01 ; 4.142766e+02 ];
omc_error_3 = [ 1.485360e-02 ; 4.554001e-03 ; 2.723510e-02 ];
Tc_error_3  = [ 8.117957e+00 ; 5.132002e+00 ; 1.399875e+01 ];

%-- Image #4:
omc_4 = [ -3.078564e+00 ; -3.579201e-02 ; 1.157716e-01 ];
Tc_4  = [ -1.984526e+02 ; 7.948464e+01 ; 5.520495e+02 ];
omc_error_4 = [ 1.323288e-02 ; 2.552335e-03 ; 2.312595e-02 ];
Tc_error_4  = [ 1.044789e+01 ; 6.697992e+00 ; 1.740134e+01 ];

%-- Image #5:
omc_5 = [ 3.160919e+00 ; -2.189609e-01 ; -1.443773e-01 ];
Tc_5  = [ -8.026710e+01 ; 5.576383e+01 ; 6.116354e+02 ];
omc_error_5 = [ 5.306273e-02 ; 8.086668e-03 ; 8.449880e-02 ];
Tc_error_5  = [ 1.175409e+01 ; 7.362357e+00 ; 1.951339e+01 ];

%-- Image #6:
omc_6 = [ 1.477141e+00 ; 1.573116e+00 ; -1.140206e+00 ];
Tc_6  = [ -1.388536e+01 ; -1.800923e+00 ; 5.052792e+02 ];
omc_error_6 = [ 1.627803e-02 ; 2.148838e-02 ; 2.589962e-02 ];
Tc_error_6  = [ 9.814758e+00 ; 6.107560e+00 ; 1.521998e+01 ];

%-- Image #7:
omc_7 = [ 1.310312e+00 ; 1.862416e+00 ; -1.384965e+00 ];
Tc_7  = [ -3.926541e+01 ; -5.284733e+01 ; 5.100718e+02 ];
omc_error_7 = [ 1.294044e-02 ; 2.140251e-02 ; 1.887281e-02 ];
Tc_error_7  = [ 9.811504e+00 ; 6.237610e+00 ; 1.405524e+01 ];

%-- Image #8:
omc_8 = [ 1.661673e+00 ; 2.278380e+00 ; -3.569102e-02 ];
Tc_8  = [ -8.026191e+01 ; -6.610071e+01 ; 5.146079e+02 ];
omc_error_8 = [ 3.872441e-02 ; 5.439777e-02 ; 9.276015e-02 ];
Tc_error_8  = [ 1.002798e+01 ; 6.233851e+00 ; 1.753832e+01 ];

%-- Image #9:
omc_9 = [ 1.756392e+00 ; 6.111241e-01 ; -3.462264e-01 ];
Tc_9  = [ -4.457365e+01 ; 1.048627e+01 ; 4.051020e+02 ];
omc_error_9 = [ 1.865355e-02 ; 1.998976e-02 ; 2.573097e-02 ];
Tc_error_9  = [ 7.831646e+00 ; 4.926961e+00 ; 1.390646e+01 ];

%-- Image #10:
omc_10 = [ -2.473943e+00 ; -1.854114e+00 ; 6.384854e-01 ];
Tc_10  = [ -3.066166e+01 ; 4.605378e+01 ; 9.995772e+02 ];
omc_error_10 = [ 2.805064e-02 ; 2.105649e-02 ; 5.034598e-02 ];
Tc_error_10  = [ 1.943596e+01 ; 1.191729e+01 ; 2.828944e+01 ];

