.class public Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;
.super Ljava/lang/Object;
.source "CacheImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/zxing/decoders/CacheImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameInfo"
.end annotation


# instance fields
.field public mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

.field public mFileName:Ljava/lang/String;

.field public mHeight:I

.field public mImageWrapper:Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;

.field public mStrides:[I

.field public mTimestamp:J

.field public mWidth:I


# direct methods
.method public constructor <init>(JII[ILjava/lang/String;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mTimestamp:J

    .line 3
    iput p3, p0, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mWidth:I

    .line 4
    iput p4, p0, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mHeight:I

    .line 5
    iput-object p5, p0, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mStrides:[I

    .line 6
    iput-object p6, p0, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mFileName:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    return-void
.end method


# virtual methods
.method public setImage(Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/zxing/decoders/CacheImageDecoder$FrameInfo;->mImageWrapper:Lcom/android/zxing/decoders/CacheImageDecoder$ImageWrapper;

    return-void
.end method
