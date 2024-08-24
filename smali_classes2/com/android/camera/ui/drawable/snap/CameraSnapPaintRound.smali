.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraSnapPaintRound.java"


# static fields
.field public static final BASE_ROUNDING_PROGRESS:F = 0.35f


# instance fields
.field public isDown:Z

.field public isRecordingCircle:Z

.field public isRoundingCircle:Z

.field public mBackgroundBaseAlpha:I

.field public mBackgroundBaseColor:I

.field public mBackgroundBaseWidth:F

.field public mBackgroundCurrentAlpha:I

.field public mBackgroundPaint:Landroid/graphics/Paint;

.field public mBackgroundSrcAlpha:I

.field public mBackgroundSrcWith:F

.field public mBackgroundTargetAlpha:I

.field public mBackgroundTargetWidth:F

.field public mBackgroundWithPercent:F

.field public mBaseRoundRectRadius:F

.field public mBitmapRes:I

.field public mCurrentRoundRectRadius:F

.field public mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

.field public mFixed:Z

.field public mRapidly:Z

.field public mRectF:Landroid/graphics/RectF;

.field public mRoundingProgress:F

.field public mShowCenterBitmap:Z

.field public mSkip:Z

.field public mSrcRoundRectRadius:F

.field public mSrcRoundingProgress:F

.field public mTargetRoundRectRadius:F

.field public mTargetRoundWidthPercent:F

.field public mTargetRoundingProgress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    .line 3
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    .line 4
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    const p1, 0x3f266666    # 0.65f

    .line 5
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    .line 6
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    .line 7
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    const p1, 0x3ea3d70a    # 0.32f

    .line 8
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundWidthPercent:F

    return-void
.end method


# virtual methods
.method public clearBitmap()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBitmapRes:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->recycle()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundWithPercent:F

    mul-float/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sub-float v2, v1, v0

    add-float/2addr v1, v0

    .line 4
    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v4, v3, v0

    add-float/2addr v3, v0

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    if-nez v0, :cond_1

    .line 8
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mShowCenterBitmap:Z

    if-eqz p0, :cond_5

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSkip:Z

    if-eqz v0, :cond_2

    return-void

    .line 12
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRecordingCircle:Z

    if-eqz v0, :cond_3

    .line 13
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    const v3, 0x3f0ccccd    # 0.55f

    mul-float/2addr v2, v3

    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 14
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRoundingCircle:Z

    if-eqz v0, :cond_4

    .line 15
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    iget v2, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    mul-float/2addr v2, v3

    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 16
    :cond_4
    iget v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    mul-float/2addr v0, v1

    .line 17
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleX:F

    sub-float v2, v1, v0

    add-float/2addr v1, v0

    .line 18
    iget v3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mMiddleY:F

    sub-float v4, v3, v0

    add-float/2addr v3, v0

    .line 19
    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    mul-float v3, v0, v2

    mul-float/2addr v0, v2

    iget-object p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public getExternalPattern()Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    return-object p0
.end method

.method public hasSameBitmap(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBitmapRes:I

    if-ne p0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public hasSameTintColor(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->getTintColor()I

    move-result p0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public initPaint(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public prepareRecord(ZZF)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    .line 2
    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isDown:Z

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-lez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p3, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    :goto_0
    if-eqz p2, :cond_2

    .line 4
    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundWidthPercent:F

    mul-float/2addr p1, v0

    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr p1, v0

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    :goto_1
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    .line 5
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundWidthPercent:F

    mul-float/2addr p3, p1

    iput p3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    goto :goto_3

    .line 6
    :cond_2
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    .line 7
    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    iget p3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundWidthPercent:F

    mul-float/2addr p1, p3

    const p3, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p3

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    :goto_2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    :goto_3
    if-eqz p2, :cond_5

    .line 8
    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    if-eqz p1, :cond_4

    const p1, 0x3ed70a3e    # 0.42000002f

    goto :goto_4

    :cond_4
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    :goto_4
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    const p1, 0x3eb33333    # 0.35f

    .line 9
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    goto :goto_6

    .line 10
    :cond_5
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    .line 11
    iget-boolean p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_5
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    :goto_6
    return-void
.end method

.method public resetFixed()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mFixed:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    .line 3
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    .line 4
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    const v0, 0x3f266666    # 0.65f

    .line 5
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    .line 6
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    .line 7
    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    return-void
.end method

.method public resetRecordingState()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->resetRecordingState()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->isRecording:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRecordingCircle:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isRoundingCircle:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSkip:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isDown:Z

    return-void
.end method

.method public seTargetRoundingProgress(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    return-void
.end method

.method public setBackgroundColor(IF)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundBaseColor:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundBaseWidth:F

    .line 4
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundWithPercent:F

    .line 5
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundSrcWith:F

    .line 6
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundTargetWidth:F

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundBaseAlpha:I

    .line 8
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundSrcAlpha:I

    .line 9
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundCurrentAlpha:I

    .line 10
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundTargetAlpha:I

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    :cond_1
    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundBaseWidth:F

    .line 16
    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundWithPercent:F

    .line 17
    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundSrcWith:F

    .line 18
    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundTargetWidth:F

    .line 19
    iget-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 p1, 0xff

    .line 20
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundBaseAlpha:I

    .line 21
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundSrcAlpha:I

    .line 22
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundCurrentAlpha:I

    .line 23
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundTargetAlpha:I

    :goto_0
    return-void
.end method

.method public setBackgroundTargetAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundCurrentAlpha:I

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundSrcAlpha:I

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundTargetAlpha:I

    return-void
.end method

.method public setBackgroundTargetWidth(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundWithPercent:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundSrcWith:F

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundTargetWidth:F

    return-void
.end method

.method public setBitmapPatternDirectResult()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->directlyResult()V

    return-void
.end method

.method public setBitmapPatternTargetAlpha(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->prepareAlpha(II)V

    return-void
.end method

.method public setBitmapPatternTargetScale(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->setTargetScale(F)V

    return-void
.end method

.method public setFixedRoundRectRadius(F)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mFixed:Z

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    .line 3
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    return-void
.end method

.method public setFixedRoundingProgress(F)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mFixed:Z

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    .line 3
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    return-void
.end method

.method public setRapidly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRapidly:Z

    return-void
.end method

.method public setShowCenterBitmap(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mShowCenterBitmap:Z

    return-void
.end method

.method public setTargetRoundRectRadius(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    .line 2
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    return-void
.end method

.method public setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mFixed:Z

    if-nez v0, :cond_2

    .line 3
    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isDown:Z

    if-eqz p1, :cond_0

    .line 4
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    .line 5
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstWidthPercent:F

    const v0, 0x3e8f5c29    # 0.28f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    .line 7
    iget p1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mDstWidthPercent:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    .line 8
    :goto_0
    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->isDown:Z

    if-eqz p1, :cond_1

    .line 9
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    const p1, 0x3eb33333    # 0.35f

    .line 10
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    goto :goto_1

    .line 11
    :cond_1
    iget p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    goto :goto_1

    .line 13
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    .line 14
    iget v1, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentWidthPercent:F

    div-float/2addr p1, v1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    :goto_1
    return-object p0
.end method

.method public showTargetBitmap(Landroid/content/Context;II)V
    .locals 2

    .line 1
    iput p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBitmapRes:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mShowCenterBitmap:Z

    .line 3
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_0
    instance-of p1, v0, Landroid/graphics/drawable/VectorDrawable;

    if-nez p1, :cond_2

    instance-of p1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCenterVV;->getBitmapFromVectorDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8
    :goto_1
    new-instance p2, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;-><init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;Landroid/graphics/Bitmap;I)V

    iput-object p2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    return-void
.end method

.method public updateValue(F)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->updateValue(F)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mExternalPattern:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRoundPatternBitmap;->updateValue(F)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundingProgress:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundingProgress:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->calculateCurrentValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mRoundingProgress:F

    .line 5
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mSrcRoundRectRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mTargetRoundRectRadius:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->calculateCurrentValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mCurrentRoundRectRadius:F

    .line 6
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundSrcWith:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundTargetWidth:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->calculateCurrentValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundWithPercent:F

    .line 7
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundCurrentAlpha:I

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundTargetAlpha:I

    if-eq v0, v1, :cond_1

    .line 8
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundSrcAlpha:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;->calculateCurrentValueByInteger(IIF)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundCurrentAlpha:I

    .line 9
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintRound;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    return-void
.end method
