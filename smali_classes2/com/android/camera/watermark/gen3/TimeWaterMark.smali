.class public Lcom/android/camera/watermark/gen3/TimeWaterMark;
.super Lcom/android/camera/effect/renders/WaterMark;
.source "TimeWaterMark.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TimeWaterMark"


# instance fields
.field public mCenterX:I

.field public mCenterY:I

.field public final mIsCinematicAspectRatio:Z

.field public mPaddingX:I

.field public mPaddingY:I

.field public final mWaterHeight:I

.field public final mWaterText:Ljava/lang/String;

.field public final mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field public final mWaterWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIZZ)V
    .locals 1

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/android/camera/effect/renders/WaterMark;-><init>(III)V

    .line 2
    iput-boolean p5, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mIsCinematicAspectRatio:Z

    .line 3
    iput-boolean p6, p0, Lcom/android/camera/effect/renders/WaterMark;->mIsLTR:Z

    .line 4
    invoke-static {p2, p3}, Lcom/android/camera/watermark/WaterMarkUtil;->getWatermarkRatio(II)F

    move-result p5

    .line 5
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterMarkPaddingX()F

    move-result p6

    mul-float/2addr p6, p5

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    and-int/lit8 p6, p6, -0x2

    iput p6, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingX:I

    .line 6
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterMarkPaddingY()F

    move-result p6

    mul-float/2addr p6, p5

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    and-int/lit8 p6, p6, -0x2

    iput p6, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingY:I

    .line 7
    iget-boolean p6, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mIsCinematicAspectRatio:Z

    if-eqz p6, :cond_3

    const/16 p6, 0x5a

    if-eq p4, p6, :cond_0

    const/16 p6, 0x10e

    if-ne p4, p6, :cond_1

    :cond_0
    if-le p2, p3, :cond_1

    move v0, p3

    move p3, p2

    move p2, v0

    .line 8
    :cond_1
    invoke-static {p2, p3}, Lcom/android/camera/watermark/WaterMarkUtil;->getWatermarkCinematicAspectMargin(II)I

    move-result p4

    if-ge p2, p3, :cond_2

    .line 9
    iget p2, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingX:I

    add-int/2addr p2, p4

    iput p2, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingX:I

    goto :goto_0

    .line 10
    :cond_2
    iget p2, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingY:I

    add-int/2addr p2, p4

    iput p2, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingY:I

    .line 11
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterText:Ljava/lang/String;

    .line 12
    invoke-static {p1, p5}, Lcom/android/gallery3d/ui/TimeWaterMarkTexture;->newInstance(Ljava/lang/String;F)Lcom/android/gallery3d/ui/TimeWaterMarkTexture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 13
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterWidth:I

    .line 14
    iget-object p1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterHeight:I

    .line 15
    invoke-direct {p0}, Lcom/android/camera/watermark/gen3/TimeWaterMark;->calcCenterAxis()V

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/watermark/gen3/TimeWaterMark;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimeWaterMark"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private calcCenterAxis()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mIsLTR:Z

    const/16 v1, 0x10e

    const/16 v2, 0xb4

    const/16 v3, 0x5a

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingY:I

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterX:I

    .line 4
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterY:I

    goto/16 :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingX:I

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterX:I

    .line 6
    iget v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingY:I

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterY:I

    goto/16 :goto_0

    .line 7
    :cond_2
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterX:I

    .line 8
    iget v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingX:I

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterY:I

    goto/16 :goto_0

    .line 9
    :cond_3
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterX:I

    .line 10
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterY:I

    goto/16 :goto_0

    .line 11
    :cond_4
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    goto :goto_0

    .line 12
    :cond_5
    iget v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen3/TimeWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterX:I

    .line 13
    iget v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen3/TimeWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterY:I

    goto :goto_0

    .line 14
    :cond_6
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen3/TimeWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterX:I

    .line 15
    iget v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen3/TimeWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterY:I

    goto :goto_0

    .line 16
    :cond_7
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen3/TimeWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterX:I

    .line 17
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen3/TimeWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterY:I

    goto :goto_0

    .line 18
    :cond_8
    iget v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen3/TimeWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterX:I

    .line 19
    iget v0, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/watermark/gen3/TimeWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterY:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterX:I

    return p0
.end method

.method public getCenterY()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterY:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterHeight:I

    return p0
.end method

.method public getPaddingX()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingX:I

    return p0
.end method

.method public getPaddingY()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingY:I

    return p0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterWidth:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeWaterMark{pictureWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pictureHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/renders/WaterMark;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCenterX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCenterY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mCenterY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPaddingX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPaddingY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mPaddingY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaterWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaterHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaterText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mWaterTexture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mWaterTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsCinematicAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;->mIsCinematicAspectRatio:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
