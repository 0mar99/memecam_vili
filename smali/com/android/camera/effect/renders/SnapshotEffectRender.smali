.class public Lcom/android/camera/effect/renders/SnapshotEffectRender;
.super Ljava/lang/Object;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;,
        Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;
    }
.end annotation


# static fields
.field public static final DEFAULT_BLOCK_HEIGHT:I = 0x5dc

.field public static final DEFAULT_BLOCK_WIDTH:I = 0xfa0

.field public static final QUEUE_LIMIT:I = 0x7

.field public static final TAG:Ljava/lang/String; = "SnapshotEffectRender"


# instance fields
.field public mBlockHeight:I

.field public mBlockWidth:I

.field public mContext:Landroid/content/Context;

.field public mDeviceWatermark:Lcom/android/camera/effect/renders/WaterMark;

.field public mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

.field public mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

.field public mEglThread:Landroid/os/HandlerThread;

.field public mEglThreadBlockVar:Landroid/os/ConditionVariable;

.field public mExifNeeded:Z

.field public mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field public mFrameCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

.field public mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

.field public mGraphicBuffer:Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

.field public mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field public mInitGraphicBuffer:Z

.field public mIsImageCaptureIntent:Z

.field public volatile mJpegQueueSize:I

.field public mLastEffectId:I

.field public final mLock:Ljava/lang/Object;

.field public mMemImage:Lcom/android/camera/effect/framework/image/MemImage;

.field public mQuality:I

.field public mRelease:Z

.field public mReleasePending:Z

.field public mRenderCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

.field public mRenderSurface:Lcom/android/camera/effect/framework/gles/PbufferSurface;

.field public mSaverCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mSplitter:Lcom/android/camera/effect/framework/graphics/Splitter;

.field public mSquareModeExtraMargin:I

.field public mTextureId:I

.field public mTimeWatermark:Lcom/android/camera/effect/renders/WaterMark;

.field public mTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTotalCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    .line 3
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    const/16 v1, 0x61

    .line 6
    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I

    .line 7
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLock:Ljava/lang/Object;

    .line 8
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLastEffectId:I

    .line 9
    sget-object v1, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    const-string v2, "SnapshotEffectRender: has been created!!!"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mSaverCallback:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mContext:Landroid/content/Context;

    .line 12
    iput-boolean p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mIsImageCaptureIntent:Z

    .line 13
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mMemImage:Lcom/android/camera/effect/framework/image/MemImage;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lcom/android/camera/effect/framework/image/MemImage;

    invoke-direct {p1}, Lcom/android/camera/effect/framework/image/MemImage;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mMemImage:Lcom/android/camera/effect/framework/image/MemImage;

    .line 15
    :cond_0
    new-instance p1, Lcom/android/camera/effect/framework/utils/CounterUtil;

    invoke-direct {p1}, Lcom/android/camera/effect/framework/utils/CounterUtil;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrameCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    .line 16
    new-instance p1, Lcom/android/camera/effect/framework/utils/CounterUtil;

    invoke-direct {p1}, Lcom/android/camera/effect/framework/utils/CounterUtil;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTotalCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    .line 17
    new-instance p1, Lcom/android/camera/effect/framework/utils/CounterUtil;

    invoke-direct {p1}, Lcom/android/camera/effect/framework/utils/CounterUtil;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRenderCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    .line 18
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "SnapshotEffectProcessor"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    .line 19
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 20
    new-instance p1, Lcom/android/camera/effect/framework/graphics/Splitter;

    invoke-direct {p1}, Lcom/android/camera/effect/framework/graphics/Splitter;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mSplitter:Lcom/android/camera/effect/framework/graphics/Splitter;

    const/16 p1, 0xfa0

    .line 21
    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mBlockWidth:I

    const/16 p1, 0x5dc

    .line 22
    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mBlockHeight:I

    .line 23
    new-instance p1, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    iget-object p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->sendMessageSync(I)V

    .line 25
    iput-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRelease:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mInitGraphicBuffer:Z

    .line 27
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070783

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mSquareModeExtraMargin:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mSaverCallback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    return-object p0
.end method

.method public static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/SnapshotCanvas;)Lcom/android/camera/effect/SnapshotCanvas;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRenderSurface:Lcom/android/camera/effect/framework/gles/PbufferSurface;

    return-object p0
.end method

.method public static synthetic access$1102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/framework/gles/PbufferSurface;)Lcom/android/camera/effect/framework/gles/PbufferSurface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRenderSurface:Lcom/android/camera/effect/framework/gles/PbufferSurface;

    return-object p1
.end method

.method public static synthetic access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mInitGraphicBuffer:Z

    return p0
.end method

.method public static synthetic access$1202(Lcom/android/camera/effect/renders/SnapshotEffectRender;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mInitGraphicBuffer:Z

    return p1
.end method

.method public static synthetic access$1300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTotalCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/EglCore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

    return-object p0
.end method

.method public static synthetic access$1402(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/framework/gles/EglCore;)Lcom/android/camera/effect/framework/gles/EglCore;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

    return-object p1
.end method

.method public static synthetic access$1500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mSquareModeExtraMargin:I

    return p0
.end method

.method public static synthetic access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDeviceWatermark:Lcom/android/camera/effect/renders/WaterMark;

    return-object p0
.end method

.method public static synthetic access$1702(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mDeviceWatermark:Lcom/android/camera/effect/renders/WaterMark;

    return-object p1
.end method

.method public static synthetic access$1800(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getDeviceWaterMark(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTimeWatermark:Lcom/android/camera/effect/renders/WaterMark;

    return-object p0
.end method

.method public static synthetic access$1902(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTimeWatermark:Lcom/android/camera/effect/renders/WaterMark;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mGraphicBuffer:Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getTimeWaterMark(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/framework/graphics/GraphicBuffer;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mGraphicBuffer:Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    return-object p1
.end method

.method public static synthetic access$2100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    return-object p0
.end method

.method public static synthetic access$2102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/FrameBuffer;)Lcom/android/camera/effect/FrameBuffer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    return-object p1
.end method

.method public static synthetic access$2200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTextureId:I

    return p0
.end method

.method public static synthetic access$2202(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTextureId:I

    return p1
.end method

.method public static synthetic access$2300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mMemImage:Lcom/android/camera/effect/framework/image/MemImage;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRenderCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/Splitter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mSplitter:Lcom/android/camera/effect/framework/graphics/Splitter;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mFrameCounter:Lcom/android/camera/effect/framework/utils/CounterUtil;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLastEffectId:I

    return p0
.end method

.method public static synthetic access$2702(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLastEffectId:I

    return p1
.end method

.method public static synthetic access$2800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mTitleMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/storage/ImageSaver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Lcom/android/gallery3d/exif/ExifInterface;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->getExif(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->destroy()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$610(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mJpegQueueSize:I

    return v0
.end method

.method public static synthetic access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mBlockWidth:I

    return p0
.end method

.method public static synthetic access$702(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mBlockWidth:I

    return p1
.end method

.method public static synthetic access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mBlockHeight:I

    return p0
.end method

.method public static synthetic access$802(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mBlockHeight:I

    return p1
.end method

.method public static synthetic access$900(Lcom/android/camera/effect/renders/SnapshotEffectRender;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->calEachBlockHeight(II)I

    move-result p0

    return p0
.end method

.method private calEachBlockHeight(II)I
    .locals 2

    const/4 p0, 0x1

    :goto_0
    mul-int v0, p1, p2

    const v1, 0x5b8d80

    if-le v0, v1, :cond_0

    shr-int/lit8 p2, p2, 0x1

    shl-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method private destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRelease:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    .line 4
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRenderSurface:Lcom/android/camera/effect/framework/gles/PbufferSurface;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/effect/framework/gles/PbufferSurface;->release()V

    .line 6
    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRenderSurface:Lcom/android/camera/effect/framework/gles/PbufferSurface;

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lcom/android/camera/effect/framework/gles/EglCore;->release()V

    .line 9
    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglCore:Lcom/android/camera/effect/framework/gles/EglCore;

    .line 10
    :cond_1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 11
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 12
    sget-object p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    const-string v0, "SnapshotEffectRender: has been released!!!"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getDeviceWaterMark(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 12

    .line 1
    iget-boolean v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHasDualWaterMark:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHasFrontWaterMark:Z

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 3
    iget v10, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    .line 4
    new-instance v11, Lcom/android/camera/effect/renders/CacheKey;

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    .line 5
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getCustomText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v7

    .line 6
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isLTR()Z

    move-result v8

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUiStyle:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v9, v2

    move-object v2, v11

    move v3, v0

    move v4, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/effect/renders/CacheKey;-><init>(IIILjava/lang/String;ZZZ)V

    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getCacheKey()Lcom/android/camera/effect/renders/CacheKey;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/camera/effect/renders/CacheKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    sget-object p1, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    const-string p2, "getDeviceWaterMark: from cache..."

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 9
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOo0()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 10
    iget-boolean p0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHasDualWaterMark:Z

    if-eqz p0, :cond_3

    .line 11
    new-instance v1, Lcom/android/camera/watermark/gen3/DeviceWaterMark;

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    .line 12
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->getCustomText()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v7

    iget v8, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    .line 14
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isLTR()Z

    move-result v9

    move-object v2, v1

    move v3, v0

    move v4, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/watermark/gen3/DeviceWaterMark;-><init>(IIILjava/lang/String;ZIZ)V

    goto :goto_1

    .line 15
    :cond_3
    iget-boolean p0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHasFrontWaterMark:Z

    if-eqz p0, :cond_6

    .line 16
    new-instance v1, Lcom/android/camera/watermark/gen3/DeviceWaterMark;

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    .line 17
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v7

    iget v8, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    .line 18
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isLTR()Z

    move-result v9

    const-string v6, ""

    move-object v2, v1

    move v3, v0

    move v4, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/watermark/gen3/DeviceWaterMark;-><init>(IIILjava/lang/String;ZIZ)V

    goto :goto_1

    .line 19
    :cond_4
    iget-boolean p0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHasDualWaterMark:Z

    if-eqz p0, :cond_5

    .line 20
    iget p0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-static {v0, v10, p0, p2}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->getDeviceWatermark(IIILcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    goto :goto_1

    .line 21
    :cond_5
    iget-boolean p0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHasFrontWaterMark:Z

    if-eqz p0, :cond_6

    .line 22
    iget p0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-static {v0, v10, p0, p2}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->getDeviceFrontWatermark(IIILcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 23
    invoke-virtual {v1, v11}, Lcom/android/camera/effect/renders/WaterMark;->setCacheKey(Lcom/android/camera/effect/renders/CacheKey;)V

    :cond_7
    return-object v1
.end method

.method private getExif(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Lcom/android/gallery3d/exif/ExifInterface;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {p0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 3
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiComment(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-object v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p0
.end method

.method public static getTimeWaterMark(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;
    .locals 12

    .line 1
    iget-object v8, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTimeWaterMarkText:Ljava/lang/String;

    .line 2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget v9, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 4
    iget v10, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    .line 5
    new-instance v11, Lcom/android/camera/effect/renders/CacheKey;

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    .line 6
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v5

    .line 7
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isLTR()Z

    move-result v6

    iget v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUiStyle:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    move-object v0, v11

    move v1, v9

    move v2, v10

    move-object v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/CacheKey;-><init>(IIILjava/lang/String;ZZZ)V

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/WaterMark;->getCacheKey()Lcom/android/camera/effect/renders/CacheKey;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/camera/effect/renders/CacheKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget-object p1, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    const-string p2, "getTimeWaterMark: from cache..."

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 10
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOo0()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 11
    new-instance p0, Lcom/android/camera/watermark/gen3/TimeWaterMark;

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    .line 12
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v5

    .line 13
    invoke-virtual {p2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isLTR()Z

    move-result v6

    move-object v0, p0

    move-object v1, v8

    move v2, v9

    move v3, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/watermark/gen3/TimeWaterMark;-><init>(Ljava/lang/String;IIIZZ)V

    goto :goto_1

    .line 14
    :cond_3
    new-instance p0, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    .line 15
    invoke-virtual {p1}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result v5

    move-object v0, p0

    move-object v1, v8

    move v2, v9

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/watermark/gen2/NewStyleTextWaterMark;-><init>(Ljava/lang/String;IIIZ)V

    .line 16
    :goto_1
    invoke-virtual {p0, v11}, Lcom/android/camera/effect/renders/WaterMark;->setCacheKey(Lcom/android/camera/effect/renders/CacheKey;)V

    return-object p0
.end method


# virtual methods
.method public getResourceFloat(IF)F
    .locals 2

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 3
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 4
    :catch_0
    sget-object p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public isRelease()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mRelease:Z

    if-eqz p0, :cond_0

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

.method public prepareEffectRender(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public processorJpegSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method

.method public releaseIfNeeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mReleasePending:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mEglHandler:Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public setExifNeed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mExifNeeded:Z

    return-void
.end method

.method public setImageSaver(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-void
.end method

.method public setQuality(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x61

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender;->mQuality:I

    :cond_0
    return-void
.end method
