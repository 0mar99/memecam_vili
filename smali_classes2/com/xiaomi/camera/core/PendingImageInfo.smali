.class public Lcom/xiaomi/camera/core/PendingImageInfo;
.super Ljava/lang/Object;
.source "PendingImageInfo.java"


# instance fields
.field public mCameraType:I

.field public mImage:Landroid/media/Image;

.field public mImageType:I

.field public mIsPoolImage:Z


# direct methods
.method public constructor <init>(Landroid/media/Image;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mImage:Landroid/media/Image;

    .line 3
    iput p2, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mCameraType:I

    .line 4
    iput p3, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mImageType:I

    .line 5
    iput-boolean p4, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mIsPoolImage:Z

    return-void
.end method


# virtual methods
.method public getCameraType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mCameraType:I

    return p0
.end method

.method public getImage()Landroid/media/Image;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mImage:Landroid/media/Image;

    return-object p0
.end method

.method public getImageType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mImageType:I

    return p0
.end method

.method public isPoolImage()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/core/PendingImageInfo;->mIsPoolImage:Z

    return p0
.end method
