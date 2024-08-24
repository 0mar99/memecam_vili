.class public final synthetic LOooO0O0/OooO0O0/OooO00o/o00oO0o/OoooO00/OooO00o/OooOO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OoooO00/OooO00o/OooOO0o;->OooO00o:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/o00oO0o/OoooO00/OooO00o/OooOO0o;->OooO00o:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-static {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->OooO00o(Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
