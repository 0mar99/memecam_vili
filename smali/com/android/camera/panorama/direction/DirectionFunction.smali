.class public Lcom/android/camera/panorama/direction/DirectionFunction;
.super Ljava/lang/Object;
.source "DirectionFunction.java"


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_NONE:I = -0x1

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2


# instance fields
.field public final mAngle:I

.field public mDirection:I

.field public final mInputHeight:I

.field public final mInputWidth:I

.field public final mMaxHeight:I

.field public final mMaxWidth:I

.field public final mScale:F


# direct methods
.method public constructor <init>(IIIIFI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mDirection:I

    .line 3
    iput p1, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mInputWidth:I

    .line 4
    iput p2, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mInputHeight:I

    .line 5
    iput p5, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mScale:F

    .line 6
    iput p6, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mAngle:I

    .line 7
    iput p3, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mMaxWidth:I

    .line 8
    iput p4, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mMaxHeight:I

    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAngle()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mAngle:I

    return p0
.end method

.method public getDirection()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mDirection:I

    return p0
.end method

.method public getHorizontalPreviewSize()Landroid/util/Size;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mMaxWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    iget v2, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mAngle:I

    const/16 v3, 0x5a

    if-eq v3, v2, :cond_1

    const/16 v3, 0x10e

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p0, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mInputHeight:I

    int-to-float p0, p0

    div-float/2addr p0, v1

    float-to-int p0, p0

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mInputWidth:I

    int-to-float v1, v1

    iget p0, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mScale:F

    div-float/2addr v1, p0

    float-to-int p0, v1

    :goto_1
    and-int/lit8 v0, v0, -0x2

    and-int/lit8 p0, p0, -0x2

    .line 5
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 2

    .line 1
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mInputWidth:I

    iget p0, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mInputHeight:I

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getScale()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mScale:F

    return p0
.end method

.method public getVerticalPreviewSize()Landroid/util/Size;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mMaxHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    iget v2, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mAngle:I

    const/16 v3, 0x5a

    if-eq v3, v2, :cond_1

    const/16 v3, 0x10e

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p0, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mInputWidth:I

    int-to-float p0, p0

    div-float/2addr p0, v1

    float-to-int p0, p0

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mInputHeight:I

    int-to-float v1, v1

    iget p0, p0, Lcom/android/camera/panorama/direction/DirectionFunction;->mScale:F

    div-float/2addr v1, p0

    float-to-int p0, v1

    :goto_1
    and-int/lit8 p0, p0, -0x2

    and-int/lit8 v0, v0, -0x2

    .line 5
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p0, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method
