.class public Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;
.super Ljava/lang/Object;
.source "OFaceLiveConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;
    }
.end annotation


# static fields
.field public static final CAMERA_BACK:I = 0x1

.field public static final CAMERA_FRONT:I = 0x0

.field public static final DEF_BLINK_TH:I = 0x1e

.field public static final DEF_CLOSE_EYE_TH:I = 0xf

.field public static final DEF_NOD_TH:I = 0xa

.field public static final DEF_OPEN_EYE_TH:I = 0x28

.field public static final DEF_OPEN_MOUTH_TH:I = 0x19

.field public static final DEF_RAISE_MILLIS:I = 0x5dc

.field public static final DEF_SHAKE_HEAD_L_TH:I = 0xa

.field public static final DEF_SHAKE_HEAD_R_TH:I = 0xa

.field public static final DEF_SHAKE_HEAD_THD:I = 0x5

.field public static final PUPIL_DISTANCE_MAX:I = 0xa0

.field public static final PUPIL_DISTANCE_MIN:I = 0x4b

.field private static final TAG:Ljava/lang/String; = "OFaceLiveConfig"


# instance fields
.field private checkEnv:Z

.field private debugMode:Z

.field private detectCamera:Z

.field private detectFarNear:Z

.field private detectFingerprint:Z

.field private detectFlash:Z

.field private detectFlashMaxMillis:I

.field private detectMotion:Z

.field private detectMotionMaxMillis:I

.field private detectSensor:Z

.field private encrypt:Z

.field private faceLostAllowTime:I

.field private faceLostDetect:Z

.field private isAudio:Z

.field private isDetectFaceId:Z

.field private isHackDetect:Z

.field private isLog:Z

.field private isOcclusionDetect:Z

.field private isOpenLight:Z

.field private mActionList:Ljava/lang/String;

.field private mActionOrder:Ljava/lang/String;

.field private mAlignEye:I

.field private mAlignMouth:I

.field private mAlignPitch:I

.field private mAlignRoll:I

.field private mAlignYaw:I

.field private mAntiHackFailedTimes:I

.field private mAntiHackSuccessTimes:I

.field private mBlinkTh:I

.field private mBrightnessTh:I

.field private mCameraId:I

.field private mClarityTh:I

.field private mCloseEyeTh:I

.field private mDifficulty:I

.field private mFaceBusiness:Ljava/lang/String;

.field private mFaceRequestId:Ljava/lang/String;

.field private mFaceToken:Ljava/lang/String;

.field private mHackTh:I

.field private mImgCompress:I

.field private mImgHeight:I

.field private mImgWidth:I

.field private mMaskTh:I

.field private mMotionEndDelayTime:I

.field private mMotionImageTempSize:I

.field private mMotionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/Motion;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionStartDelayTime:I

.field private mMotionTimeout:I

.field private mNodDownTh:I

.field private mNodTh:I

.field private mNodUpTh:I

.field private mOpenEyeTh:I

.field private mOpenMouthTh:I

.field private mOverExposeBrightness:I

.field private mOverExposeEntropy:I

.field private mOverExposeHighLightRatio:I

.field private mPitchCalibration:I

.field private mPlayProgressMillis:I

.field private mPrepareTimeout:I

.field private mPubKey:Lcom/opay/face/phoneface/model/PublicKey;

.field private mPupilDistMax:I

.field private mPupilDistMin:I

.field private mQualityTh:I

.field private mRetryCount:I

.field private mSecWaitMillis:I

.field private mShakeCacheNum:I

.field private mShakeHeadLTh:I

.field private mShakeHeadRTh:I

.field private mShakeHeadTh:I

.field private mShakeTh:I

.field private mTimeoutDialogType:I

.field private mTimeoutLimitCount:I

.field private mTraceId:Ljava/lang/String;

.field private mUnderExposeBrightness:I

.field private mUnderExposeEntropy:I

.field private mUnderExposeShadowRatio:I

.field private mVolume:I

.field private mWearGlassesTh:I

.field private mWearMaskTh:I

.field private mWearSunglassesTh:I

.field private raiseMillis:I

.field private saveVideo:Z

.field private shakeDetect:Z

.field private switchCamera:Z

.field private withMotionImage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mCameraId:I

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionTimeout:I

    .line 10
    .line 11
    const/16 v2, 0x14

    .line 12
    .line 13
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPrepareTimeout:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    iput-boolean v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectMotion:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->saveVideo:Z

    .line 19
    .line 20
    const/16 v3, 0x55

    .line 21
    .line 22
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mImgCompress:I

    .line 23
    .line 24
    const/16 v3, 0x4b

    .line 25
    .line 26
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPupilDistMin:I

    .line 27
    .line 28
    const/16 v3, 0xa0

    .line 29
    .line 30
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPupilDistMax:I

    .line 31
    .line 32
    iput-boolean v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isAudio:Z

    .line 33
    .line 34
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mShakeHeadLTh:I

    .line 35
    .line 36
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mShakeHeadRTh:I

    .line 37
    .line 38
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mNodTh:I

    .line 39
    .line 40
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mNodUpTh:I

    .line 41
    .line 42
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mNodDownTh:I

    .line 43
    .line 44
    iput-boolean v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->shakeDetect:Z

    .line 45
    .line 46
    const/16 v3, 0x46

    .line 47
    .line 48
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mShakeTh:I

    .line 49
    .line 50
    const/4 v3, 0x7

    .line 51
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mShakeCacheNum:I

    .line 52
    .line 53
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mDifficulty:I

    .line 54
    .line 55
    new-instance v3, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionList:Ljava/util/List;

    .line 61
    .line 62
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPitchCalibration:I

    .line 63
    .line 64
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mQualityTh:I

    .line 65
    .line 66
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignEye:I

    .line 67
    .line 68
    const/16 v3, 0xf

    .line 69
    .line 70
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignMouth:I

    .line 71
    .line 72
    const/16 v4, 0x8

    .line 73
    .line 74
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignYaw:I

    .line 75
    .line 76
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignPitch:I

    .line 77
    .line 78
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignRoll:I

    .line 79
    .line 80
    const/16 v4, 0x3e8

    .line 81
    .line 82
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionStartDelayTime:I

    .line 83
    .line 84
    const/16 v4, 0x4b0

    .line 85
    .line 86
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionEndDelayTime:I

    .line 87
    .line 88
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->faceLostDetect:Z

    .line 89
    .line 90
    const/16 v4, 0x1e0

    .line 91
    .line 92
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mImgWidth:I

    .line 93
    .line 94
    const/16 v4, 0x280

    .line 95
    .line 96
    iput v4, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mImgHeight:I

    .line 97
    .line 98
    iput-boolean v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isLog:Z

    .line 99
    .line 100
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isDetectFaceId:Z

    .line 101
    .line 102
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isHackDetect:Z

    .line 103
    .line 104
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isOcclusionDetect:Z

    .line 105
    .line 106
    const/16 v2, 0x32

    .line 107
    .line 108
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mWearGlassesTh:I

    .line 109
    .line 110
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mWearMaskTh:I

    .line 111
    .line 112
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mWearSunglassesTh:I

    .line 113
    .line 114
    iput v3, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMaskTh:I

    .line 115
    .line 116
    const/16 v2, 0x22

    .line 117
    .line 118
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mHackTh:I

    .line 119
    .line 120
    const/4 v2, 0x3

    .line 121
    iput v2, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAntiHackSuccessTimes:I

    .line 122
    .line 123
    iput v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAntiHackFailedTimes:I

    .line 124
    .line 125
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mBrightnessTh:I

    .line 126
    .line 127
    const/4 v0, 0x2

    .line 128
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionImageTempSize:I

    .line 129
    .line 130
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->a(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->debugMode:Z

    .line 135
    .line 136
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->b(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mCameraId:I

    .line 141
    .line 142
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->m(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->switchCamera:Z

    .line 147
    .line 148
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->x(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPrepareTimeout:I

    .line 153
    .line 154
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->I(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionTimeout:I

    .line 159
    .line 160
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->T(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectMotion:Z

    .line 165
    .line 166
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->d0(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->saveVideo:Z

    .line 171
    .line 172
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e0(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mImgCompress:I

    .line 177
    .line 178
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->f0(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPupilDistMin:I

    .line 183
    .line 184
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->g0(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPupilDistMax:I

    .line 189
    .line 190
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->c(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isAudio:Z

    .line 195
    .line 196
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->d(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mBlinkTh:I

    .line 201
    .line 202
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->e(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mOpenEyeTh:I

    .line 207
    .line 208
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->f(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mCloseEyeTh:I

    .line 213
    .line 214
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->g(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mOpenMouthTh:I

    .line 219
    .line 220
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->h(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mShakeHeadTh:I

    .line 225
    .line 226
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->i(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mNodTh:I

    .line 231
    .line 232
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->j(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->shakeDetect:Z

    .line 237
    .line 238
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->k(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mShakeTh:I

    .line 243
    .line 244
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->l(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mDifficulty:I

    .line 249
    .line 250
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionList:Ljava/util/List;

    .line 251
    .line 252
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    .line 254
    .line 255
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->n(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {v0}, Lph8;->a(Ljava/util/List;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_0

    .line 264
    .line 265
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionList:Ljava/util/List;

    .line 266
    .line 267
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->n(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Ljava/util/List;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    .line 273
    .line 274
    :cond_0
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->o(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPitchCalibration:I

    .line 279
    .line 280
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->p(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mQualityTh:I

    .line 285
    .line 286
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->q(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignEye:I

    .line 291
    .line 292
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->r(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignMouth:I

    .line 297
    .line 298
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->s(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignYaw:I

    .line 303
    .line 304
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->t(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignPitch:I

    .line 309
    .line 310
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->u(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignRoll:I

    .line 315
    .line 316
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->v(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionStartDelayTime:I

    .line 321
    .line 322
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->w(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionEndDelayTime:I

    .line 327
    .line 328
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->y(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->faceLostDetect:Z

    .line 333
    .line 334
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->z(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->faceLostAllowTime:I

    .line 339
    .line 340
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->A(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mBrightnessTh:I

    .line 345
    .line 346
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->B(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->encrypt:Z

    .line 351
    .line 352
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->C(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->checkEnv:Z

    .line 357
    .line 358
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->D(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionImageTempSize:I

    .line 363
    .line 364
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->E(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectFarNear:Z

    .line 369
    .line 370
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->F(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectFingerprint:Z

    .line 375
    .line 376
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->G(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectFlash:Z

    .line 381
    .line 382
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->H(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectFlashMaxMillis:I

    .line 387
    .line 388
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->J(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectMotionMaxMillis:I

    .line 393
    .line 394
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->K(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mClarityTh:I

    .line 399
    .line 400
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->L(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Lcom/opay/face/phoneface/model/PublicKey;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    iput-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPubKey:Lcom/opay/face/phoneface/model/PublicKey;

    .line 405
    .line 406
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->M(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mTimeoutDialogType:I

    .line 411
    .line 412
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->N(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mSecWaitMillis:I

    .line 417
    .line 418
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->O(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectCamera:Z

    .line 423
    .line 424
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->P(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mTimeoutLimitCount:I

    .line 429
    .line 430
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Q(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mVolume:I

    .line 435
    .line 436
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->R(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectSensor:Z

    .line 441
    .line 442
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->S(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->raiseMillis:I

    .line 447
    .line 448
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->U(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->withMotionImage:Z

    .line 453
    .line 454
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->V(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mOverExposeBrightness:I

    .line 459
    .line 460
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->W(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mOverExposeHighLightRatio:I

    .line 465
    .line 466
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->X(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mOverExposeEntropy:I

    .line 471
    .line 472
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Y(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mUnderExposeBrightness:I

    .line 477
    .line 478
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->Z(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mUnderExposeShadowRatio:I

    .line 483
    .line 484
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->a0(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    iput v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mUnderExposeEntropy:I

    .line 489
    .line 490
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->b0(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)Z

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    iput-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isOpenLight:Z

    .line 495
    .line 496
    invoke-static {p1}, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;->c0(Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig$Builder;)I

    .line 497
    .line 498
    .line 499
    move-result p1

    .line 500
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPlayProgressMillis:I

    .line 501
    .line 502
    return-void
.end method

.method public static synthetic access$5900()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getActionList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mActionList:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getActionOrder()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mActionOrder:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAlignEye()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignEye:I

    .line 2
    .line 3
    return v0
.end method

.method public getAlignMouth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignMouth:I

    .line 2
    .line 3
    return v0
.end method

.method public getAlignPitch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignPitch:I

    .line 2
    .line 3
    return v0
.end method

.method public getAlignRoll()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignRoll:I

    .line 2
    .line 3
    return v0
.end method

.method public getAlignYaw()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignYaw:I

    .line 2
    .line 3
    return v0
.end method

.method public getAntiHackFailedTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAntiHackFailedTimes:I

    .line 2
    .line 3
    return v0
.end method

.method public getAntiHackSuccessTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAntiHackSuccessTimes:I

    .line 2
    .line 3
    return v0
.end method

.method public getBlinkTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mBlinkTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getBrightnessTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mBrightnessTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getCameraId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mCameraId:I

    .line 2
    .line 3
    return v0
.end method

.method public getClarityTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mClarityTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getCloseEyeTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mCloseEyeTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getDetectFlashMaxMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectFlashMaxMillis:I

    .line 2
    .line 3
    return v0
.end method

.method public getDetectMotionMaxMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectMotionMaxMillis:I

    .line 2
    .line 3
    return v0
.end method

.method public getDifficulty()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mDifficulty:I

    .line 2
    .line 3
    return v0
.end method

.method public getFaceBusiness()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mFaceBusiness:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFaceLostAllowTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->faceLostAllowTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getFaceRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mFaceRequestId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFaceToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mFaceToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHackTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mHackTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getImgCompress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mImgCompress:I

    .line 2
    .line 3
    return v0
.end method

.method public getImgHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mImgHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getImgWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mImgWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaskTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMaskTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getMotionEndDelayTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionEndDelayTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getMotionImageTempSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionImageTempSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getMotionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opay/face/phoneface/model/Motion;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMotionStartDelayTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionStartDelayTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getMotionTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public getNodDownTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mNodDownTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getNodTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mNodTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getNodUpTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mNodUpTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getOpenEyeTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mOpenEyeTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getOpenMouthTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mOpenMouthTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getOverExposeBrightness()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mOverExposeBrightness:I

    .line 2
    .line 3
    return v0
.end method

.method public getOverExposeEntropy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mOverExposeEntropy:I

    .line 2
    .line 3
    return v0
.end method

.method public getOverExposeHighLightRatio()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mOverExposeHighLightRatio:I

    .line 2
    .line 3
    return v0
.end method

.method public getPitchCalibration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPitchCalibration:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlayProgressMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPlayProgressMillis:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrepareTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPrepareTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public getPubKey()Lcom/opay/face/phoneface/model/PublicKey;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPubKey:Lcom/opay/face/phoneface/model/PublicKey;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPupilDistMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPupilDistMax:I

    .line 2
    .line 3
    return v0
.end method

.method public getPupilDistMin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPupilDistMin:I

    .line 2
    .line 3
    return v0
.end method

.method public getQualityTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mQualityTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getRaiseMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->raiseMillis:I

    .line 2
    .line 3
    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mRetryCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getSecWaitMillis()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mSecWaitMillis:I

    .line 2
    .line 3
    return v0
.end method

.method public getShakeCacheNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mShakeCacheNum:I

    .line 2
    .line 3
    return v0
.end method

.method public getShakeHeadLTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mShakeHeadLTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getShakeHeadRTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mShakeHeadRTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getShakeHeadTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mShakeHeadTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getShakeTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mShakeTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimeoutDialogType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mTimeoutDialogType:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimeoutLimitCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mTimeoutLimitCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mTraceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnderExposeBrightness()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mUnderExposeBrightness:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnderExposeEntropy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mUnderExposeEntropy:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnderExposeShadowRatio()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mUnderExposeShadowRatio:I

    .line 2
    .line 3
    return v0
.end method

.method public getVolume()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mVolume:I

    .line 2
    .line 3
    return v0
.end method

.method public getWearGlassesTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mWearGlassesTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getWearMaskTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mWearMaskTh:I

    .line 2
    .line 3
    return v0
.end method

.method public getWearSunglassesTh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mWearSunglassesTh:I

    .line 2
    .line 3
    return v0
.end method

.method public isAudio()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isAudio:Z

    .line 2
    .line 3
    return v0
.end method

.method public isCheckEnv()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->checkEnv:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDebugMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->debugMode:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDetectCamera()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectCamera:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDetectFaceId()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isDetectFaceId:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDetectFarNear()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectFarNear:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDetectFingerprint()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectFingerprint:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDetectFlash()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectFlash:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDetectMotion()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectMotion:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDetectSensor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectSensor:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEncrypt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->encrypt:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFaceLostDetect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->faceLostDetect:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHackDetect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isHackDetect:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isLog:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOcclusionDetect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isOcclusionDetect:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOpenLight()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isOpenLight:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSaveVideo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->saveVideo:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShakeDetect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->shakeDetect:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSwitchCamera()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->switchCamera:Z

    .line 2
    .line 3
    return v0
.end method

.method public isWithMotionImage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->withMotionImage:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAntiHackSuccessTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAntiHackSuccessTimes:I

    .line 2
    .line 3
    return-void
.end method

.method public setCameraId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mCameraId:I

    .line 2
    .line 3
    return-void
.end method

.method public setFaceBusiness(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mFaceBusiness:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFaceRequestId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mFaceRequestId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFaceToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mFaceToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHackDetect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isHackDetect:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mRetryCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mTraceId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "OFaceLiveConfig{debugMode="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->debugMode:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", cameraId="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mCameraId:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", switchCamera="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->switchCamera:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", prepareTimeout="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPrepareTimeout:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", motionTimeout="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionTimeout:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", detectMotion="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectMotion:Z

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", saveVideo="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-boolean v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->saveVideo:Z

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", imgCompress="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mImgCompress:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", pupilDistMin="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPupilDistMin:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", pupilDistMax="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPupilDistMax:I

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", isAudio="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-boolean v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->isAudio:Z

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", blinkTh="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mBlinkTh:I

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", openMouthTh="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mOpenMouthTh:I

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", shakeHeadTh="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mShakeHeadTh:I

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", nodTh="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mNodTh:I

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", shakeDetect="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-boolean v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->shakeDetect:Z

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", shakeTh="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mShakeTh:I

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", difficulty="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mDifficulty:I

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, ", mMotionList="

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionList:Ljava/util/List;

    .line 192
    .line 193
    if-nez v1, :cond_0

    .line 194
    .line 195
    const-string v1, "[]"

    .line 196
    .line 197
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, ", pitchCalibration="

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mPitchCalibration:I

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v1, ", qualityTh="

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mQualityTh:I

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v1, ", alignEye="

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignEye:I

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v1, ", alignMouth="

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignMouth:I

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v1, ", alignYaw="

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignYaw:I

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v1, ", alignPitch="

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignPitch:I

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v1, ", alignRoll="

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mAlignRoll:I

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v1, ", motionStartDelayTime="

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionStartDelayTime:I

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v1, ", motionEndDelayTime="

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mMotionEndDelayTime:I

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v1, ", faceLostDetect="

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    iget-boolean v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->faceLostDetect:Z

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v1, ", faceLostAllowTime="

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->faceLostAllowTime:I

    .line 306
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v1, ", brightnessTh="

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    iget v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->mBrightnessTh:I

    .line 316
    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v1, ", encrypt="

    .line 321
    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    iget-boolean v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->encrypt:Z

    .line 326
    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v1, ", detectFingerprint="

    .line 331
    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    iget-boolean v1, p0, Lcom/opay/face/phoneface/ui/config/OFaceLiveConfig;->detectFingerprint:Z

    .line 336
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const/16 v1, 0x7d

    .line 341
    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    return-object v0
.end method
