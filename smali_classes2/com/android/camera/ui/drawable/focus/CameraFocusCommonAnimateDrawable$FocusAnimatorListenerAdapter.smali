.class public Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$FocusAnimatorListenerAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraFocusCommonAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FocusAnimatorListenerAdapter"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FocusAnimatorListenerAdapter"


# instance fields
.field public final mWeakReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$FocusAnimatorListenerAdapter;->mWeakReference:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$FocusAnimatorListenerAdapter;-><init>(Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$FocusAnimatorListenerAdapter;->mWeakReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    if-nez p0, :cond_0

    const-string p0, "FocusAnimatorListenerAdapter"

    const-string/jumbo p1, "onAnimationEnd: res recycled, returning."

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->pendingState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startFocusFailAnimation()V

    goto :goto_0

    .line 5
    :cond_2
    iget p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mIsTouchFocus:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    :goto_0
    return-void
.end method
