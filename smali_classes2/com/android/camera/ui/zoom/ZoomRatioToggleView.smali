.class public Lcom/android/camera/ui/zoom/ZoomRatioToggleView;
.super Landroid/view/ViewGroup;
.source "ZoomRatioToggleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;,
        Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;,
        Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;
    }
.end annotation


# static fields
.field public static final INVALID_INDEX:I = -0x1

.field public static final INVALID_ZOOM_RATIO:F = -1.0f

.field public static final TAG:Ljava/lang/String; = "ZoomRatioToggleView"

.field public static final UI_DEBUG_ENABLED:Z


# instance fields
.field public mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

.field public mCurrentModule:I

.field public mCurrentSelectedChildIndex:I

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field public final mHandler:Landroid/os/Handler;

.field public mHasLongPressed:Z

.field public final mIndexUpdater:Ljava/lang/Runnable;

.field public mIsRTL:Z

.field public mIsSuppressed:Z

.field public mIsVerType:Z

.field public mItemGap:I

.field public mItemSize:I

.field public mItemWidth:I

.field public mPaint:Landroid/graphics/Paint;

.field public mRect:Landroid/graphics/Rect;

.field public mUseSliderType:I

.field public mZoomArray:[F

.field public mZoomRatio:F

.field public mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

.field public myAccessHelper:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ZoomRatioToggleView"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->UI_DEBUG_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p2, 0xa3

    .line 5
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderType:I

    .line 7
    iput-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    .line 8
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mHandler:Landroid/os/Handler;

    .line 9
    new-instance p2, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$1;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    .line 10
    new-instance p2, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

    .line 11
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/animation/AnimatorSet;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    :cond_0
    return-void
.end method

.method public static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->clickChildAtIndex(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setSelectedChildIndex()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mHasLongPressed:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getContainingChildIndex(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isSupportUseSlider(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->toShowView()Z

    move-result p0

    return p0
.end method

.method private announceCurrentZoomRatioForAccessibility()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private clickChildAtIndex(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clickChildAtIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomRatioToggleView"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-ne p1, v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isSupportUseSlider(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-interface {v0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->toShowSlideView(Lcom/android/camera/ui/zoom/ZoomTextImageView;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-eqz p1, :cond_2

    .line 8
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatio(F)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz p0, :cond_2

    .line 10
    invoke-interface {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->onClick(Lcom/android/camera/ui/zoom/ZoomTextImageView;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0, p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->showZoomChildView(ZIZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static debugUi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->UI_DEBUG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getContainingChildIndex(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 8
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    return p0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_7

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 11
    iget-boolean v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsRTL:Z

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    .line 12
    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_5

    .line 14
    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    .line 15
    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_5

    .line 17
    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 18
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    const/4 p0, -0x1

    return p0
.end method

.method private getGestureListener()Landroid/view/GestureDetector$SimpleOnGestureListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$5;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$5;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;)V

    return-object v0
.end method

.method private varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->getGestureListener()Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 3
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsVerType:Z

    .line 5
    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsVerType:Z

    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsRTL:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070904

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemSize:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070902

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemGap:I

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mPaint:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 11
    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 13
    new-instance p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p0, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Landroid/view/View;Lcom/android/camera/ui/zoom/ZoomRatioToggleView$1;)V

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->myAccessHelper:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;

    .line 14
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private isSupportUseSlider(I)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderType:I

    const/4 v3, 0x2

    if-ne p0, v3, :cond_1

    const/4 p0, -0x1

    if-eq p1, p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez v0, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private longClickChild(I)Z
    .locals 2

    const-string v0, "ZoomRatioToggleView"

    const-string v1, "longClickChild"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->isSupportUseSlider(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-interface {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->toShowSlideView(Lcom/android/camera/ui/zoom/ZoomTextImageView;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetAnimators()V
    .locals 2

    const-string v0, "ZoomRatioToggleView"

    const-string v1, "resetAnimators"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/AnimatorSet;

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OoooO0O/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/o00oO0o/OoooO0O/OooO00o;

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setSelectedChildIndex()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-static {v0, v1}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioIndex(IF)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    xor-int/2addr v1, v3

    .line 4
    invoke-direct {p0, v1, v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->showZoomChildView(ZIZ)V

    return-void
.end method

.method private showZoomChildView(ZIZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    .line 3
    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    .line 4
    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v2, p2}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioAt(II)F

    move-result v2

    .line 5
    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-static {v3, v4}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioAt(II)F

    move-result v3

    .line 6
    iput p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .line 7
    invoke-virtual {v1, p2, p2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->toToggle(ZZ)V

    .line 8
    invoke-virtual {v1, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatio(F)V

    :cond_0
    if-eqz v0, :cond_2

    const/4 p2, 0x1

    .line 9
    invoke-virtual {v0, p2, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->toToggle(ZZ)V

    if-eqz p3, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatio(F)V

    if-eqz p3, :cond_2

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz p1, :cond_2

    .line 12
    invoke-interface {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->onClick(Lcom/android/camera/ui/zoom/ZoomTextImageView;)V

    .line 13
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->announceCurrentZoomRatioForAccessibility()V

    return-void
.end method

.method private toShowView()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->toShowSlideView(Lcom/android/camera/ui/zoom/ZoomTextImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->myAccessHelper:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

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

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mHasLongPressed:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 7
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-virtual {p0, p1, p1, v4, v4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    return v3

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-virtual {v0, p1, p1, v4, v4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 12
    iput-boolean v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mHasLongPressed:Z

    .line 13
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public isSuppressed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ZoomRatioToggleView"

    const-string v1, "UI AUTOMATIC TEST: CLICKED"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->clickChildAtIndex(I)V

    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemSize:I

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemGap:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 3
    :cond_0
    div-int/lit8 p2, p1, 0x2

    .line 4
    iget-boolean p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsVerType:Z

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iget p4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    div-int/lit8 v0, p5, 0x2

    sub-int/2addr p4, v0

    mul-int/2addr p2, p5

    sub-int/2addr p4, p2

    goto :goto_1

    .line 7
    :cond_1
    iget-boolean p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsRTL:Z

    if-nez p3, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iget p4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    div-int/lit8 p5, p4, 0x2

    sub-int/2addr p3, p5

    mul-int/2addr p2, p4

    sub-int/2addr p3, p2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iget p4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    div-int/lit8 p5, p4, 0x2

    sub-int/2addr p3, p5

    mul-int/2addr p2, p4

    add-int/2addr p3, p2

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget p4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    div-int/lit8 p4, p4, 0x2

    sub-int p4, p2, p4

    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-ge p2, p1, :cond_5

    .line 11
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 12
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemGap:I

    div-int/lit8 v1, v0, 0x2

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p5, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 14
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    add-int v1, p3, v0

    add-int/2addr v0, p4

    invoke-virtual {p5, p3, p4, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 15
    iget-boolean p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsVerType:Z

    if-eqz p5, :cond_3

    .line 16
    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    add-int/2addr p4, p5

    goto :goto_3

    .line 17
    :cond_3
    iget-boolean p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsRTL:Z

    if-nez p5, :cond_4

    .line 18
    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    add-int/2addr p3, p5

    goto :goto_3

    .line 19
    :cond_4
    iget p5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    sub-int/2addr p3, p5

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "ZoomRatioToggleView"

    const-string v1, "UI AUTOMATIC TEST: LONGCLICKED"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->longClickChild(I)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public onMeasure(II)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemSize:I

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemGap:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 5
    iget-boolean v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsVerType:Z

    if-eqz v5, :cond_0

    .line 6
    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    add-int/2addr v4, v5

    goto :goto_1

    .line 7
    :cond_0
    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    add-int/2addr v3, v5

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    add-int/2addr v0, v2

    add-int/2addr v3, v0

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    add-int/2addr v0, v2

    add-int/2addr v4, v0

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 12
    invoke-static {v2, p1, v1}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    .line 13
    invoke-static {v0, p2, v1}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->myAccessHelper:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$MyAccessHelper;

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-virtual {v0, p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method public setActionListener(Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mActionListener:Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ToggleStateListener;

    return-void
.end method

.method public setBackgroundColor(ZZ)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setNormalBackgroundColor(ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCaptureCount(I)V
    .locals 0

    return-void
.end method

.method public setCapturingMode(IZ)Z
    .locals 10

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    .line 2
    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->getSupportedOpticalZoomRatios(I)[F

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-array p1, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p1, v1

    .line 3
    :cond_0
    array-length v2, p1

    if-gtz v2, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomArray:[F

    if-eqz v3, :cond_3

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setSuppressed(ZZ)V

    return v1

    .line 6
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomArray:[F

    .line 7
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->resetAnimators()V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v3, -0x2

    if-eqz p2, :cond_4

    .line 9
    new-instance v2, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getOuterSingleZoomViewType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setType(I)V

    .line 11
    aget v4, p1, v1

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatio(F)V

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemSize:I

    iget v6, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemGap:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v4, v5, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 15
    :cond_4
    iget v4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v4}, Lcom/android/camera/HybridZoomingSystem;->getDefaultOpticalZoomRatioIndex(I)I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v2, :cond_6

    .line 16
    new-instance v6, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/camera/ui/zoom/ZoomTextImageView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationZoom()Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationZoomInterface;->getOuterZoomViewType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setType(I)V

    .line 18
    aget v7, p1, v5

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatio(F)V

    if-ne v5, v4, :cond_5

    move v7, v0

    goto :goto_2

    :cond_5
    move v7, v1

    .line 19
    :goto_2
    invoke-virtual {v6, v7, v1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->toToggle(ZZ)V

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    iget v8, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemSize:I

    iget v9, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemGap:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-direct {v7, v8, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    move v1, v4

    .line 23
    :goto_3
    iput v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    .line 24
    aget p1, p1, v1

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    .line 25
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setSuppressed(ZZ)V

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEnabled(): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomRatioToggleView"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRotation(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2, p1}, Landroid/view/View;->setRotation(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSuppressed(ZZ)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuppressed(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomRatioToggleView"

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setSuppressed() ignored: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 6
    :cond_1
    iget p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-static {p1, v0}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioIndex(IF)I

    move-result p1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    if-ne v1, p1, :cond_2

    .line 9
    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatio(F)V

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v2, v3, p2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->toToggle(ZZ)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v2, p2, p2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->toToggle(ZZ)V

    .line 12
    :goto_1
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public setUseSliderAllowed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mUseSliderType:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/Util;->viewVisibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomRatioToggleView"

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->resetAnimators()V

    :cond_0
    return-void
.end method

.method public setZoomRatio(FI)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentModule:I

    invoke-static {v0, p1}, Lcom/android/camera/HybridZoomingSystem;->getOpticalZoomRatioIndex(IF)I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomRatio(): zooming action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/camera/ui/zoom/ZoomingAction;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomRatioToggleView"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setZoomRatio():  current index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mCurrentSelectedChildIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setZoomRatio():   current zoom = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setZoomRatio():   target index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoomRatio():    target zoom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    .line 9
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsSuppressed:Z

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iget p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomRatio:F

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setZoomRatio(F)V

    .line 12
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->announceCurrentZoomRatioForAccessibility()V

    const-string p0, "setZoomRatio(): mIsSuppressed"

    .line 13
    invoke-static {v2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    sget-boolean p1, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->UI_DEBUG_ENABLED:Z

    .line 15
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIndexUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "setZoomRatio(): ignored as source is toggle button"

    .line 17
    invoke-static {v2, p0}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setZoomRatio() must be called on main ui thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startTranslationAnimationShow()V
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    .line 4
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    .line 5
    iget-boolean v7, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsVerType:Z

    const v8, 0x3dcccccd    # 0.1f

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    .line 6
    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v7

    if-eq v5, v1, :cond_0

    sub-int v10, v5, v1

    .line 7
    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v12, v2, [F

    iget v13, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    mul-int/2addr v10, v13

    int-to-float v10, v10

    mul-float/2addr v10, v8

    float-to-int v8, v10

    int-to-float v8, v8

    add-float/2addr v8, v7

    aput v8, v12, v4

    aput v7, v12, v9

    invoke-static {v6, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    goto :goto_1

    .line 8
    :cond_0
    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v2, [F

    aput v7, v10, v4

    aput v7, v10, v9

    invoke-static {v6, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 9
    :goto_1
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v9, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;

    invoke-direct {v9, p0, v6, v7}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Lcom/android/camera/ui/zoom/ZoomTextImageView;F)V

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    .line 11
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v7

    if-eq v5, v1, :cond_3

    .line 12
    iget-boolean v10, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mIsRTL:Z

    if-eqz v10, :cond_2

    sub-int v10, v1, v5

    goto :goto_2

    :cond_2
    sub-int v10, v5, v1

    .line 13
    :goto_2
    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v12, v2, [F

    iget v13, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mItemWidth:I

    mul-int/2addr v10, v13

    int-to-float v10, v10

    mul-float/2addr v10, v8

    float-to-int v8, v10

    int-to-float v8, v8

    add-float/2addr v8, v7

    aput v8, v12, v4

    aput v7, v12, v9

    invoke-static {v6, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 14
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 15
    :cond_3
    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v2, [F

    aput v7, v10, v4

    aput v7, v10, v9

    invoke-static {v6, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 16
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :goto_3
    new-instance v9, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;

    invoke-direct {v9, p0, v6, v7}, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$3;-><init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Lcom/android/camera/ui/zoom/ZoomTextImageView;F)V

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 19
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 20
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 21
    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->mZoomShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
