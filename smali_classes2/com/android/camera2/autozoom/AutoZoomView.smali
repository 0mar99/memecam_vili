.class public Lcom/android/camera2/autozoom/AutoZoomView;
.super Landroid/view/View;
.source "AutoZoomView.java"

# interfaces
.implements Lcom/android/camera2/autozoom/IObjectView;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "AutoZoomView"

.field public static final TAP_INTERVAL:J = 0x3e8L

.field public static final TOLERATE_Y:F = 10.0f


# instance fields
.field public mAutoZoomActiveObjects:[I

.field public mAutoZoomBound:Landroid/graphics/RectF;

.field public mAutoZoomPausedObjects:[I

.field public mAutoZoomSelectedObjects:[I

.field public mAutoZoomStatus:I

.field public mBeginLost:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mBoundWidth:F

.field public final mCameraActivity:Lcom/android/camera/Camera;

.field public mEndLost:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsVideoCastState:Z

.field public mIsVisible:Z

.field public mLastTapTime:J

.field public mPathPaint:Landroid/graphics/Paint;

.field public mPreviewSize:Landroid/util/Size;

.field public mRectPaint:Landroid/graphics/Paint;

.field public mTolerateY:I

.field public mTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera2/autozoom/AutoZoomTracker;",
            ">;"
        }
    .end annotation
.end field

.field public mVideoCastAutoZoomRect:Landroid/graphics/Rect;

.field public mViewActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mViewEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera2/autozoom/AutoZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera2/autozoom/AutoZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera2/autozoom/AutoZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mTrackers:Ljava/util/List;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 6
    iput p2, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mBoundWidth:F

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mIsVisible:Z

    .line 8
    check-cast p1, Lcom/android/camera/Camera;

    iput-object p1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mCameraActivity:Lcom/android/camera/Camera;

    .line 9
    invoke-direct {p0}, Lcom/android/camera2/autozoom/AutoZoomView;->init()V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera2/autozoom/AutoZoomView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomStatus:I

    return p1
.end method

.method public static synthetic access$102(Lcom/android/camera2/autozoom/AutoZoomView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomBound:Landroid/graphics/RectF;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/android/camera2/autozoom/AutoZoomView;[I)[I
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomPausedObjects:[I

    return-object p1
.end method

.method public static synthetic access$302(Lcom/android/camera2/autozoom/AutoZoomView;[I)[I
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomActiveObjects:[I

    return-object p1
.end method

.method public static synthetic access$402(Lcom/android/camera2/autozoom/AutoZoomView;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mLastTapTime:J

    return-wide p1
.end method

.method public static synthetic access$502(Lcom/android/camera2/autozoom/AutoZoomView;[I)[I
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomSelectedObjects:[I

    return-object p1
.end method

.method private fillBoundsInOverlay(I[F)Landroid/graphics/RectF;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mPreviewSize:Landroid/util/Size;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    return-object v1

    .line 2
    :cond_1
    array-length v0, p2

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 v2, p1, 0x3

    if-gt v0, v2, :cond_2

    return-object v1

    .line 3
    :cond_2
    aget v0, p2, p1

    add-int/lit8 v1, p1, 0x1

    .line 4
    aget v1, p2, v1

    add-int/lit8 p1, p1, 0x2

    .line 5
    aget p1, p2, p1

    .line 6
    aget p2, p2, v2

    .line 7
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v0, v3

    iget-object v4, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mPreviewSize:Landroid/util/Size;

    .line 8
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v1, v4

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mPreviewSize:Landroid/util/Size;

    .line 9
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    add-float/2addr v1, p2

    iget-object p1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mPreviewSize:Landroid/util/Size;

    .line 10
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 11
    invoke-static {v2}, Lcom/android/camera2/autozoom/AutoZoomUtils;->fromVidhanceCoordinateSystem(Landroid/graphics/RectF;)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/camera2/autozoom/AutoZoomUtils;->rotateFromVidhance(Landroid/content/Context;Landroid/graphics/RectF;)V

    .line 13
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-direct {p1, p2, p0}, Landroid/util/Size;-><init>(II)V

    .line 14
    invoke-static {v2, p1}, Lcom/android/camera2/autozoom/AutoZoomUtils;->normalizedRectToSize(Landroid/graphics/RectF;Landroid/util/Size;)V

    return-object v2
.end method

.method private getTapedRect(FF)Landroid/graphics/RectF;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x3dcccccd    # 0.1f

    sub-float/2addr p1, v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p2, p0

    sub-float/2addr p2, v0

    .line 3
    new-instance p0, Landroid/graphics/RectF;

    const v0, 0x3e4ccccd    # 0.2f

    add-float v1, p1, v0

    add-float/2addr v0, p2

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method private init()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mViewEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mViewActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mBeginLost:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mEndLost:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mRectPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mRectPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mPathPaint:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mPathPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mBoundWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0603a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2}, Lcom/android/camera2/autozoom/AutoZoomUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mTolerateY:I

    .line 14
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 15
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 16
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 17
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mIsVideoCastState:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isLost()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomActiveObjects:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomPausedObjects:[I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/autozoom/AutoZoomView;->isMoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomSelectedObjects:[I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isLosting()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/autozoom/AutoZoomView;->isMoving()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomSelectedObjects:[I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomActiveObjects:[I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomPausedObjects:[I

    if-eqz p0, :cond_0

    .line 3
    aget v0, v0, v1

    aget p0, p0, v1

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private isTrackingNotLost()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomActiveObjects:[I

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomPausedObjects:[I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private tapAt(FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mViewEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mPreviewSize:Landroid/util/Size;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mLastTapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/AutoZoomModuleProtocol;->impl2()Lcom/android/camera/protocol/protocols/AutoZoomModuleProtocol;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mTrackers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_3

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0, v2}, Lcom/android/camera/protocol/protocols/AutoZoomModuleProtocol;->setAutoZoomStopCapture(I)V

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/autozoom/AutoZoomView;->getTapedRect(FF)Landroid/graphics/RectF;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/camera2/autozoom/AutoZoomUtils;->rotateToVidhance(Landroid/content/Context;Landroid/graphics/RectF;)V

    .line 9
    invoke-static {p1}, Lcom/android/camera2/autozoom/AutoZoomUtils;->toVidhanceCoordinateSystem(Landroid/graphics/RectF;)V

    .line 10
    iget-object p2, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mPreviewSize:Landroid/util/Size;

    invoke-static {p1, p2}, Lcom/android/camera2/autozoom/AutoZoomUtils;->normalizedRectToSize(Landroid/graphics/RectF;Landroid/util/Size;)V

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;->impl2()Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 12
    invoke-virtual {p0, v3}, Lcom/android/camera2/autozoom/AutoZoomView;->setViewActive(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera2/autozoom/AutoZoomView;->isViewVisibile()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_4
    invoke-interface {p2, p1}, Lcom/android/camera/protocol/protocols/AutoZoomViewProtocol;->onTrackingStarted(Landroid/graphics/RectF;)V

    .line 16
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mLastTapTime:J

    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    new-instance v0, Lcom/android/camera2/autozoom/AutoZoomView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/camera2/autozoom/AutoZoomView$2;-><init>(Lcom/android/camera2/autozoom/AutoZoomView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public feedData(Lcom/android/camera2/autozoom/AutoZoomCaptureResult;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mViewEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mViewActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mPreviewSize:Landroid/util/Size;

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera2/autozoom/AutoZoomCaptureResult;->getAutoZoomBounds()[F

    move-result-object v0

    if-eqz v0, :cond_6

    .line 5
    invoke-virtual {p1}, Lcom/android/camera2/autozoom/AutoZoomCaptureResult;->getAutoZoomStatus()I

    move-result v1

    iput v1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomStatus:I

    .line 6
    invoke-virtual {p1}, Lcom/android/camera2/autozoom/AutoZoomCaptureResult;->getAutoZoomActiveObjects()[I

    move-result-object v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move v4, v3

    .line 8
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 9
    aget v5, v1, v4

    .line 10
    new-instance v6, Lcom/android/camera2/autozoom/AutoZoomTracker;

    .line 11
    invoke-virtual {p1}, Lcom/android/camera2/autozoom/AutoZoomCaptureResult;->getAutoZoomObjectBoundsStabilized()[F

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lcom/android/camera2/autozoom/AutoZoomView;->fillBoundsInOverlay(I[F)Landroid/graphics/RectF;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lcom/android/camera2/autozoom/AutoZoomTracker;-><init>(ILandroid/graphics/RectF;)V

    .line 12
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_3
    iput-object v2, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mTrackers:Ljava/util/List;

    .line 14
    invoke-virtual {p1}, Lcom/android/camera2/autozoom/AutoZoomCaptureResult;->getAutoZoomPausedObjects()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomPausedObjects:[I

    .line 15
    invoke-virtual {p1}, Lcom/android/camera2/autozoom/AutoZoomCaptureResult;->getAutoZoomActiveObjects()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomActiveObjects:[I

    .line 16
    invoke-virtual {p1}, Lcom/android/camera2/autozoom/AutoZoomCaptureResult;->getAutoZoomSelectedObjects()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomSelectedObjects:[I

    .line 17
    invoke-direct {p0, v3, v0}, Lcom/android/camera2/autozoom/AutoZoomView;->fillBoundsInOverlay(I[F)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomBound:Landroid/graphics/RectF;

    .line 18
    invoke-static {}, Lcom/android/camera/protocol/protocols/AutoZoomModuleProtocol;->impl2()Lcom/android/camera/protocol/protocols/AutoZoomModuleProtocol;

    move-result-object p1

    .line 19
    invoke-direct {p0}, Lcom/android/camera2/autozoom/AutoZoomView;->isLosting()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mBeginLost:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mBeginLost:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    if-eqz p1, :cond_4

    .line 21
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/AutoZoomModuleProtocol;->onTrackLosting()V

    .line 22
    :cond_4
    invoke-direct {p0}, Lcom/android/camera2/autozoom/AutoZoomView;->isLost()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mBeginLost:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mEndLost:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mEndLost:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    if-eqz p1, :cond_5

    .line 24
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/AutoZoomModuleProtocol;->onTrackLost()V

    .line 25
    :cond_5
    iget-object p1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomBound:Landroid/graphics/RectF;

    if-eqz p1, :cond_6

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_6
    return-void
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public isMoving()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomStatus:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isViewActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mViewActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isViewEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mViewEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isViewVisibile()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mIsVideoCastState:Z

    const v1, 0x7f060362

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw mIsVisible = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mIsVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutoZoomView"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mIsVisible:Z

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x9

    const/4 v2, 0x0

    mul-int/lit8 v3, v1, 0x4

    .line 8
    div-int/lit8 v3, v3, 0x10

    mul-int/lit8 v1, v1, 0xc

    .line 9
    div-int/lit8 v1, v1, 0x10

    .line 10
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mVideoCastAutoZoomRect:Landroid/graphics/Rect;

    .line 11
    iget-object p0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mViewEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mViewActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomBound:Landroid/graphics/RectF;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomBound:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 17
    invoke-direct {p0}, Lcom/android/camera2/autozoom/AutoZoomView;->isLost()Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mAutoZoomBound:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/TopAlert;->isExtraMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera2/autozoom/AutoZoomView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mViewEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isVideoModule()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 4
    iget v2, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mTolerateY:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->tapAt(FF)V

    :goto_0
    move v1, v2

    goto :goto_1

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mViewEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/camera/ui/V6GestureRecognizer;->isSupportScrollChangeModule()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    iget-object p0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_6
    return v1
.end method

.method public setPreviewSize(Landroid/util/Size;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public setVideoCastLayoutType(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mIsVisible:Z

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVideoCastAutoZoomLayoutType  mIsVisible = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mIsVisible:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoZoomView"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setViewActive(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mBeginLost:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 2
    iget-object v0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mEndLost:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 3
    iget-object p0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mViewActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method public setViewEnable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/autozoom/AutoZoomView;->mViewEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method public setViewVisibility(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/autozoom/AutoZoomView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera2/autozoom/AutoZoomView$1;-><init>(Lcom/android/camera2/autozoom/AutoZoomView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
