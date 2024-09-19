.class public Lcom/android/camera/dualvideo/view/TouchEventView;
.super Landroid/view/View;
.source "TouchEventView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/view/TouchEventView$TouchEventListener;,
        Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mListener:Lcom/android/camera/dualvideo/view/TouchEventView$TouchEventListener;

.field public mTouchHelper:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/dualvideo/view/TouchEventView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/dualvideo/view/TouchEventView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

    invoke-direct {p1, p0, p0}, Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;-><init>(Lcom/android/camera/dualvideo/view/TouchEventView;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/view/TouchEventView;->mTouchHelper:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

    .line 3
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/dualvideo/view/TouchEventView;)Lcom/android/camera/dualvideo/view/TouchEventView$TouchEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/view/TouchEventView;->mListener:Lcom/android/camera/dualvideo/view/TouchEventView$TouchEventListener;

    return-object p0
.end method

.method private handleBackStack()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/BackStack;->impl2()Lcom/android/camera/protocol/protocols/BackStack;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/BackStack;->handleBackStackFromKeyBack()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/view/TouchEventView;->mTouchHelper:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/view/TouchEventView;->mListener:Lcom/android/camera/dualvideo/view/TouchEventView$TouchEventListener;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1}, Lcom/android/camera/dualvideo/view/TouchEventView$TouchEventListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/dualvideo/view/TouchEventView;->handleBackStack()V

    :cond_0
    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setListener(Lcom/android/camera/dualvideo/view/TouchEventView$TouchEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/view/TouchEventView;->mListener:Lcom/android/camera/dualvideo/view/TouchEventView$TouchEventListener;

    return-void
.end method
