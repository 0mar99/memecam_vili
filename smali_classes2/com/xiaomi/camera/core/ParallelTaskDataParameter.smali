.class public Lcom/xiaomi/camera/core/ParallelTaskDataParameter;
.super Ljava/lang/Object;
.source "ParallelTaskDataParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/core/ParallelTaskDataParameter$Builder;
    }
.end annotation


# instance fields
.field public anchorPreview:Z

.field public mAlgorithmName:Ljava/lang/String;

.field public mBokehFrontCamera:Z

.field public mCameraPreferredMode:I

.field public mCaptureTime:J

.field public mCvOrientation:I

.field public mCvstyleFilterId:I

.field public mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

.field public mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field public mExposureTime:J

.field public mFilterId:I

.field public mHasCvWaterMark:Z

.field public mHasDualWaterMark:Z

.field public mIsFrontCamera:Z

.field public mIsImageCaptureIntent:Z

.field public mIsMoonMode:Z

.field public mIsSupportZeroDegreeOrientationImage:Z

.field public mIso:I

.field public mJpegQuality:I

.field public mJpegRotation:I

.field public mLightingPattern:I

.field public mLocation:Landroid/location/Location;

.field public mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field public mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field public mMirror:Z

.field public mOrientation:I

.field public mOutputFormat:I

.field public mOutputSize:Landroid/util/Size;

.field public mPictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

.field public mPictureSize:Landroid/util/Size;

.field public mPortraitLightingVersion:I

.field public mPrefix:Ljava/lang/String;

.field public mPreviewSize:Landroid/util/Size;

.field public mRawSize:Landroid/util/Size;

.field public mReprocessBurstShotPicture:Z

.field public mShootOrientation:I

.field public mShootRotation:F

.field public mSiqeType:B

.field public mSuffix:Ljava/lang/String;

.field public mSupportIspHeif:Z

.field public mTiltShiftMode:Ljava/lang/String;

.field public mTimeWaterMarkString:Ljava/lang/String;

.field public mVendorWaterMark:Z


# direct methods
.method public constructor <init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSupportIspHeif:Z

    .line 5
    iput-byte v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSiqeType:B

    .line 6
    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsImageCaptureIntent:Z

    .line 7
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    .line 8
    iput-object p2, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    .line 9
    iput-object p3, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    .line 10
    iput p4, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputFormat:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;ILcom/xiaomi/camera/core/ParallelTaskDataParameter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;-><init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;I)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSupportIspHeif:Z

    .line 13
    iput-byte v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSiqeType:B

    .line 14
    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsImageCaptureIntent:Z

    .line 15
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasCvWaterMark:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasCvWaterMark:Z

    .line 16
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasDualWaterMark:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasDualWaterMark:Z

    .line 17
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMirror:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMirror:Z

    .line 18
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLightingPattern:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLightingPattern:I

    .line 19
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Landroid/util/Size;

    iget-object v1, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    .line 21
    :cond_0
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    if-eqz v0, :cond_1

    .line 22
    new-instance v0, Landroid/util/Size;

    iget-object v1, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    .line 23
    :cond_1
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    if-eqz v0, :cond_2

    .line 24
    new-instance v0, Landroid/util/Size;

    iget-object v1, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    .line 25
    :cond_2
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCvstyleFilterId:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCvstyleFilterId:I

    .line 26
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFilterId:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFilterId:I

    .line 27
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCvOrientation:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCvOrientation:I

    .line 28
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOrientation:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOrientation:I

    .line 29
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegRotation:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegRotation:I

    .line 30
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootRotation:F

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootRotation:F

    .line 31
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootOrientation:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootOrientation:I

    .line 32
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsSupportZeroDegreeOrientationImage:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsSupportZeroDegreeOrientationImage:Z

    .line 33
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 34
    new-instance v0, Landroid/location/Location;

    iget-object v1, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLocation:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLocation:Landroid/location/Location;

    .line 35
    :cond_3
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTimeWaterMarkString:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTimeWaterMarkString:Ljava/lang/String;

    .line 36
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsFrontCamera:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsFrontCamera:Z

    .line 37
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    if-eqz v0, :cond_4

    .line 38
    new-instance v0, Landroid/util/Size;

    iget-object v1, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    .line 39
    :cond_4
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputFormat:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputFormat:I

    .line 40
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mBokehFrontCamera:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mBokehFrontCamera:Z

    .line 41
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAlgorithmName:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAlgorithmName:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    .line 43
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSuffix:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSuffix:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTiltShiftMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTiltShiftMode:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    .line 46
    iget v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegQuality:I

    iput v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegQuality:I

    .line 47
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->anchorPreview:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->anchorPreview:Z

    .line 48
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSupportIspHeif:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSupportIspHeif:Z

    .line 49
    iget-byte v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSiqeType:B

    iput-byte v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSiqeType:B

    .line 50
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 51
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    .line 52
    iget-object v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    .line 53
    iget-boolean v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsImageCaptureIntent:Z

    iput-boolean v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsImageCaptureIntent:Z

    .line 54
    iget-wide v0, p1, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCaptureTime:J

    iput-wide v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCaptureTime:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/xiaomi/camera/core/ParallelTaskDataParameter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;-><init>(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;)V

    return-void
.end method

.method public static synthetic access$1002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFilterId:I

    return p1
.end method

.method public static synthetic access$1102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCvstyleFilterId:I

    return p1
.end method

.method public static synthetic access$1202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCvOrientation:I

    return p1
.end method

.method public static synthetic access$1302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOrientation:I

    return p1
.end method

.method public static synthetic access$1402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegRotation:I

    return p1
.end method

.method public static synthetic access$1502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootRotation:F

    return p1
.end method

.method public static synthetic access$1602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootOrientation:I

    return p1
.end method

.method public static synthetic access$1702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsSupportZeroDegreeOrientationImage:Z

    return p1
.end method

.method public static synthetic access$1802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSupportIspHeif:Z

    return p1
.end method

.method public static synthetic access$1902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;B)B
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSiqeType:B

    return p1
.end method

.method public static synthetic access$2002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->anchorPreview:Z

    return p1
.end method

.method public static synthetic access$202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasCvWaterMark:Z

    return p1
.end method

.method public static synthetic access$2102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method public static synthetic access$2202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIso:I

    return p1
.end method

.method public static synthetic access$2302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mExposureTime:J

    return-wide p1
.end method

.method public static synthetic access$2402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTimeWaterMarkString:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsFrontCamera:Z

    return p1
.end method

.method public static synthetic access$2602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mBokehFrontCamera:Z

    return p1
.end method

.method public static synthetic access$2702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAlgorithmName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/xiaomi/camera/core/PictureInfo;)Lcom/xiaomi/camera/core/PictureInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    return-object p1
.end method

.method public static synthetic access$2902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    return-object p1
.end method

.method public static synthetic access$3002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasDualWaterMark:Z

    return p1
.end method

.method public static synthetic access$3102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSuffix:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$3202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTiltShiftMode:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$3302(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    return-object p1
.end method

.method public static synthetic access$3402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegQuality:I

    return p1
.end method

.method public static synthetic access$3502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPrefix:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$3602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    return-object p1
.end method

.method public static synthetic access$3702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsMoonMode:Z

    return p1
.end method

.method public static synthetic access$3802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mReprocessBurstShotPicture:Z

    return p1
.end method

.method public static synthetic access$3902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPortraitLightingVersion:I

    return p1
.end method

.method public static synthetic access$4002(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCameraPreferredMode:I

    return p1
.end method

.method public static synthetic access$402(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mVendorWaterMark:Z

    return p1
.end method

.method public static synthetic access$4102(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/effect/EffectController$EffectRectAttribute;)Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    return-object p1
.end method

.method public static synthetic access$4202(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsImageCaptureIntent:Z

    return p1
.end method

.method public static synthetic access$502(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCaptureTime:J

    return-wide p1
.end method

.method public static synthetic access$802(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMirror:Z

    return p1
.end method

.method public static synthetic access$902(Lcom/xiaomi/camera/core/ParallelTaskDataParameter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLightingPattern:I

    return p1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mAlgorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public getCameraPreferredMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCameraPreferredMode:I

    return p0
.end method

.method public getCaptureTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCaptureTime:J

    return-wide v0
.end method

.method public getCvOrientation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCvOrientation:I

    return p0
.end method

.method public getCvstyleFilterId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mCvstyleFilterId:I

    return p0
.end method

.method public getDeviceWatermarkParam()Lcom/android/camera/effect/renders/DeviceWatermarkParam;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    return-object p0
.end method

.method public getEffectRectAttribute()Lcom/android/camera/effect/EffectController$EffectRectAttribute;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mEffectRectAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    return-object p0
.end method

.method public getExposureTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mExposureTime:J

    return-wide v0
.end method

.method public getFilterId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mFilterId:I

    return p0
.end method

.method public getIso()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIso:I

    return p0
.end method

.method public getJpegQuality()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegQuality:I

    return p0
.end method

.method public getJpegRotation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mJpegRotation:I

    return p0
.end method

.method public getLightingPattern()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLightingPattern:I

    return p0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method public getMajorAIWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object p0
.end method

.method public getMinorAIWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOrientation:I

    return p0
.end method

.method public getOutputFormat()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputFormat:I

    return p0
.end method

.method public getOutputSize()Landroid/util/Size;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureInfo:Lcom/xiaomi/camera/core/PictureInfo;

    return-object p0
.end method

.method public getPictureSize()Landroid/util/Size;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPortraitLightingVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPortraitLightingVersion:I

    return p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getRawSize()Landroid/util/Size;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mRawSize:Landroid/util/Size;

    return-object p0
.end method

.method public getShootOrientation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootOrientation:I

    return p0
.end method

.method public getShootRotation()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mShootRotation:F

    return p0
.end method

.method public getSiqeType()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSiqeType:B

    return p0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public getSupportZeroDegreeOrientationImage()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsSupportZeroDegreeOrientationImage:Z

    return p0
.end method

.method public getTiltShiftMode()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTiltShiftMode:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeWaterMarkString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTimeWaterMarkString:Ljava/lang/String;

    return-object p0
.end method

.method public getVendorWaterMark()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mVendorWaterMark:Z

    return p0
.end method

.method public hasCvWaterMark()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasCvWaterMark:Z

    return p0
.end method

.method public isAnchorPreview()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->anchorPreview:Z

    return p0
.end method

.method public isBokehFrontCamera()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mBokehFrontCamera:Z

    return p0
.end method

.method public isCinematicAspectRatio()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFrontCamera()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsFrontCamera:Z

    return p0
.end method

.method public isHasDualWaterMark()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mHasDualWaterMark:Z

    return p0
.end method

.method public isHasFrontWaterMark()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isFrontWatermarkEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHasWaterMark()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasDualWaterMark()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isHasFrontWaterMark()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mTimeWaterMarkString:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isImageCaptureIntent()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsImageCaptureIntent:Z

    return p0
.end method

.method public isMirror()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mMirror:Z

    return p0
.end method

.method public isMoonMode()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mIsMoonMode:Z

    return p0
.end method

.method public isSupportIspHeif()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSupportIspHeif:Z

    return p0
.end method

.method public isUltraPixelWaterMark()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isUltraWatermarkEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setSiqeType(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mSiqeType:B

    return-void
.end method

.method public shouldReprocessBurstShotPicture()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mReprocessBurstShotPicture:Z

    return p0
.end method

.method public updateOutputSize(II)V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mOutputSize:Landroid/util/Size;

    return-void
.end method

.method public updatePictureSize(II)V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->mPictureSize:Landroid/util/Size;

    return-void
.end method
